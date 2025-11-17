@extends('layouts.main')
@section('css')
    <link rel="stylesheet" href="{{asset('assets/css/plugins/dataTables.bootstrap5.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/plugins/buttons.bootstrap5.min.css')}}">
@endsection
@section('header')
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
                        <li class="breadcrumb-item"><a href="javascript: void(0)">Courses</a></li>
                        <li class="breadcrumb-item" aria-current="page">Units/Subjects</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
@endsection

@section('content')
    <div class="row d-flex justify-content-evenly mb-4">
        <div class="col-md-12 text-end">
            <a class="btn btn-danger" href="/units/new">
                <i class="ph-duotone ph-plus"></i> Add New Unit
            </a>
        </div>
    </div>
    
    <div class="row">
        <div class="dt-responsive table-responsive">
            <table id="cbtn-selectors" class="table table-striped table-hover nowrap">
                <thead>
                    <tr>
                        <th>Unit Name</th>
                        <th>Course</th>
                        <th>Department</th>
                        <th>Teacher</th>
                        <th>CAT1 (%)</th>
                        <th>CAT2 (%)</th>
                        <th>Exams (%)</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $units = \App\Models\Unit::with(['course', 'teacher'])->get();
                    @endphp

                    @foreach($units as $unit)
                        <tr>
                            <td>
                                @if($unit->icon)
                                    <i class="{{$unit->icon}} me-2"></i>
                                @endif
                                {{$unit->name}}
                            </td>
                            <td>
                                @if($unit->course)
                                    {{$unit->course->title}}
                                @else
                                    <span class="text-muted">N/A</span>
                                @endif
                            </td>
                            <td>
                                @if($unit->department_id)
                                    @php
                                        $dept = \App\Models\Category::find($unit->department_id);
                                    @endphp
                                    {{$dept ? $dept->name : 'N/A'}}
                                @else
                                    <span class="text-muted">N/A</span>
                                @endif
                            </td>
                            <td>
                                @if($unit->teacher)
                                    {{$unit->teacher->name}}
                                @else
                                    <span class="text-muted">Unassigned</span>
                                @endif
                            </td>
                            <td>
                                <span class="badge bg-light-primary">{{$unit->cat1 ?? 0}}%</span>
                            </td>
                            <td>
                                <span class="badge bg-light-info">{{$unit->cat2 ?? 0}}%</span>
                            </td>
                            <td>
                                <span class="badge bg-light-success">{{$unit->exams ?? 0}}%</span>
                            </td>
                            <td>
                                <a href="/units/edit/{{$unit->id}}" class="btn btn-sm btn-info">
                                    <i class="ph-duotone ph-pencil"></i> Edit
                                </a>
                                <a href="/units/delete/{{$unit->id}}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this unit?')">
                                    <i class="ph-duotone ph-trash"></i> Delete
                                </a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
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
                        columns: [0, 1, 2, 3]
                    }
                },
                'print'
            ],
            order: [[1, 'asc']]
        });
    </script>
@endpush
