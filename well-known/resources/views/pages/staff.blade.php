@extends('layouts.main')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/css/plugins/dataTables.bootstrap5.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/plugins/buttons.bootstrap5.min.css')}}">
@endsection
@section('header')
    @php
        if (!auth()->user()->hasRole(['Admin','SuperAdmin'])){
            echo '<script>window.location.href="/";</script>';
        }
    @endphp
    <!-- [ breadcrumb ] start -->
    <div class="page-header">
        <div class="page-block">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-auto">
                    <div class="page-header-title">
                        <h5 class="mb-0">Home</h5>
                    </div>
                </div>
                <div class="col-sm-auto">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/"><i class="ph-duotone ph-house"></i></a></li>
                        <li class="breadcrumb-item"><a href="javascript: void(0)">Staff</a></li>
                        <li class="breadcrumb-item" aria-current="page">Home</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
@endsection

@section('content')
    <div class="row d-flex justify-content-evenly mb-4">

        <div class="col-md-12 col-4 text-end">
            @if(isset($_GET['search']))
            <a class="btn btn-danger" href="/staff">
               Clear Search
            </a>
            @endif
            <button type="button" data-bs-target="#newStaff" data-bs-toggle="modal" class="btn btn-primary" href="#">New Staff</button>
        </div>
    </div>
    <div class="row">
<div class="dt-responsive table-responsive">
    <table id="cbtn-selectors" class="table table-striped nowrap">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Roles</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        @php
            $courses=\App\Models\User::query();
            $courses=$courses->whereHas('roles',function ($query){
                $query->whereIn('name',['Admin','Staff','Lecturer','Secretary','Accountant','Registrar','Chancellor','Dean']);
            });
            if (!empty($_GET['search'])){
                $courses=$courses->where('name','like','%'.$_GET['search'].'%')
                ->orWhere('email','like','%'.$_GET['search'].'%');

            }
            $courses=$courses->get();
            $count=1;
 @endphp

        @foreach($courses as $course)
            <tr>
                <td>
                    {{$count}}
                </td>
                <td>
                    {{$course->name}}
                </td>
                <td>
                    {{$course->email}}
                </td>
                <td>
                   @foreach($course->roles as $role)
                       <span class="ps-2 pb-2 pt-2 bg-success rounded-pill pe-0">{{$role->name}} <a class="btn btn-sm btn-danger me-0 rounded-circle" href="/roles/remove/{{$course->id}}/{{$role->name}}">x</a> </span>
                   @endforeach
                </td>

                <td>
                        <a href="/roles/reset/{{$course->id}}" class="btn btn-danger btn-sm">Reset Roles</a>
                        <button type="button" onclick="addRole('{{$course->id}}')" class="btn btn-primary btn-sm">New Role</button>
                        <a href="/password/factory/{{$course->id}}" class="btn btn-warning btn-sm">Reset Password</a>
                </td>
            </tr>
            @php $count++; @endphp
        @endforeach
        </tbody>
    </table>
</div>
    </div>
    <div class="modal fade" id="newStaff">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">New Staff</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form method="post" action="/staff/add">
                        @csrf
                        <div class="mb-4">
                            <label class="form-label">
                               Staff Name
                            </label>
                            <input name="name" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">
                                Staff Email
                            </label>
                            <input type="email" name="email" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">
                               Phone Number
                            </label>
                            <input name="phone" maxlength="10" minlength="10" type="tel" class="form-control" required>
                        </div>
                        <div class="mb-4">
                            <label class="form-label">
                                Staff Role
                            </label>
                           @php if (auth()->user()->hasRole('SuperAdmin')){
     $roles=\Spatie\Permission\Models\Role::where('name','!=','Student')->where('name','!=','ClassRep')->get();
 }else{
     $roles=\Spatie\Permission\Models\Role::where('name','!=','Student')->where('name','!=','SuperAdmin')->where('name','!=','ClassRep')->get();

 }
 $f=true;
 @endphp
                            <select class="form-control form-select" name="role">
                              @foreach($roles as $role)
                                  @if($f)
                                      <option selected value="{{$role->name}}">{{$role->name}}</option>
                                      @php $f=false; @endphp
                                    @else
                                        <option  value="{{$role->name}}">{{$role->name}}</option>
                                    @endif
                              @endforeach
                            </select>
                        </div>
                        <div class="text-end">
                            <button class="btn btn-success">Add Staff</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="newRole">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Role To Staff</h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <form method="post" action="/staff/roles/add">
                        @csrf

                       <input type="hidden" name="uid" id="uid">
                        <div class="mb-4">
                            <label class="form-label">
                                Staff Role
                            </label>
                            @php if (auth()->user()->hasRole('SuperAdmin')){
     $roles=\Spatie\Permission\Models\Role::where('name','!=','Student')->where('name','!=','ClassRep')->where('name','!=','Lecturer')->get();
 }else{
     $roles=\Spatie\Permission\Models\Role::where('name','!=','Student')->where('name','!=','SuperAdmin')->where('name','!=','Lecturer')->where('name','!=','ClassRep')->get();

 }
 $f=true;
                            @endphp
                            <select class="form-control form-select" name="role">
                                @foreach($roles as $role)
                                    @if($f)
                                        <option selected value="{{$role->name}}">{{$role->name}}</option>
                                        @php $f=false; @endphp
                                    @else
                                        <option  value="{{$role->name}}">{{$role->name}}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                        <div class="text-end">
                            <button class="btn btn-success">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection

@push('extra')
    <script src="{{asset('assets/js/plugins/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/dataTables.bootstrap5.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.colVis.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.print.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/pdfmake.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/jszip.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/vfs_fonts.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.html5.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.bootstrap5.min.js')}}"></script>

    <script>
        $('#cbtn-selectors').DataTable({
            dom: 'Bfrtip',
            buttons: [
                {
                    extend: 'copyHtml5',
                    exportOptions: {
                        columns: [0, ':visible']
                    }
                },
                {
                    extend: 'excelHtml5',
                    exportOptions: {
                        columns: ':visible'
                    }
                },
                {
                    extend: 'pdfHtml5',
                    exportOptions: {
                        columns: [0, 1, 2, 5]
                    }
                },
                'colvis'
            ]
        });
        function addRole(uid) {
           $("#uid").val(uid)
           $("#newRole").modal('show')
        }
    </script>
@endpush

