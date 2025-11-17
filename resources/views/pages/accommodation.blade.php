@extends('layouts.index')
    @section('title')
        Accommodation
    @endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">Accommodation</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>Accommodation</li>
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
    <div class="aboutarea__5 sp_bottom_30 sp_top_100">
        <div class="container">
            <div class="row">


                <div class="col-xl-12 col-lg-12" data-aos="fade-up">
                    <div class="aboutarea__content__wraper__5">
                        <div class="section__title">
                            <div class="section__title__button">
                                <div class="default__small__button">Accommodation</div>
                            </div>
                        </div>
                        <div class="about__text__5">
                            <p>CLIPS Technical College offers comfortable and safe accommodation options for students who prefer to reside on campus. Our accommodation facilities are designed to create a conducive living and learning environment.</p>
                        </div>
                        <div class="row">
                           <p>
                              <span class="fw-bold"> Hostel Facilities: </span> Our hostels are equipped with all the necessary amenities, including furnished rooms, study areas, and communal spaces. Students have access to shared kitchen facilities and laundry rooms.
                           </p>
                            <p>
                            <span class="fw-bold">Safety and Security: </span> The safety and well-being of our students are of paramount importance. Our accommodation facilities are equipped with 24/7 security measures, CCTV surveillance, and secure access control.
                            </p>
                            <p>
                            <span class="fw-bold">Personalised care : </span> Each hostel has dedicated Matrons who provide guidance and support to students residing on campus. They ensure a conducive living environment and promote a sense of community among residents.
                            </p>
                            <p>
                               <span class="fw-bold"> Cleaning and Maintenance: </span> Regular cleaning and maintenance are conducted to ensure that our accommodation facilities are always in optimal condition.
                            </p>
                            <p>
                           <span class="fw-bold"> Proximity to Campus: </span>Our hostels are conveniently located within the college campus, providing easy access to academic buildings, libraries, and other facilities.
                            </p>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="text-end m-3">
        <a href="/courses" class="btn btn-danger">
            JOIN US
        </a>
    </div>

@endsection






