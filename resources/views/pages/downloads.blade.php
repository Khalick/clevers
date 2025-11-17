@extends('layouts.index')
    @section('title')
        Downloads
    @endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">Downloads</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>Resources</li>
                            </ul>
                        </div>
                    </div>



                </div>
            </div>
        </div>

        <div class="shape__icon__2">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__1" src="img/herobanner/herobanner__1.png" alt="photo">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__2" src="img/herobanner/herobanner__2.png" alt="photo">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__3" src="img/herobanner/herobanner__3.png" alt="photo">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__4" src="img/herobanner/herobanner__5.png" alt="photo">
        </div>

    </div>
    <!-- breadcrumbarea__section__end-->


    <!-- about__tap__section__start -->
    <div class="abouttabarea sp_bottom_70">
        <div class="row m-2">
@php
    $papers=\App\Models\Downloads::query();
    if (!empty($_GET['search'])){
        $papers=$papers->where('name','like','%'.$_GET['search'].'%');
    }
    $papers=$papers->paginate(12);
 @endphp
            @if($papers->isEmpty())
                <div class="col-md-6">
                    <div class="alert alert-info m-2">
                        <div class="alert-heading">
                            No downloads available yet. Please check again later
                        </div>
                    </div>
                </div>
            @endif

        @foreach($papers as $paper)
            <div class="col-md-4">
                <div class="gridarea__wraper gridarea__2 gridarea__course__list">
<div class="gridarea__content">
    <div class="gridarea__heading w-100">
        <h6><a href="https://admin.clevers.co.ke/storage/{{$paper->file}}" download>{{$paper->name}}</a> </h6>
    </div>
    <div class="gridarea__bottom text-end">
        <div class="gridarea__bottom__left">
        </div>
        <div class="gridarea__details text-end">
            <a class="btn btn-outline-primary" href="https://admin.clevers.co.ke/storage/{{$paper->file}}">Download
                <i class="icofont-download"></i>
            </a>
        </div>
    </div>
</div>
                </div>
            </div>
            @endforeach
            {{$papers->links()}}
        </div>
    </div>
    <!-- .about__tap__section__end -->
@endsection






