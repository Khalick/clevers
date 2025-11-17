
<!-- register__section__start-->
<div class="registerarea sp_top_90 mb-0">
    <div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" data-aos="fade-up">
                <div class="registerarea__wraper">
                    <div class="section__title registerarea__section__title">
                        <div class="section__title__button">
                            <div class="default__small__button">Student Life</div>
                        </div>
                        <div class="section__title__heading">
                            <h6 class="text-white">CLIPS is a <span>vibrant and engaging</span> community of Trainers and trainees   </h6>
                        </div>
                    </div>

                </div>
            </div>



        </div>
        <div class="row d-flex justify-content-evenly">
            @php
                $wellness=\App\Models\HomeWellness::first();
            @endphp
            @if($wellness!=null)
                <div class="col-xl-4 col-lg-4" data-aos="fade-up">

                    <div class="blogarea__content__wraper">
                        <div class="blogarea__img">
                            <img loading="lazy"  src="https://admin.clevers.co.ke/storage/{{$wellness->image}}" alt="Wellness">
                            <div class="blogarea__date">
                                {{$wellness->title}}
                            </div>
                        </div>
                        <div class="blogarea__text__wraper blogarea__text__wraper__2">
                            <h5 class="text-white"><a href="/wellness" class="text-white">
                                    {!! $wellness->description !!}</a></h5>
                        </div>

                    </div>
                </div>

            @endif

            @php
                $art=\App\Models\HomeArt::first();
            @endphp
            @if($art !=null)
            <div class="col-xl-4 col-lg-4" data-aos="fade-up">
                <div class="blogarea__content__wraper">
                    <div class="blogarea__img">
                        <img loading="lazy"  src="https://admin.clevers.co.ke/storage/{{$wellness->image}}" alt="blog">
                        <div class="blogarea__date">
                            {!! $art->title !!}
                        </div>
                    </div>
                    <div class="blogarea__text__wraper blogarea__text__wraper__2">
                        <h5 class="text-white"><a href="/art" class="text-white">
                            {!! $art->description !!}</a></h5>
                    </div>

                </div>
            </div>
            @endif
            @php $sports=\App\Models\HomeSports::first(); @endphp

            @if($sports !=null)
                <div class="col-xl-4 col-lg-4" data-aos="fade-up">
                    <div class="blogarea__content__wraper">
                        <div class="blogarea__img">
                            <img loading="lazy"  src="https://admin.clevers.co.ke/storage/{{$sports->image}}" alt="blog">
                            <div class="blogarea__date small__date">
                                {!! $sports->title !!}
                            </div>
                        </div>
                        <div class="blogarea__text__wraper blogarea__text__wraper__2">
                            <h5 class="text-white"><a href="/sports" class="text-white">{!! $sports->description !!}</a></h5>
                        </div>

                    </div>
                </div>
            @endif

        </div>
    </div>
    <div class="registerarea__img">
        <img loading="lazy"  class="register__1" src="{{asset('img/register/register__1.png')}}" alt="register">
        <img loading="lazy"  class="register__2" src="{{asset('img/register/register__2.png')}}" alt="register">
        <img loading="lazy"  class="register__3" src="{{asset('img/register/register__3.png')}}" alt="register">
    </div>
</div>
<!-- register__section__end-->
