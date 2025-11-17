@extends('layouts.index')
@section('title')
   Accounting Courses
@endsection
@section('content')
        <!-- breadcrumbarea__section__start -->

        <div class="breadcrumbarea" style="background: url('{{asset('img/herobanner/accounting.png')}}')">

            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb__content__wraper" data-aos="fade-up">
                            <div class="breadcrumb__title">
                                <h2 class="heading">Accounting Courses</h2>
                            </div>
                            <div class="breadcrumb__inner">
                                <ul>
                                    <li><a href="/">Home</a></li>
                                    <li>Accounting Courses</li>
                                </ul>
                            </div>
                        </div>



                    </div>
                </div>
            </div>

        </div>
        <!-- breadcrumbarea__section__end-->

        <!-- course__section__start   -->
        <div class="coursearea sp_top_100 sp_bottom_100">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                     <div class="row">

                         @php
                             $courses=\App\Models\Course::query();
                             $courses=$courses->where('status','Active');
                                 $courses=$courses->where('category','Accounting');

                             if (!empty($_GET['search'])){
                                 $courses=$courses->where('title','like','%'.$_GET['search'].'%')
                                 ->orWhere('description','like','%'.$_GET['search'].'%');
                             }
                             $courses=$courses->paginate(12);
 @endphp
                         @if($courses==null || $courses->count()<1)
                             <div class="alert  alert-info">
                                 <div class="alert-heading">
                                     No courses available for the selected filters
                                 </div>
                                 <div class="text-center">
                                     <a href="/courses" class="btn btn-danger">
                                         All Courses
                                     </a>
                                 </div>
                             </div>
                         @endif
                         @foreach($courses as $course)
                             <div class="col-md-4 col-12 grid-item column__custom__class" data-aos="fade-up">
                                 <div class="gridarea__wraper">
                                     <div class="gridarea__img">

                                         <a href="/course/details/{{$course->id}}"><img loading="lazy" class="img-fluid" height="214"  src="https://admin.clevers.co.ke/storage/{{$course->preview}}" alt="grid"></a>
                                         <div class="gridarea__small__button gridarea__small__button__1">
                                             <div class="grid__badge">{{$course->code}}</div>
                                         </div>
                                         <div class="gridarea__small__icon">
                                             <a href="#"><i class="icofont-heart-alt"></i></a>
                                         </div>

                                     </div>
                                     <div class="gridarea__content">
                                         <div class="gridarea__list">
                                             <ul>
                                                 <li>
                                                     <i class="icofont-book-alt"></i> {{$course->lecs}} Lessons
                                                 </li>
                                                 <li>
                                                     <i class="icofont-clock-time"></i> {{$course->duration}}
                                                 </li>
                                             </ul>
                                         </div>
                                         <div class="gridarea__heading">
                                             <h3><a href="/course/details/{{$course->id}}">{{$course->title}}</a></h3>
                                         </div>
                                         <div class="gridarea__price">
                                             Ksh.{{$course->fees}}

                                         </div>
                                         <div class="gridarea__bottom">

                                             <a href="/course/apply/{{$course->id}}">
                                                 <span href="" class="default__button">Apply Now</span>
                                             </a>

                                             <div class="gridarea__star">
                                                 <i class="icofont-star"></i>
                                                 <i class="icofont-star"></i>
                                                 <i class="icofont-star"></i>
                                                 <i class="icofont-star"></i>
                                                 <i class="icofont-star"></i>
                                                 <span></span>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         @endforeach

                         {{$courses->links()}}

                     </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- course__section__end   -->



@endsection
