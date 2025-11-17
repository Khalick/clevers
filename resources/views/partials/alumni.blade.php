<!-- testmonialarea__section__atart -->
<div class="testmonialarea sp_top_100 sp_bottom_110">
    <div class="container">
        <div class="row" data-aos="fade-up">
            <div class="section__title text-center">
                <div class="section__title__button">
                    <div class="default__small__button">Outstanding Alumni</div>
                </div>
                <div class="section__title__heading heading__underline">
                    <h2>Graduates <span>Testimonial</span></h2>
                </div>
            </div>
        </div>
        <div class="row row__custom__class testimonial__slider__active default__arrow" data-aos="fade-up">
            @php $alumnus=\App\Models\Testimonial::all(); @endphp
            @foreach($alumnus as $alumni)
            <div class="col-xl-6 column__custom__class">
                <div class="single__testimonial__wraper">
                    <div class="single__testimonial__inner">
                        <div class="testimonial__img">
                            <img loading="lazy" width="70" height="70"  src="{{$alumni->avatar}}" alt="{{$alumni->name}}">
                            <div class="testimonial__name">
                                <h6>{{$alumni->name}}</h6>
                                <span>{{$alumni->profession}}</span>
                            </div>
                        </div>
                        <div class="testimonial__icon">
                            @for($i=0;$i<$alumni->stars;$i++)
                                <i class="icofont-star"></i>
                            @endfor
                            @for($i=0;$i<(5-$alumni->stars);$i++)
                            <i class="icofont-star dark__color"></i>
                                @endfor
                        </div>
                    </div>

                    <div class="testimonial__content">
                        {!! $alumni->message !!}
                    </div>


                </div>
            </div>
            @endforeach

        </div>
    </div>
</div>
<!-- testmonialarea__section__end-->

