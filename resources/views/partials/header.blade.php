<!-- headar section start -->
<header>
    <div class="headerarea headerarea__3 header__sticky header__area">
        <div class="container desktop__menu__wrapper">
            <div class="row">
                <div class="col-xl-1 col-lg-1 col-md-1">
                    <div class="headerarea__left">
                        <div class="headerarea__left__logo">

                            <a href="/"><img loading="lazy" width="50"  src="{{asset('img/favicon.png')}}" alt="logo"></a>
                        </div>

                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 main_menu_wrap">
                    <div class="headerarea__main__menu">
                        <nav>
                            <ul>


                                <li class="mega__menu position-static">
                                    <a class="header__area" href="/"><i class="icofont-home"></i>Home </a>
                                </li>

                                <li class="mega__menu position-static">
                                    <a class="headerarea__has__dropdown" href="#">About<i class="icofont-rounded-down"></i> </a>
                                    <div class="headerarea__submenu mega__menu__wrapper w-25 ms-5">

                                        <div class="row">
                                            <div class="col-12 mega__menu__single__wrap">
                                                <h4 class="mega__menu__title"><a href="#">About Us</a></h4>
                                                <ul class="mega__menu__item">
                                                    <li><a href="/founder">Founder's Message</a></li>
                                                    <li><a href="/history">History</a></li>
                                                    <li><a href="/mission">Mission/Vision</a></li>
                                                    <li><a href="/governance">Governance</a></li>
                                                    <li><a href="/governance#accreditation">Accreditation</a></li>
                                                    <li><a href="/partners">Partners</a></li>
                                                    <li><a href="#" download>Quality Policy</a></li>
                                                    <li><a href="/campuses">Our Campuses</a></li>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>

                                </li>


                                <li>
                                    <a class="headerarea__has__dropdown" href="#">Academics
                                        <i class="icofont-rounded-down"></i>
                                    </a>
                                    <ul class="headerarea__submenu headerarea__submenu--third--wrap">
                                        <li><a href="/schools">Schools <i class="icofont-rounded-right"></i></a>
@php
$schs=\App\Models\Category::all();
 @endphp
                                            <ul class="headerarea__submenu--third">
                                                @foreach($schs as $sch)
                                                    <li><a href="/courses?school={{$sch->name}}">{{$sch->name}}</a></li>
                                                @endforeach

                                            </ul>

                                        </li>
                                        <li>
                                            <a href="/accounting">Accounting</a>
                                        </li>
                                        <li>
                                            <a href="/kcse">KCSE Private candidates</a>
                                        </li>
                                        <li>
                                            <a href="/igcse">IGCSE PRIVATE CANDIDATES</a>
                                        </li>
                                        <li>
                                            <a href="/aas">A and As levels</a>
                                        </li>
                                        <li>
                                            <a href="/courses?school=Languages">Languages</a>
                                        </li>
                                        <li>
                                            <a href="/library">Library</a>
                                        </li>
                                        <li><a href="/exams">Examinations</a>
                                       </li>
                                        <li><a href="/facilities">Facilities</a>
                                        </li>
                                        <li><a href="/calendar">College Calendar / Almanac</a>
                                        </li>

                                    </ul>
                                </li>

                                <li><a class="headerarea__has__dropdown" href="#">Resources
                                        <i class="icofont-rounded-down"></i>
                                    </a>
                                    <ul class="headerarea__submenu">
                                        <li><a href="/pastpapers">Past Papers</a></li>
                                        <li><a href="/downloads">Downloads</a></li>
                                    </ul>
                                </li>
                                <li><a class="headerarea__has__dropdown" href="#">Admissions
                                        <i class="icofont-rounded-down"></i>
                                    </a>
                                    <ul class="headerarea__submenu">
                                        <li><a href="/applications/new">New Applications</a></li>
                                        <li><a href="/applications/new#admission">Admission Process</a></li>
                                        <li><a href="/fees">Fee Payment</a></li>
                                        <li><a href="/international">International Students</a></li>
                                        <li><a href="/accommodation">Accommodation</a></li>
                                        <li><a href="/">The CLIPS Experience</a></li>
                                    </ul>
                                </li>


                                <li>
                                    <a class="headerarea__has__dropdown" href="#">Student Life
                                        <i class="icofont-rounded-down"></i>
                                    </a>
                                    <ul class="headerarea__submenu">
                                        <li><a href="/life#sports">Sports</a></li>
                                        <li><a href="/life#art">Art and Music</a></li>
                                        <li><a href="/life#clubs">Clubs and Societies</a></li>
                                        <li><a href="/life#wellness">Student Wellness</a></li>
                                        <li><a href="/life#placement">Placement</a></li>
                                        <li><a href="/life#alumni">Alumni</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="headerarea__has__dropdown" href="#">News & Media
                                        <i class="icofont-rounded-down"></i>
                                    </a>
                                    <ul class="headerarea__submenu">
                                        <li><a href="/news">News & Blog</a></li>
                                        <li><a href="/career">Career</a></li>
                                        <li><a href="/virtual">Virtual Tour</a></li>

                                    </ul>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-2 col-md-2">
                    <div class="headerarea__right">

                        <div class="headerarea me-2">
                            <a href="/contact">Contact</a>
                        </div>

                        <div class="headerarea__button">
                            <a href="/courses">Join Us</a>
                        </div>
                    </div>
                </div>

            </div>

        </div>


        <div class="container-fluid mob_menu_wrapper">
            <div class="row align-items-center">
                <div class="col-4">
                    <div class="mobile-logo">
                        <a class="logo__dark" href="#"><img width="50" loading="lazy"  src="{{asset('img/favicon.png')}}" alt="logo"></a>
                    </div>
                </div>
                <div class="col-8">
                    <div class="header-right-wrap">

                        <div class="headerarea__right">

                            <div class="headerarea fw-bold text-danger">
                                <a href="/"> Clever Schools</a>
                            </div>
                        </div>

                        <div class="mobile-off-canvas">
                            <a class="mobile-aside-button" href="#"><i class="icofont-navigation-menu"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header section end -->
