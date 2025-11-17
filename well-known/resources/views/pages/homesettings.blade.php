@extends('layouts.main')
@section('header')
    <!-- [ breadcrumb ] start -->
    <div class="page-header">
        <div class="page-block">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-auto">
                    <div class="page-header-title">
                        <h5 class="mb-0">Home Settings</h5>
                    </div>
                </div>
                <div class="col-sm-auto">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/"><i class="ph-duotone ph-house"></i></a></li>
                        <li class="breadcrumb-item"><a href="javascript: void(0)">Settings</a></li>
                        <li class="breadcrumb-item" aria-current="page">Home Settings</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
@endsection

@section('content')
   <div class="card">
       <div class="card-header">
           <h4 class="card-title">
               Slider Settings
           </h4>
       </div>
       <div class="card-body">
@php $sliders=\App\Models\Slider::all(); @endphp
           <div class="row d-flex justify-content-evenly">
               @foreach($sliders as $slider)
                   <div class="col-md-4">
                       <div>
                           <img src="{{\Illuminate\Support\Facades\Storage::url($slider->image)}}" class="img-fluid rounded" height="200" alt="slide{{$slider->id}}">

                       </div>
                       <div class="media-body">
                           <h4>{!! $slider->heading !!}</h4>
                           <p>{!! $slider->bigText !!}</p>
                       </div>
                       <div class="text-end">
                           <a href="/slider/remove/{{$slider->id}}" class="btn btn-danger btn-sm">Delete</a>
                       </div>
                   </div>
               @endforeach
           </div>
       </div>
       <div class="card-footer text-end">
           <button type="button" data-bs-toggle="modal" data-bs-target="#newSlider" class="btn btn-danger">Add Slider</button>
       </div>
   </div>

   <div class="card">
       <div class="card-header">
           <h4 class="card-title">
               About Section
           </h4>
       </div>
       <div class="card-body">
           @php $about=\App\Models\AboutSection::first(); @endphp
           <div class="row d-flex justify-content-evenly">
               @if($about !=null)
                   <div class="col-md-2">
                       <div>
                           <img style="height:100px;" src="{{\Illuminate\Support\Facades\Storage::url($about->image1)}}" alt=""  class="w-100 img-fluid rounded">
                       </div>
                       <div>
                           <h4>Big Image</h4>
                       </div>
                   </div>
                   <div class="col-md-3">
                       <div>
                           <img src="{{\Illuminate\Support\Facades\Storage::url($about->image2)}}" alt="" height="100" class="img-fluid rounded">
                       </div>
                       <div>
                           <h4>Small Image</h4>
                       </div>
                   </div>
                   <div class="col-md-4">
                       <div>
                           Title
                       </div>
                       <div>
                           <h4>{!! $about->title !!}</h4>
                       </div>
                   </div>
                   <div class="col-md-12">
                       <div>
                           Content
                       </div>
                       <div>
                           <h4>{!! $about->content !!}</h4>
                       </div>
                   </div>
               @endif
           </div>

       </div>
       <div class="card-footer text-end">
           <button type="button" data-bs-toggle="modal" data-bs-target="#about" class="btn btn-danger">Change Settings</button>
       </div>
   </div>
   <div class="card">
       <div class="card-header">
           <h4 class="card-title">
               Student Life Section
           </h4>
       </div>
       <div class="card-body">
           <div class="row d-flex justify-content-evenly">
                   <div class="col-md-4">
                       @php
                           $well=\App\Models\HomeWellness::first()
                       @endphp
                       @if($well!=null)
                       <div>
                           <img style="height:229px;" src="{{\Illuminate\Support\Facades\Storage::url($well->image)}}" alt=""  class="w-100 img-fluid rounded">
                       </div>
                       <div>
                           <h4>
                               {!! $well->title !!}
                           </h4>
                       </div>
                       <div>
                           {!! $well->description !!}
                       </div>

                       @endif
                       <div class="text-end">
                           <button type="button" class="btn btn-danger" data-bs-target="#wellness" data-bs-toggle="modal">
                               Change
                           </button>
                       </div>
                   </div>
               <div class="col-md-4">
                   @php
                       $well=\App\Models\HomeArt::first()
                   @endphp
                   @if($well!=null)
                       <div>
                           <img style="height:229px;" src="{{\Illuminate\Support\Facades\Storage::url($well->image)}}" alt=""  class="w-100 img-fluid rounded">
                       </div>
                       <div>
                           <h4>
                               {!! $well->title !!}
                           </h4>
                       </div>
                       <div>
                           {!! $well->description !!}
                       </div>

                   @endif
                   <div class="text-end">
                       <button type="button" class="btn btn-danger" data-bs-target="#art" data-bs-toggle="modal">
                           Change
                       </button>
                   </div>
               </div>
               <div class="col-md-4">
                   @php
                       $well=\App\Models\HomeSports::first()
                   @endphp
                   @if($well!=null)
                       <div>
                           <img style="height:229px;" src="{{\Illuminate\Support\Facades\Storage::url($well->image)}}" alt=""  class="w-100 img-fluid rounded">
                       </div>
                       <div>
                           <h4>
                               {!! $well->title !!}
                           </h4>
                       </div>
                       <div>
                           {!! $well->description !!}
                       </div>

                   @endif
                   <div class="text-end">
                       <button type="button" class="btn btn-danger" data-bs-target="#sports" data-bs-toggle="modal">
                           Change
                       </button>
                   </div>
               </div>

           </div>

       </div>

   </div>
   <div class="card">
       <div class="card-header">
           <h4 class="card-title">
               Testimonials Section
           </h4>
       </div>
       <div class="card-body">
           <div class="row d-flex justify-content-evenly">
@php
    $testimonials=\App\Models\Testimonial::all();
@endphp
               @foreach($testimonials as $testimonial)
                   <div class="col-md-4">
<div class="row d-flex justify-content-evenly">
    <div class="col-md-4 col-4">
        <img src="{{$testimonial->avatar}}" width="50" height="50" class="img img-profile-avtar rounded" alt="Dp">
    </div>
    <div class="col-md-8 col-8">
        <h4>{{$testimonial->name}}</h4>
        <p>{{$testimonial->profession}}</p>
    </div>
    <div class="col-md-12">
        <p>
            {!! $testimonial->message !!}
        </p>
    </div>
    <div class="card-footer text-end">
        <a class="btn btn-danger btn-sm" href="/testimonials/delete/{{$testimonial->id}}">Delete</a>
    </div>
</div>
                   </div>

               @endforeach


           </div>
           <div class="card-footer text-end">
               <button class="btn btn-danger" data-bs-target="#testimonials" data-bs-toggle="modal">
                   Add Testimonial
               </button>
           </div>

       </div>

   </div>
<div class="modal fade" id="newSlider">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">
                    New Slide
                </h4>
                <button class="btn btn-close" data-bs-dismiss="modal" type="button"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="/slider/create" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-4">
                        <label class="form-label" for="name">Small Heading</label>
                        <input type="text" maxlength="40" id="name" class="form-control" required name="heading">
                    </div>
                    <div class="mb-4">
                        <label class="form-label" for="name">Big Text</label>
                        <textarea type="text" maxlength="140" id="name" class="form-control" required name="bigText"></textarea>
                    </div>
                    <div class="mb-4">
                        <label class="form-label" for="file">Slider Image</label>
                        <input type="file" id="file" class="form-control" required name="image">
                        <small class="text-danger">Preferred Size is 1920x800 </small>
                    </div>
                    <div class="mb-4 text-end">
                        <button class="btn btn-success">Save Slide</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
   <div class="modal fade" id="about">
       <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <h4 class="modal-title">
                       About Us Section
                   </h4>
                   <button class="btn btn-close" data-bs-dismiss="modal" type="button"></button>
               </div>
               <div class="modal-body">
                   <form method="post" action="/about/change" enctype="multipart/form-data">
                       @csrf
                       <div class="mb-4">
                           <label class="form-label" for="name">Title</label>
                           <input type="text" maxlength="110" id="name" class="form-control"  name="heading">
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="name">Content</label>
                           <textarea type="text" maxlength="600" id="name" class="form-control"  name="bigText"></textarea>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Big Image</label>
                           <input type="file" id="file" class="form-control" name="image1">
                           <small class="text-danger">Preferred Size is 382x484 </small>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Small Image</label>
                           <input type="file" id="file" class="form-control" name="image2">
                           <small class="text-danger">Preferred Size is 228x181 </small>
                       </div>
                       <div class="mb-4 text-end">
                           <button class="btn btn-success">Save Changes</button>
                       </div>
                   </form>
               </div>
           </div>
       </div>
   </div>
   <div class="modal fade" id="wellness">
       <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <h4 class="modal-title">
                      Home=> Student Wellness
                   </h4>
                   <button class="btn btn-close" data-bs-dismiss="modal" type="button"></button>
               </div>
               <div class="modal-body">
                   <form method="post" action="/home/wellness/change" enctype="multipart/form-data">
                       @csrf
                       <div class="mb-4">
                           <label class="form-label" for="name">Title</label>
                           <input type="text" maxlength="30" id="name" class="form-control"  name="heading">
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="name">Description</label>
                           <textarea type="text" maxlength="100" id="name" class="form-control" name="bigText"></textarea>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Image</label>
                           <input type="file" id="file" class="form-control" name="image">
                           <small class="text-danger">Preferred Size is 381x229 </small>
                       </div>
                       <div class="mb-4 text-end">
                           <button class="btn btn-success">Save Changes</button>
                       </div>
                   </form>
               </div>
           </div>
       </div>
   </div>
   <div class="modal fade" id="art">
       <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <h4 class="modal-title">
                       Home=> Art and Music
                   </h4>
                   <button class="btn btn-close" data-bs-dismiss="modal" type="button"></button>
               </div>
               <div class="modal-body">
                   <form method="post" action="/home/art/change" enctype="multipart/form-data">
                       @csrf
                       <div class="mb-4">
                           <label class="form-label" for="name">Title</label>
                           <input type="text" maxlength="30" id="name" class="form-control"  name="heading">
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="name">Description</label>
                           <textarea type="text" maxlength="100" id="name" class="form-control" name="bigText"></textarea>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Image</label>
                           <input type="file" id="file" class="form-control" name="image">
                           <small class="text-danger">Preferred Size is 381x229 </small>
                       </div>
                       <div class="mb-4 text-end">
                           <button class="btn btn-success">Save Changes</button>
                       </div>
                   </form>
               </div>
           </div>
       </div>
   </div>
   <div class="modal fade" id="sports">
       <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <h4 class="modal-title">
                       Home=> Sports
                   </h4>
                   <button class="btn btn-close" data-bs-dismiss="modal" type="button"></button>
               </div>
               <div class="modal-body">
                   <form method="post" action="/home/sports/change" enctype="multipart/form-data">
                       @csrf
                       <div class="mb-4">
                           <label class="form-label" for="name">Title</label>
                           <input type="text" maxlength="30" id="name" class="form-control"  name="heading">
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="name">Description</label>
                           <textarea type="text" maxlength="100" id="name" class="form-control" name="bigText"></textarea>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Image</label>
                           <input type="file" id="file" class="form-control" name="image">
                           <small class="text-danger">Preferred Size is 381x229 </small>
                       </div>
                       <div class="mb-4 text-end">
                           <button class="btn btn-success">Save Changes</button>
                       </div>
                   </form>
               </div>
           </div>
       </div>
   </div>
   <div class="modal fade" id="testimonials">
       <div class="modal-dialog">
           <div class="modal-content">
               <div class="modal-header">
                   <h4 class="modal-title">
                       Home=> Graduates Testimonials
                   </h4>
                   <button class="btn btn-close" data-bs-dismiss="modal" type="button"></button>
               </div>
               <div class="modal-body">
                   <form method="post" action="/home/testimonials/change" enctype="multipart/form-data">
                       @csrf
                       <div class="mb-4">
                           <label class="form-label" for="name">Graduate Name</label>
                           <input type="text" maxlength="64" id="name" class="form-control"  name="heading" required>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="name">Profession</label>
                           <input placeholder="e.g Mechanic,Computer Engineer,Parent, Student, Blah blah" type="text" maxlength="100" id="name" class="form-control" name="bigText" required>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Profile Picture Url</label>
                           <input type="url" id="file" class="form-control" name="avatar" required>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Message</label>
                           <textarea placeholder="e.g Very reliable blah blah blah" id="file" class="form-control" name="message" required></textarea>
                       </div>
                       <div class="mb-4">
                           <label class="form-label" for="file">Rating Stars</label>
                           <select  id="file" class="form-control" name="stars" required>
                               <option value="5">5</option>
                               <option value="4">4</option>
                               <option value="3">3</option>
                               <option value="2">2</option>
                               <option value="1">1</option>
                           </select>
                       </div>
                       <div class="mb-4 text-end">
                           <button class="btn btn-success">Add Testimonial</button>
                       </div>
                   </form>
               </div>
           </div>
       </div>
   </div>
@endsection


