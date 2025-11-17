@extends('layouts.index')
@section('title')
    Login
@endsection
@section('content')
<div class="breadcrumbarea" style="background-image: url('{{asset('img/herobanner/university_2.jpg')}}')">

    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="breadcrumb__content__wraper" data-aos="fade-up">
                    <div class="breadcrumb__title">
                        <h2 class="heading">Log In</h2>
                    </div>
                    <div class="breadcrumb__inner">
                        <h5>You need to login to access the requested resource</h5>
                        <h5>You can also access it from your portal</h5>
                    </div>
                </div>



            </div>
        </div>
    </div>

    <div class="shape__icon__2">
        <img loading="lazy"  class=" shape__icon__img shape__icon__img__1" src="{{asset('img/herobanner/herobanner__1.png')}}" alt="photo">
        <img loading="lazy"  class=" shape__icon__img shape__icon__img__2" src="{{asset('img/herobanner/herobanner__2.png')}}" alt="photo">
        <img loading="lazy"  class=" shape__icon__img shape__icon__img__3" src="{{asset('img/herobanner/herobanner__3.png')}}" alt="photo">
        <img loading="lazy"  class=" shape__icon__img shape__icon__img__4" src="{{asset('img/herobanner/herobanner__5.png')}}" alt="photo">
    </div>

</div>
<!-- breadcrumbarea__section__end-->

<!-- login__section__start -->
<div class="loginarea sp_top_100 sp_bottom_100">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-md-8 offset-md-2">
                <div class="loginarea__wraper">
                    <div class="login__heading">
                        <h5 class="login__title">Login</h5>
                        <p class="login__description">Login with your portal credentials.<a href="https://wa.me/+254725449122" data-bs-toggle="modal" data-bs-target="#registerModal">Can't Log In?</a></p>
                    </div>



                    <form action="/login" method="post">
                        @csrf
                        <div class="login__form">
                            <label class="form__label">Username or email</label>
                            <input class="common__login__input" name="email" type="text" placeholder="Your  email">

                        </div>
                        <div class="login__form">
                            <label class="form__label">Password</label>
                            <input class="common__login__input" name="password" type="password" placeholder="Password">

                        </div>
                        <div class="login__form d-flex justify-content-between flex-wrap gap-2">
                            <div class="form__check">
                                <input name="remember" id="forgot" type="checkbox">
                                <label for="forgot"> Remember me</label>
                            </div>
                            <div class="text-end login__form__link">
                                <a href="https://portal.clevers.co.ke">Forgot your password?</a>
                            </div>
                        </div>
                        <div class="login__button">
                            <button class="default__button">Log In</button>
                        </div>
                    </form>

                </div>
            </div>

        </div>

        <div class=" login__shape__img educationarea__shape_image">
            <img loading="lazy"  class="hero__shape hero__shape__1" src="{{asset('img/education/hero_shape2.png')}}" alt="Shape">
            <img loading="lazy"  class="hero__shape hero__shape__2" src="{{asset('img/education/hero_shape3.png')}}" alt="Shape">
            <img loading="lazy"  class="hero__shape hero__shape__3" src="{{asset('img/education/hero_shape4.png')}}" alt="Shape">
            <img loading="lazy"  class="hero__shape hero__shape__4" src="{{asset('img/education/hero_shape5.png')}}" alt="Shape">
        </div>


    </div>
</div>

<!-- login__section__end -->
@endsection
