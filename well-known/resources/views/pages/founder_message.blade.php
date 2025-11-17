@extends('layouts.main')
@section('header')
    <!-- [ breadcrumb ] start -->
    <div class="page-header">
        <div class="page-block">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-auto">
                    <div class="page-header-title">
                        <h5 class="mb-0">Founder Message Settings</h5>
                    </div>
                </div>
                <div class="col-sm-auto">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/"><i class="ph-duotone ph-house"></i></a></li>
                        <li class="breadcrumb-item"><a href="javascript: void(0)">Settings</a></li>
                        <li class="breadcrumb-item" aria-current="page">Founder Message Settings</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
@endsection

@section('content')
   <div class="card">

       <div class="card-body">
@php
    $founder=\App\Models\Founder::first();
@endphp
           @if($founder !=null)
               <div class="row d-flex justify-content-evenly">
                   <div class="col-md-4 border-end">
                       <div>
                           <img src="{{\Illuminate\Support\Facades\Storage::url($founder->breadcrumb)}}" class="img-fluid rounded" height="200" alt="">

                       </div>
                       <div class="media-body">
                           <h4>BreadCrumb Background Image</h4>
                       </div>

                   </div>
                   <div class="col-md-4 border-end">
                       <div>
                           <h4>Media Title</h4>
                       </div>
                       <div class="media-body">
                           <p>
                               {!! $founder->title !!}
                           </p>
                       </div>

                   </div>
                   <div class="col-md-4">
                       <div>
                           <h4>Media Side Content</h4>
                       </div>
                       <div class="media-body">
{!! $founder->description !!}
                       </div>

                   </div>
                   <hr>
                   <div class="col-md-12">
                       <div>
                           <h4>Detailed Content</h4>
                       </div>
                       <div class="media-body">
{!! $founder->content !!}
                       </div>

                   </div>

               </div>
           @endif
       </div>
       <div class="col-md-12 text-end">
           <button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#founder">Edit</button>
       </div>
   </div>

<div class="modal fade" id="founder">
    <div class="modal-dialog modal-lg modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    Founder's Message Page Settings
                </h4>
                <button class="btn btn-close" data-bs-dismiss="modal" type="button"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="/founder/change" enctype="multipart/form-data" onsubmit="return setBlogData();">
                    @csrf
                    <div class="row d-flex justify-content-evenly">
                        <div class="mb-4 col-md-6">
                            <label class="form-label" for="name">BreadCrumb Background Image</label>
                            <input type="file"  id="name" accept="image/*" class="form-control" name="breadcrumb">
                            <small class="text-danger">Preferred Size is 1920x800 </small>
                        </div>
                        <div class="mb-4 col-md-6">
                            <label class="form-label" for="name">Section Title</label>
                            <input type="text" maxlength="64" id="name" class="form-control" required name="bigText">
                        </div>
                    </div>

                    <div class="row d-flex justify-content-evenly">
                        <div class="mb-4 col-md-4">
                            <label class="form-label" for="name">Founder Image</label>
                            <input type="file"  id="name" accept="image/*" class="form-control" required name="founder">
                            <small class="text-danger">Preferred Size is 500x500 </small>
                        </div>
                        <div class="mb-4 col-md-8">
                            <label class="form-label" for="name">Side Content</label>
                            <input type="hidden" required name="side" id="side">
                            <div class="" id="sideInput">
                                @if($founder!=null && $founder->description!=null)
                                    {!! $founder->description !!}
                                @endif
                            </div>

                        </div>
                    </div>

                    <div class="mb-4 col-md-12">
                        <label class="form-label" for="name">Main Content</label>
                        <input type="hidden" required name="main" id="main">
                        <div class="" id="mainInput">
                            @if($founder!=null && $founder->content!=null)
                              {!! $founder->content !!}
                            @endif
                        </div>

                    </div>
                    <div class="mb-4 text-end">
                        <button class="btn btn-success">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection
@push('extra')
    <script src="{{asset('assets/js/plugins/ckeditor/classic/ckeditor.js')}}"></script>
    <script>
        let sideEditor;
        let mEditor;
        ClassicEditor
            .create( document.querySelector( '#mainInput' ),{

            } )
            .then(editor=>{
                mEditor=editor
            })
            .catch( error => {
                console.error( error );
            } );
        ClassicEditor
            .create( document.querySelector( '#sideInput' ),{


            } )
            .then(editor=>{
                sideEditor=editor
            })
            .catch( error => {
                console.error( error );
            } );


        function setBlogData() {
            if(!mEditor.getData().toString().trim() || !sideEditor.getData().toString().trim()){
                return false;
            }
            $("#main").val(mEditor.getData())
            $("#side").val(sideEditor.getData())
            return true;
        }
    </script>

@endpush


