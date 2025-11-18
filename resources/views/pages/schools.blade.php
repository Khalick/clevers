@extends('layouts.index')
@section('title')
    Our Schools
@endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading text-white">Our Schools & Departments</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li class="text-white">Schools</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="shape__icon__2">
            <img loading="lazy" class="shape__icon__img shape__icon__img__1" src="{{asset('img/herobanner/herobanner__1.png')}}" alt="shape">
            <img loading="lazy" class="shape__icon__img shape__icon__img__2" src="{{asset('img/herobanner/herobanner__2.png')}}" alt="shape">
            <img loading="lazy" class="shape__icon__img shape__icon__img__3" src="{{asset('img/herobanner/herobanner__3.png')}}" alt="shape">
            <img loading="lazy" class="shape__icon__img shape__icon__img__4" src="{{asset('img/herobanner/herobanner__5.png')}}" alt="shape">
        </div>
    </div>
    <!-- breadcrumbarea__section__end-->

    <!-- schools intro section start -->
    <div class="aboutarea sp_top_100 sp_bottom_50">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 text-center" data-aos="fade-up">
                    <div class="section__title">
                        <div class="section__title__button">
                            <div class="default__small__button">Excellence in Education</div>
                        </div>
                        <div class="section__title__heading">
                            <h2>Explore Our <span>Academic Schools</span></h2>
                        </div>
                    </div>
                    <p class="about__text__2">
                        Clevers College is organized into multiple specialized schools, each offering comprehensive programs designed to equip students with practical skills and knowledge for their chosen careers. Explore our schools below to find the perfect program for your educational journey.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- schools intro section end -->

    <!-- schools grid section start -->
    <div class="coursearea sp_bottom_100">
        <div class="container">
            <div class="row">
                @php
                    $schools = \App\Models\Category::all();
                @endphp

                @foreach($schools as $school)
                    @php
                        $courseCount = \App\Models\Course::where('category', $school->name)->where('status', 'Active')->count();
                        // Map schools to specific images
                        $schoolImages = [
                            'default' => 'img/herobanner/university_3.jpg',
                            'Accounting' => 'img/herobanner/accounting.png',
                            'IT' => 'img/herobanner/ai_1.jpg',
                            'Technology' => 'img/herobanner/ai_1.jpg',
                            'Business' => 'img/herobanner/university1.jpg',
                            'Languages' => 'img/herobanner/university_2.jpg',
                        ];
                        // Get image based on school name or use default
                        $schoolImage = $schoolImages[$school->name] ?? $schoolImages['default'];
                    @endphp
                    
                    <div class="col-xl-4 col-lg-6 col-md-6 col-12" data-aos="fade-up">
                        <div class="gridarea__wraper gridarea__wraper__2">
                            <div class="gridarea__img">
                                <img loading="lazy" src="{{asset($schoolImage)}}" alt="{{$school->name}}">
                                
                                <div class="gridarea__small__button gridarea__small__button__1">
                                    <div class="grid__badge blue__color">{{$courseCount}} Courses</div>
                                </div>
                            </div>
                            
                            <div class="gridarea__content">
                                <div class="gridarea__heading">
                                    <h3><a href="/courses?school={{$school->name}}">{{$school->name}}</a></h3>
                                </div>
                                
                                @if($school->code)
                                    <div class="gridarea__price mb-2">
                                        <span class="badge bg-light text-dark">{{$school->code}}</span>
                                    </div>
                                @endif
                                
                                <div class="gridarea__paragraph">
                                    @if($school->description)
                                        <p>{!! \Illuminate\Support\Str::limit($school->description, 150) !!}</p>
                                    @else
                                        <p>Explore our comprehensive range of {{strtolower($school->name)}} programs designed to prepare you for a successful career.</p>
                                    @endif
                                </div>

                                <div class="gridarea__bottom">
                                    <div class="gridarea__small__img">
                                        <i class="icofont-book-alt text-primary" style="font-size: 20px;"></i>
                                        <div class="gridarea__small__content">
                                            <h6>{{$courseCount}} Programs</h6>
                                        </div>
                                    </div>
                                    
                                    <div class="gridarea__details">
                                        <a href="/courses?school={{$school->name}}">View Courses
                                            <i class="icofont-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
    <!-- schools grid section end -->

    <!-- call to action section start -->
    <div class="registerarea sp_top_90 sp_bottom_90" style="background: linear-gradient(135deg, #01579b 0%, #0277bd 100%);">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12" data-aos="fade-up">
                    <div class="registerarea__wraper">
                        <div class="section__title registerarea__section__title">
                            <div class="section__title__button">
                                <div class="default__small__button text-white">Start Your Journey</div>
                            </div>
                            <div class="section__title__heading">
                                <h2 class="text-white">Ready to Begin Your <span style="color: #ffd700;">Education Journey?</span></h2>
                            </div>
                        </div>
                        <p class="text-white">Join thousands of successful graduates who started their career journey at Clevers College. Apply now and take the first step towards your dream career.</p>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12" data-aos="fade-up">
                    <div class="registerarea__button">
                        <a class="default__button" href="/courses" style="background: #ffd700; color: #01579b; font-weight: bold;">
                            Apply Now
                            <i class="icofont-arrow-right"></i>
                        </a>
                        <a class="default__button default__button--2" href="/courses" style="border-color: #fff; color: #fff;">
                            Browse All Courses
                            <i class="icofont-simple-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="registerarea__img">
            <img loading="lazy" class="register__1" src="{{asset('img/register/register__1.png')}}" alt="register">
            <img loading="lazy" class="register__2" src="{{asset('img/register/register__2.png')}}" alt="register">
            <img loading="lazy" class="register__3" src="{{asset('img/register/register__3.png')}}" alt="register">
        </div>
    </div>
    <!-- call to action section end -->

    <!-- why choose our schools section start -->
    <div class="aboutarea sp_top_100 sp_bottom_100">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12" data-aos="fade-up">
                    <div class="about__image__wrapper about__image__wrapper--2">
                        <img loading="lazy" class="about__img__1" src="{{asset('img/about/about_8.png')}}" alt="about">
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12" data-aos="fade-up">
                    <div class="about__content__wraper">
                        <div class="section__title">
                            <div class="section__title__button">
                                <div class="default__small__button">Why Choose Us</div>
                            </div>
                            <div class="section__title__heading">
                                <h2>Excellence Across All <span>Academic Disciplines</span></h2>
                            </div>
                        </div>

                        <div class="about__text__2">
                            <p>Our schools are equipped with state-of-the-art facilities, experienced faculty, and industry-relevant curricula designed to ensure your success.</p>
                        </div>

                        <div class="aboutarea__list__2">
                            <ul>
                                <li>
                                    <i class="icofont-check"></i>
                                    Industry-Experienced Lecturers & Instructors
                                </li>
                                <li>
                                    <i class="icofont-check"></i>
                                    Practical, Hands-On Learning Approach
                                </li>
                                <li>
                                    <i class="icofont-check"></i>
                                    Modern Facilities & Learning Resources
                                </li>
                                <li>
                                    <i class="icofont-check"></i>
                                    Flexible Study Modes (Full-Time, Part-Time, Online)
                                </li>
                                <li>
                                    <i class="icofont-check"></i>
                                    Nationally Recognized Certifications
                                </li>
                                <li>
                                    <i class="icofont-check"></i>
                                    Career Guidance & Placement Support
                                </li>
                            </ul>
                        </div>

                        <div class="aboutarea__button">
                            <a class="default__button" href="/about">Learn More About CLIPS
                                <i class="icofont-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- why choose our schools section end -->

@endsection
