@extends('layouts.index')
@section('title')
    College Gallery
@endsection
@section('content')
    <!-- breadcrumbarea__section__start -->

    <div class="breadcrumbarea" style="background-image: url('{{asset('img/herobanner/university_3.jpg')}}')">

        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper" data-aos="fade-up">
                        <div class="breadcrumb__title">
                            <h2 class="heading text-white">College Gallery</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li class="text-white">Virtual Tour</li>
                            </ul>
                        </div>
                    </div>



                </div>
            </div>
        </div>

    </div>
    <!-- breadcrumbarea__section__end-->


    <!-- shop__section__start -->
    <section class="shop__page__wrap sp_top_100 sp_bottom_100">
        <div class="container-fluid full__width__padding">



            <div class="row">

                <div class="row">

                    @php
                        $galleries=\App\Models\Gallery::paginate(12);
                    @endphp

                    @foreach($galleries as $photo)
                        <!-- single product start -->
                        <div class="col-md-4 column__custom__class">
                            <div class="gridarea__wraper product__grid">
                                <div class="gridarea__img">
                                    <a href="https://admin.clevers.co.ke/storage/{{$photo->file}}"><img loading="lazy"  src="https://admin.clevers.co.ke/storage/{{$photo->file}}" alt="grid"></a>
                                    <div class="gridarea__small__button gridarea__small__button__1">
                                        <a href="/gallery/like/{{$photo->id}}" class="grid__badge">{{$photo->likes}} <span class="icofont-like"></span></a>
                                    </div>
                                    <div class="gridarea__small__icon">
                                        <a download href="https://admin.clevers.co.ke/storage/{{$photo->file}}"><i class="icofont-download"></i></a>
                                    </div>



                                </div>
                            </div>
                        </div>
                        <!-- single product end -->
                    @endforeach

                    {{$galleries->links()}}
                </div>

            </div>
        </div>
    </section>
    <!-- blog__section__end -->

@endsection
