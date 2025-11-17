
<!-- herobannerarea__section__start -->
<div class="herobannerarea herobannerarea__2 herobannerarea__university">

    <div class="swiper university__slider">

        <div class="herobannerarea__slider__wrap swiper-wrapper">

            @php
                $sliders=\App\Models\Slider::all();
            @endphp
            @foreach($sliders as $slider)
            <div class="swiper-slide herobannerarea__single__slider" style="background: url('https://admin.clevers.co.ke/storage/{{$slider->image}}');">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 col-12" data-aos="fade-up">
                            <div class="herobannerarea__content__wraper text-center">


                                <div class="herobannerarea__title">
                                    <div class="herobannerarea__small__title">
                                        <span>{!! $slider->heading !!}</span>
                                    </div>
                                    <div class="herobannerarea__title__heading__2 herobannerarea__title__heading__3">
                                        <h2>{!! $slider->bigText !!}</h2>
                                    </div>
                                </div>


                                <!-- <div class="herobannerarea__text herobannerarea__text__2">
                                    <p>Lorem Ipsum is simply dummy text of the printing typesetting.</p>
                                </div> -->
                                <div class="hreobannerarea__button__2">
                                    <a class="default__button" href="/courses">Apply Now</a>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>


    <div thumbsSlider="" class="swiper university__slider__thumb">
        <div class="swiper-wrapper">
            @foreach($sliders as $slider)
            <div class="swiper-slide">
                <img loading="lazy"  src="https://admin.clevers.co.ke/storage/{{$slider->image}}"  alt=""/>
            </div>
            @endforeach
        </div>
    </div>


    <div class="slider__controls__wrap slider__controls__pagination slider__controls__arrows">
        <div class="swiper-button-next arrow-btn"></div>
        <div class="swiper-button-prev arrow-btn"></div>
        <div class="swiper-pagination"></div>
    </div>

    <div class="herobannerarea__icon__2">
        <img loading="lazy"  class="herobanner__common__img herobanner__img__1" src="{{asset('img/herobanner/herobanner__1.png')}}" alt="photo">
        <img loading="lazy"  class="herobanner__common__img herobanner__img__2" src="{{asset('img/herobanner/herobanner__2.png')}}" alt="photo">
        <img loading="lazy"  class="herobanner__common__img herobanner__img__3" src="{{asset('img/herobanner/herobanner__3.png')}}" alt="photo">
        <!--<img loading="lazy"  class="herobanner__common__img herobanner__img__4" src="img/herobanner/herobanner__4.png" alt="photo">-->
        <img loading="lazy"  class="herobanner__common__img herobanner__img__5" src="{{asset('img/herobanner/herobanner__5.png')}}" alt="photo">
    </div>

</div>
<!-- herobannerarea__section__end-->
