@extends('layouts.index')
    @section('title')
        Partners
    @endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">Partners</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>Partners</li>
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
        <div class="container-fluid bg-danger">
            <div class="container mt-2 sp_top_20">
                <div class="row">
                    <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                        <div class="aboutarea__5__img" data-tilt>
                            <img loading="lazy"  src="{{asset('img/about/about_22.png')}}" alt="about">
                        </div>
                    </div>

                    <div class="col-xl-6 col-lg-6" data-aos="fade-up">
                        <div class="aboutarea__content__wraper__5">
                            <div class="section__title">
                                <div class="section__title__button">
                                    <div class="default__small__button">Our Partners</div>
                                </div>
                                <div class="section__title__heading text-white">
                                    <h2 class="text-white">The power of collaboration and partnerships.</h2>
                                </div>
                            </div>
                            <div class="about__text__5">
                                <p class="text-white">
                                    At CLIPS, we believe in the power of collaboration and partnerships. We have established strategic partnerships with various industry organizations, educational institutions, and research centers to enhance the learning experience and create opportunities for our students.
                                </p>
                           </div>

                            <div class="aboutarea__para__5">
                                <p class="text-white">
                                    These partnerships provide our students with exposure to real-world scenarios, internships, and industry-relevant projects. Through collaborations, we aim to bridge the gap between academia and industry, equipping our students with the skills and knowledge required by the job market.
                                </p>
                                <p class="text-white">
                                    We are proud of our collaborations and look forward to nurturing more partnerships that will contribute to the success of our students and the overall growth of CLIPS.
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- aboutarea__5__section__end -->
    @include('partials.partners')
@endsection






