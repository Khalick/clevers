<!-- footer__section__start -->
<div class="footerarea">
    <div class="container">
        <div class="footerarea__newsletter__wraper">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12" data-aos="fade-up">
                    <div class="footerarea__text">
                        <h3>Still  Need Our <span>Support</span> ?</h3>
                        <p>Don’t wait we are here and ready to help. Its pretty easy.</p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12" data-aos="fade-up">
                    <div class="footerarea__newsletter">
                        <div class="footerarea__newsletter__input">
                            <form action="/mail/subscribe" method="post">
                                @csrf
                                <input type="email" name="email" placeholder="Enter your email here">
                                <div class="footerarea__newsletter__button">
                                    <button type="submit" class="subscribe__btn">Subscribe Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footerarea__wrapper footerarea__wrapper__2">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12" data-aos="fade-up">
                    <div class="footerarea__inner footerarea__about__us">
                        <div class="footerarea__heading">
                            <h3>About us</h3>
                        </div>
                        <div class="footerarea__content">
                            <p>The support of our dedicated staff ensures a seamless and productive learning journey for every student.</p>
                        </div>
                        <div class="foter__bottom__text">
                            <div class="footer__bottom__icon">
                                <i class="icofont-clock-time"></i>
                            </div>
                            <div class="footer__bottom__content">
                                <h6>Opening Hours</h6>
                                <span>Mon - Sat(8.00 - 6.00)</span>
                                <span>Sunday - Closed</span>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-xl-2 col-lg-2  col-md-6 col-sm-6" data-aos="fade-up">
                    <div class="footerarea__inner">
                        <div class="footerarea__heading">
                            <h3>Useful Links</h3>
                        </div>
                        <div class="footerarea__list">
                            <ul>
                                <li>
                                    <a href="/founder">About Us</a>
                                </li>
                                <li>
                                    <a href="https://portal.clevers.co.ke">Student Portal</a>
                                </li>
                                <li>
                                    <a href="https://teachers.clevers.co.ke">Staff Portal</a>
                                </li>
                                <li>
                                    <a href="/gallery">Gallery</a>
                                </li>
                            </ul>
                        </div>


                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6" data-aos="fade-up">
                    <div class="footerarea__inner footerarea__padding__left">
                        <div class="footerarea__heading">
                            <h3>Course</h3>
                        </div>
                        <div class="footerarea__list">
                            <ul>
                                @php $courses=\App\Models\Course::limit(5)->get(); @endphp
                                @foreach($courses as $course)
                                    <li>
                                        <a href="/course/details/{{$course->id}}">{{$course->title}}</a>
                                    </li>
                                @endforeach

                            </ul>
                        </div>


                    </div>
                </div>

                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12" data-aos="fade-up">
                    <div class="footerarea__right__wraper footerarea__inner">
                        <div class="footerarea__heading">
                            <h3>Recent Post</h3>
                        </div>
                        <div class="footerarea__right__list">
                            <ul>
                                @php $posts=\App\Models\Blog::orderBy('created_at','desc')->limit(3)->get(); @endphp
                                @foreach($posts as $post)
                                <li>
                                    <a href="/blog/details/{{base64_encode($post)}}">
                                        <div class="footerarea__right__img">
                                            <img loading="lazy" width="136" height="78" src="https://admin.clevers.co.ke/storage/{{$post->banner}}" alt="footerphoto">
                                        </div>
                                        <div class="footerarea__right__content">
                                            <span>{{date('d/m/Y',strtotime($post->created_at))}}</span>
                                            <h6>{{$post->title}}</h6>
                                        </div>
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footerarea__copyright__wrapper footerarea__copyright__wrapper__2">
            <div class="row">
                <div class="col-xl-3 col-lg-3">
                    <div class="copyright__logo">
                        <a href="/"><img loading="lazy" width="50" height="50"  src="{{asset('img/favicon.png')}}" alt="logo"></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="footerarea__copyright__content footerarea__copyright__content__2">
                        <p>Copyright © Clever Schools <span>{{date('Y')}}</span> by TiroTech. All Rights Reserved.</p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3">
                    <div class="footerarea__icon footerarea__icon__2">
                        <ul>
                            <li><a href="https://www.facebook.com/cleverskenya.org"><i class="icofont-facebook"></i></a></li>
                            <li><a href="#"><i class="icofont-twitter"></i></a></li>
                            <li><a href="#"><i class="icofont-linkedin"></i></a></li>
                            <li><a href="https://www.youtube.com/@cleversschool8832"><i class="icofont-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- footer__section__end -->
