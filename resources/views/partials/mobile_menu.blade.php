<!-- Mobile Menu Start Here -->
<div class="mobile-off-canvas-active">
    <a class="mobile-aside-close"><i class="icofont  icofont-close-line"></i></a>
    <div class="header-mobile-aside-wrap">
        <div class="mobile-search">
            <form class="search-form" method="get" action="{{request()->path()}}">
                <input type="text" placeholder="Search courses…">
                <button class="button-search"><i class="icofont icofont-search-2"></i></button>
            </form>
        </div>
        <div class="mobile-menu-wrap headerarea">

            <div class="mobile-navigation">

                <nav>
                    <ul class="mobile-menu">
                        <li class="menu-item"><a href="/">Home</a>
                        </li>


                        <li class="menu-item-has-children"><a href="#">About</a>

                            <ul class="dropdown">
                                <li><a href="/founder">Founder's Message</a></li>
                                <li><a href="/history">History</a></li>
                                <li><a href="/mission">Mission/Vision</a></li>
                                <li><a href="/governance">Governance</a></li>
                                <li><a href="/governance#accreditation">Accreditation</a></li>
                                <li><a href="/partners">Partners</a></li>
                                <li><a href="#" download>Quality Policy</a></li>
                                <li><a href="/campuses">Our Campuses</a></li>
                            </ul>

                        </li>

                        <li class="menu-item">
                            <a href="/accounting">Accounting</a>
                        </li>
                        <li class="menu-item-has-children"><a href="#">Academics</a>

                            <ul class="dropdown">
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

                        <li class="menu-item-has-children"><a href="#">Resources</a>

                            <ul class="dropdown">
                                <ul class="headerarea__submenu">
                                    <li><a href="/pastpapers">Past Papers</a></li>
                                    <li><a href="/downloads">Downloads</a></li>
                                </ul>
                            </ul>

                        </li>
                        <li class="menu-item-has-children"><a href="#">Admissions</a>

                            <ul class="dropdown">
                                <ul class="headerarea__submenu">
                                    <li><a href="/applications/new">New Applications</a></li>
                                    <li><a href="/applications/new#admission">Admission Process</a></li>
                                    <li><a href="/fees">Fee Payment</a></li>
                                    <li><a href="/international">International Students</a></li>
                                    <li><a href="/accommodation">Accommodation</a></li>
                                    <li><a href="/">The CLIPS Experience</a></li>
                                </ul>
                            </ul>

                        </li>
                        <li class="menu-item-has-children"><a href="#">Student Life</a>

                            <ul class="dropdown">
                                <li><a href="/life#sports">Sports</a></li>
                                <li><a href="/life#art">Art and Music</a></li>
                                <li><a href="/life#clubs">Clubs and Societies</a></li>
                                <li><a href="/life#wellness">Student Wellness</a></li>
                                <li><a href="/life#placement">Placement</a></li>
                                <li><a href="/life#alumni">Alumni</a></li>
                            </ul>

                        </li>
                        <li class="menu-item-has-children"><a href="#">News and Media</a>

                            <ul class="dropdown">
                                <li><a href="/news">News & Blog</a></li>
                                <li><a href="/career">Career</a></li>
                                <li><a href="/virtual">Virtual Tour</a></li>
                            </ul>

                        </li>

                    </ul>
                </nav>

            </div>

        </div>
        <div class="mobile-social-wrap">
            <a class="facebook" href="https://www.facebook.com/cleverskenya.org"><i class="icofont icofont-facebook"></i></a>
            <a class="twitter" href="#"><i class="icofont icofont-twitter"></i></a>
            <a class="instagram" href="#"><i class="icofont icofont-instagram"></i></a>
            <a class="google" href="https://www.youtube.com/@cleversschool8832"><i class="icofont icofont-youtube-play"></i></a>
        </div>
    </div>
</div>
<!-- Mobile Menu end Here -->

<!-- theme fixed shadow -->
<div>
    <div class="theme__shadow__circle"></div>
    <div class="theme__shadow__circle shadow__right"></div>
</div>
<!-- theme fixed shadow -->
