@extends('layouts.index')
    @section('title')
{{$job->title}}
    @endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">{{$job->title}}</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>Careers</li>
                            </ul>
                        </div>
                    </div>



                </div>
            </div>
        </div>



    </div>
    <!-- breadcrumbarea__section__end-->


    <!-- about__tap__section__start -->
    <div class="abouttabarea sp_bottom_70">
        <div class="row m-3">
            <h4 class="fw-bold">{{$job->title}}</h4>
            <p>
                {!! $job->description !!}
            </p>
        </div>
        <div class="row m-3">
            <h4 class="fw-bold">Key Responsibilities</h4>
            <p>
                {!! $job->responsibilities !!}
            </p>
        </div>
        <div class="row m-3">
            <h4 class="fw-bold">Requirements</h4>
            <p>
                {!! $job->requirements !!}
            </p>
        </div>
        <div class="row m-3 d-flex">
            <div class="col-md-4">
                <a href="/jobs/apply/{{$job->id}}" class="btn btn-danger">Apply Now</a>
            </div>
        </div>

    </div>
    <!-- .about__tap__section__end -->
@endsection






