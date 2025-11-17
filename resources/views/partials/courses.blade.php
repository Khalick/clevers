<!-- .about__tap__section__end -->
<div class="gridarea__2 sp_bottom_100" data-aos="fade-up">
    <div class="container-fluid full__width__padding">

        <div class="section__title">

            <div class="section__title__heading">
                <h2>Our courses</h2>
            </div>
        </div>

        <div class="row row__custom__class">

            <div class="swiper featured__course">
                <div class="swiper-wrapper">

                    @php $courses=\App\Models\Course::latest()->where('status','Active')->limit(4)->get(); @endphp
                    @foreach($courses as $course)
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 grid-item column__custom__class swiper-slide">
                            <div class="gridarea__wraper">
                                <div class="gridarea__img">

                                    <a href="/course/details/{{$course->id}}"><img loading="lazy" width="342" height="214"  src="https://admin.clevers.co.ke/storage/{{$course->preview}}" alt="grid"></a>
                                    <div class="gridarea__small__button gridarea__small__button__1">
                                        <div class="grid__badge">{{$course->category}}</div>
                                    </div>
                                    <div class="gridarea__small__icon">
                                        <a href="#"><i class="icofont-heart-alt"></i></a>
                                    </div>

                                </div>
                                <div class="gridarea__content">
                                    <div class="gridarea__list">
                                        <ul>
                                            <li>
                                                <i class="icofont-book-alt"></i> {{$course->lecs}} Lessons
                                            </li>
                                            <li>
                                                <i class="icofont-clock-time"></i> {{$course->duration}}
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="gridarea__heading">
                                        <h3><a href="/course/details/{{$course->id}}">{{$course->title}}</a></h3>
                                    </div>
                                    <div class="gridarea__price">
                                        Ksh.{{$course->fees}}

                                    </div>
                                    <div class="gridarea__bottom">

                                        <a href="/course/apply/{{$course->id}}">
                                            <span href="" class="default__button">Apply</span>
                                        </a>

                                        <div class="gridarea__star">
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <i class="icofont-star"></i>
                                            <span></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>

                <div class="slider__controls__wrap slider__controls__arrows">
                    <div class="swiper-button-next arrow-btn"></div>
                    <div class="swiper-button-prev arrow-btn"></div>
                </div>

            </div>
        </div>
    </div>
</div>
