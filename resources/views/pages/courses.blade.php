@extends('layouts.index')
@section('title')
    Courses
@endsection
@section('content')
        <!-- breadcrumbarea__section__start -->

        <div class="breadcrumbarea" style="background: url('{{asset('img/herobanner/university_3.jpg')}}')">

            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb__content__wraper" data-aos="fade-up">
                            <div class="breadcrumb__title">
                                <h2 class="heading text-white">@if(!empty($_GET['school'])) {{$_GET['school']}} @else  Courses @endif</h2>
                            </div>
                            <div class="breadcrumb__inner">
                                <ul>
                                    <li><a href="/">Home</a></li>
                                    <li class="text-white"> Courses</li>
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
                    <div class="col-xl-3 col-lg-3 col-md-4 col-12">
                        <div class="course__sidebar__wraper" data-aos="fade-up">
                            <div class="course__heading">
                                <h5>Search here</h5>
                            </div>
                            <div class="course__input">
                                <form method="get" action="/courses">
                                <input type="text" placeholder="Search product">
                                <div class="search__button">
                                    <button><i class="icofont-search-1"></i></button>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div class="course__sidebar__wraper" data-aos="fade-up">
                            <div class="categori__wraper">
                                <div class="course__heading">
                                    <h5>Schools</h5>
                                </div>
                                <div class="course__categories__list">
                                    @php $schools=\App\Models\Category::all(); @endphp
                                    <ul>


                                        @foreach($schools as $school)
                                            <li>
                                                <a href="/courses?school={{$school->name}}">
                                                    {{$school->name}}
                                                    <span>{{\App\Models\Course::where('category',$school->name)->count()}}</span>
                                                </a>
                                            </li>
                                        @endforeach

                                    </ul>
                                </div>


                            </div>
                        </div>


                    </div>

                    <div class="col-xl-9 col-lg-9 col-md-8 col-12">
                     <div class="row">

                         @php
                             $courses=\App\Models\Course::query();
                             $courses=$courses->where('status','Active');
                             if (!empty($_GET['school'])){
                                 $courses=$courses->where('category',$_GET['school']);
                             }
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
                             <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 grid-item column__custom__class" data-aos="fade-up">
                                 <div class="gridarea__wraper">
                                     <div class="gridarea__img">

                                         <a href="/course/details/{{$course->id}}"><img loading="lazy" width="342" height="214"  src="https://admin.clevers.co.ke/storage/{{$course->preview}}" alt="grid"></a>
                                         <div class="gridarea__small__button gridarea__small__button__1">
                                             <div class="grid__badge">@if(!empty($_GET['school'])) {{$course->code}} @else {{$course->category}} @endif</div>
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
                                                 <span href="" class="default__button">Apply</span>
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
