@extends('layouts.index')
    @section('title')
        International Students
    @endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">International Students</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>International Students</li>
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

    <!-- aboutarea__5__section__start -->
    <div class="aboutarea__5 sp_bottom_100 sp_top_100">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                    <div class="aboutarea__5__img" data-tilt>
                        <img loading="lazy"  src="{{asset('img/about/about_21.png')}}" alt="about">
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                    <div class="aboutarea__content__wraper__5">
                        <div class="section__title">
                            <div class="section__title__heading ">
                                <h2>International Students</h2>
                            </div>
                        </div>
                        <div class="about__text__5">
                            <p>
                                At CLIPS Technical College, we welcome students from all over the world to join our diverse learning community. For international students seeking to study with us, we provide the necessary support to make your transition smooth and enjoyable.</p>
                        </div>

                        <div class="aboutarea__para__5">
                           <p>
                              <span class="fw-bold"> Student Visas:</span> Our international students’ office will assist you with the student visa application process and any related documentation. We are here to guide you through the required steps to ensure a seamless visa application.
                           </p>
                            <p>
                            <span class="fw-bold">Orientation Program:</span>  CLIPS Technical College hosts an orientation program for international students upon arrival. This program introduces students to college life, cultural aspects of Kenya, and the various support services available to them.
                            </p>
                            <p>
                            <span class="fw-bold">Accommodation Assistance: </span> If you require accommodation during your studies, we can assist you in finding suitable housing options. Our student services team will help you settle into your new home away from home.
                            </p>
                            <p>
                            <span class="fw-bold">Cultural Integration:</span>  CLIPS Technical College fosters a multicultural environment, and we celebrate the diversity of our international students. Our campus is a place where you can connect with peers from different backgrounds and cultures. We encourage international students to participate in cultural exchange programs and events.
                            </p>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- aboutarea__5__section__end -->
@endsection






