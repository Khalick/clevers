@extends('layouts.index')
    @section('title')
        Library
    @endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">Library</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>Academics</li>
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
    <div class="aboutarea__5 sp_bottom_100 sp_top_30">
        <div class="container">
            <div class="row">
                Welcome to the CLIPS Library, a hub of knowledge and resources to support your academic and professional journey. Our library is designed to provide students and faculty with access to a wide range of books, research materials, and digital resources that enhance the learning experience.
            </div>
            <div class="row sp_top_30">
                <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                    <div class="" data-tilt>
                        <img loading="lazy"  src="{{asset('img/about/about_23.jpg')}}" alt="about">
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                    <div class="aboutarea__content__wraper__5">
                        <div class="section__title">
                            <div class="section__title__button">
                                <div class="default__small__button">Library Services</div>
                            </div>
                            <div class="section__title__heading ">
                                <h2>A hub of knowledge and resources.</h2>
                            </div>
                        </div>
                        <div class="about__text__5">
                            <p>
                                <span class="fw-bold">Extensive Collection:</span> Our library boasts an extensive collection of books, journals, research papers, and periodicals covering various disciplines, including business studies, engineering, media studies, hospitality, and more.
                            </p>
                        </div>

                        <div class="aboutarea__para__5">
                            <p>
                                <span class="fw-bold">Digital Resources:</span>Access a wealth of digital resources, including e-books, online databases, and scholarly journals, available through our state-of-the-art digital library platform.
                            </p>
                          <p>
                              <span class="fw-bold">Study Spaces:</span> The library offers comfortable study spaces for individual study or group discussions, providing a quiet and conducive environment for academic pursuits.
                          </p>
                            <p>
                                <span class="fw-bold">Reference Assistance:</span> Our knowledgeable librarians are ready to assist you with research queries, citation styles, and finding relevant resources for your projects and assignments.
                            </p>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row">
                <ul class="nav nav-tabs flex-column col-md-4" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" role="tab" aria-controls="home" aria-selected="true" href="#">Library Membership</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="hours-tab" data-bs-toggle="tab" data-bs-target="#hours" type="button" role="tab" aria-controls="hours" aria-selected="false" href="#">Library Hours</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="making-tab" data-bs-toggle="tab" data-bs-target="#making" type="button" role="tab" aria-controls="making" aria-selected="false" href="#">Making the Most of the Library</button>
                    </li>
                </ul>
                <div class="tab-content col-md-8">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        All CLIPS students and faculty are automatically registered as library members. Your membership grants you access to all library resources and services, ensuring you have the support you need for your academic and research endeavors.
                    </div>
                    <div class="tab-pane fade" id="hours" role="tabpanel" aria-labelledby="hours-tab">
                        The library operates during regular college hours, offering flexible access to resources and study spaces. Whether you need a quiet place to study, access to specific research materials, or guidance on your academic journey, our library is here to serve you.
                    </div>
                    <div class="tab-pane fade" id="making" role="tabpanel" aria-labelledby="making-tab">
                        <ul style="list-style-type: circle">
                            <li> <span class="icofont-arrow-right text-danger"></span> <span class="fw-bold">Plan Your Visits:</span> Schedule regular visits to the library to explore new resources, work on assignments, or simply find inspiration.</li>
                            <li><span class="icofont-arrow-right text-danger"></span> <span class="fw-bold">Ask for Help:</span> Don’t hesitate to approach our friendly librarians for any assistance or guidance you may need.</li>
                            <li><span class="icofont-arrow-right text-danger"></span> <span class="fw-bold">Explore Online Resources:</span> Take advantage of our digital library platform to access a wealth of online resources from the comfort of your own device.</li>
                            <li><span class="icofont-arrow-right text-danger"></span> <span class="fw-bold">Join Library Workshops:</span> Participate in library workshops to enhance your research and information literacy skills.</li>
                            <li><span class="icofont-arrow-right text-danger"></span> <span class="fw-bold">Stay Organized:</span> Use our designated study spaces to stay organized and focused during your study sessions.</li>
                            The CLIPS Library is committed to supporting your academic and intellectual growth. We invite you to explore our vast collection, tap into valuable resources, and make the most of this enriching learning space.
                        </ul>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <!-- aboutarea__5__section__end -->
@endsection






