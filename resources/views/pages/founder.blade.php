@extends('layouts.index')
    @section('title')
        Founder's Message
    @endsection
@section('content')

    @php $founder=\App\Models\Founder::first(); @endphp
    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('https://admin.clevers.co.ke/storage/{{$founder->breadcrumb}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">Founder's Message</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>Founder's Message</li>
                            </ul>
                        </div>
                    </div>



                </div>
            </div>
        </div>

        <div class="shape__icon__2">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__1" src="{{asset('img/herobanner/herobanner__1.png')}}" alt="photo">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__2" src="{{asset('img/herobanner/herobanner__2.png')}}" alt="photo">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__3" src="{{asset('img/herobanner/herobanner__3.png')}}" alt="photo">
            <img loading="lazy"  class=" shape__icon__img shape__icon__img__4" src="{{asset('img/herobanner/herobanner__5.png')}}" alt="photo">
        </div>

    </div>
    <!-- breadcrumbarea__section__end-->

    <!-- aboutarea__5__section__start -->
    <div class="aboutarea__5 sp_bottom_100 sp_top_100">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                    <div class="aboutarea__5__img" data-tilt>
                        <img loading="lazy"  src="https://admin.clevers.co.ke/storage/{{$founder->founder}}" alt="about">
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                    <div class="aboutarea__content__wraper__5">
                        <div class="section__title">
                            <div class="section__title__button">
                                <div class="default__small__button">From the founder</div>
                            </div>
                            <div class="section__title__heading ">
                                <h2>{!! $founder->title !!}</h2>
                            </div>
                        </div>
                        <div class="about__text__5">
                            {!! $founder->description !!}
                        </div>

                    </div>
                </div>
            </div>
            <div class="row">

                {!! $founder->content !!}
                <p class="text-end fw-bold">
                    Felix O. Ngige<br>
                    Director

                </p>
            </div>
        </div>
    </div>
    <!-- aboutarea__5__section__end -->

@endsection






