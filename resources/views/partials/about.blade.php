<!-- aboutarea__2__section__start -->
<div class="aboutarea__2 sp_top_100">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12" data-aos="fade-up">
                <div class="about__right__wraper__2">
                    @php $about=\App\Models\AboutSection::first(); @endphp
                    @if($about)
                    <div class="educationarea__img" data-tilt>
                        <img loading="lazy"  class="aboutarea__2__img__1" src="https://admin.clevers.co.ke/storage/{{$about->image1}}" alt="education">
                        <img loading="lazy"  class="aboutarea__2__img__2" src="https://admin.clevers.co.ke/storage/{{$about->image2}}" alt="education">
                        <img loading="lazy"  class="aboutarea__2__img__3" src="{{asset('img/about/about_4.png')}}" alt="education">
                        <img loading="lazy"  class="aboutarea__2__img__4" src="{{asset('img/about/about_11.png')}}" alt="education">
                    </div>
                    <div class="aboutarea__2__text">
                        <div class="aboutarea__counter">
                            <span class="counter">{{\Carbon\Carbon::now()->year - 2007}}</span> +
                        </div>

                        <p>YEARS OF EXPERIENCE JUST ACHIEVED</p>


                    </div>
                    @endif
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12" data-aos="fade-up">

                <div class="aboutarea__content__wraper">
                    <div class="aboutarea__button">
                        <div class="default__small__button">About Us</div>
                    </div>
                    @if($about)
                    <div class="aboutarea__headding heading__underline">
                        <h2>
                            {!! $about->title !!}
                        </h2>
                   </div>
                    <div class="aboutarea__para aboutarea__para__2">
                        {!! $about->content !!}
                    </div>
                    @endif
                </div>

            </div>
        </div>
    </div>
</div>
<!-- aboutarea__2__section__end -->
