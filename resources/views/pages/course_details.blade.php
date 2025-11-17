@extends('layouts.index')
@section('title')
    {{$course->title}}
@endsection
@section('content')
        <div class="breadcrumbarea" style="background: url('{{asset('img/herobanner/university_3.jpg')}}')">

            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb__content__wraper" data-aos="fade-up">
                            <div class="breadcrumb__title">
                                <h2 class="heading text-white">{{$course->title}}</h2>
                            </div>
                            <div class="breadcrumb__inner">
                                <ul>
                                    <li><a href="/">Home</a></li>
                                    <li class="text-danger">Course-Details</li>
                                </ul>
                            </div>
                        </div>



                    </div>
                </div>
            </div>


        </div>
        <!-- breadcrumbarea__section__end-->

        <div class="blogarea__2 sp_top_100 sp_bottom_100">
            <div class="container">
                <div class="row">

                    <div class="col-xl-8 col-lg-8">

                        <div class="blogarae__img__2 course__details__img__2" data-aos="fade-up">
                            <img loading="lazy" width="770" height="498"  src="https://admin.clevers.co.ke/storage/{{$course->preview}}" alt="blog">

                           <div class="registerarea__content course__details__video">
                                <div class="registerarea__video">
                                    <div class="video__pop__btn">
                                        <a class="video-btn" href="/course/apply/{{$course->id}}"><button class="btn btn-danger">Apply Now</button></a>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="blog__details__content__wraper">
                            <div class="course__button__wraper" data-aos="fade-up">
                                <div class="course__button">
                                    <a href="#">Department</a>
                                    <a class="course__2" href="#">{{$course->category}}</a>
                                </div>
                                <div class="course__date">
                                    <p>Last Update:<span> {{date('d/m/y H:i',strtotime($course->created_at))}}</span></p>
                                </div>
                            </div>
                            <div class="course__details__heading" data-aos="fade-up">
                                <h3>{{$course->title}}</h3>
                            </div>
                            <div class="course__details__price" data-aos="fade-up">
                                <ul>
                                    <li>
                                        <div class="course__price">
                                            Ksh.{{$course->fees}}
                                        </div>
                                    </li>
                                    <li>
                                        <div class="course__details__date">
                                            <i class="icofont-book-alt"></i> {{$course->lecs}} Lessons
                                        </div>

                                    </li>
                                    <li>
                                        <div class="course__star">
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                        </div>
                                    </li>
                                </ul>
                            </div>




                            <div class="course__details__tab__wrapper" data-aos="fade-up">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <ul class="nav  course__tap__wrap" id="myTab" role="tablist">

                                            <li class="nav-item" role="presentation">
                                                <button class="single__tab__link active" data-bs-toggle="tab" data-bs-target="#projects__two" type="button"><i class="icofont-book-alt"></i>Curriculum</button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="single__tab__link" data-bs-toggle="tab" data-bs-target="#projects__one" type="button"><i class="icofont-paper"></i>Description</button>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                                <div class="tab-content tab__content__wrapper" id="myTabContent">
                                    <div class="tab-pane fade  active show" id="projects__two" role="tabpanel" aria-labelledby="projects__two">

                                        <a download href="https://admin.clevers.co.ke/storage/{{$course->curriculum}}">Download Curriculum <span class="icofont-download"></span> </a>
                                    </div>

                                    <div class="tab-pane fade" id="projects__one" role="tabpanel" aria-labelledby="projects__one">
                                        <div class="experence__heading">
                                            <h5> Course Description</h5>
                                        </div>
                                        <div class="experence__description">
                                            {{$course->description}}
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="col-xl-4 col-lg-4">

                        <div class="course__details__sidebar">
                            <div class="event__sidebar__wraper" data-aos="fade-up">


                                <div class="blogarae__img__2 course__details__img__2" data-aos="fade-up">
                                    <img loading="lazy" width="500" height="300"  src="https://admin.clevers.co.ke/storage/{{$course->preview}}" alt="blog">

                                    <div class="registerarea__content course__details__video">
                                        <div class="registerarea__video">
                                            <div class="video__pop__btn">
                                                <a class="video-btn" href="{{$course->video}}"> <img loading="lazy"  src="{{asset('img/icon/video.png')}}" alt=""></a>
                                            </div>


                                        </div>
                                    </div>
                                </div>

                                <div class="event__price__wraper">

                                    <div class="event__price">
                                        Ksh.{{$course->fees}}
                                    </div>
                                    <div class="event__Price__button">
                                        @if($course->certificate=='on')
                                        <a href="#"><span class="icofont-check-circled"></span>Certificate</a>
                                        @endif
                                    </div>
                                </div>

                                <div class="course__summery__button">
                                    <a class="default__button default__button--2" href="/course/apply/{{$course->id}}">Apply Now</a>
                                </div>

                              <div class="course__summery__button">
                                    <p>More inquiry about this course.</p>
                                    <a class="default__button default__button--3" href="tel:+254725449122"><i class="icofont-phone"></i>+254725449122</a>
                                </div>


                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
@endsection
