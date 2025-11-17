@extends('layouts.index')
@section('title')
    {{$event->title}}
@endsection
@section('content')

    <div class="breadcrumbarea" style="background: url('{{asset('img/herobanner/university_2.jpg')}}')">

        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper" data-aos="fade-up">
                        <div class="breadcrumb__title">
                            <h2 class="heading">Event Details</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li class="text-white fw-bold"><a href="/" class="text-white fw-bold">Home</a></li>
                                <li class="text-white fw-bold">{{$event->title}}</li>
                            </ul>
                        </div>
                    </div>



                </div>
            </div>
        </div>

    </div>
    <!-- breadcrumbarea__section__end-->

    <!-- event__section__start -->
    <div class="eventarea sp_top_100 sp_bottom_100">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="eventarea__details__small__button" data-aos="fade-up">
                        <a href="#">{{$event->category}}</a>
                    </div>
                    <div class="event__details__heading" data-aos="fade-up">
                        <h3>{{$event->title}}</h3>
                    </div>
                    <div class="eventarea__details__list">
                        <ul>
                            <li>
                                <div class="event__details__small__img" data-aos="fade-up">
                                    <div class="event__details__text">
                                        <span>Organizer:</span>
                                        <p>{{$event->organizer}}</p>
                                    </div>
                                </div>

                            </li>
                            <li>

                                <div class="event__details__text" data-aos="fade-up">
                                    <span>Date:</span>
                                    <p>{{$event->date}}</p>
                                </div>


                            </li>
                            <li>

                                <div class="event__details__text" data-aos="fade-up">
                                    <span>Location:</span>
                                    <p>{{$event->location}}</p>
                                </div>

                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                    <div class="event__details__inner">
                        <div class="event__details__img__2" data-aos="fade-up">
                            <img loading="lazy" src="https://admin.clevers.co.ke/storage/{{$event->banner}}" alt="phto">
                        </div>
                        <div class="event__details__content" data-aos="fade-up">
                            <h4>Description</h4>
                            <p>
                                {{$event->description}}
                            </p>
                             </div>

                        <div class="event__details__list__2" data-aos="fade-up">
                            <h4>This event will allow participants to:</h4>
                            <ul>
                                @foreach($event->objectives as $objective)
                                <li>
                                    <i class="icofont-check"></i>
                                    <p> {{$objective}}</p>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">


                    <div class="event__sidebar__wraper" data-aos="fade-up">
                        <div class="event__price__wraper">

                            <div class="event__price">
                                Ksh.{{$event->cost}}
                            </div>
                            @if($event->cost==0.0)
                                <div class="event__Price__button">
                                    <a href="#">Free</a>
                                </div>
                            @endif

                        </div>
                        <div class="event__details__list">
                            <ul>
                                <li>
                                    <div class="event__details__icon">
                                        <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M17.0306 7.31951L10.2759 0.496974C9.92563 0.176359 9.46963 -0.000862647 8.997 3.15745e-06C8.52424 0.000848658 8.06889 0.179588 7.71964 0.50139L0.969643 7.3196C0.359786 7.98029 0.0142286 8.8461 0 9.74926V16.2142C0.00401786 16.8134 0.243082 17.3864 0.664972 17.8078C1.08685 18.2291 1.6569 18.4643 2.25 18.4616H15.75C16.3431 18.4643 16.9132 18.2291 17.335 17.8078C17.7569 17.3864 17.996 16.8133 18 16.2142V9.74926C17.9858 8.8461 17.6402 7.98029 17.0304 7.3196L17.0306 7.31951ZM7.50257 16.9464L7.51981 10.8858L10.8754 10.9054V16.9465L7.50257 16.9464ZM16.5004 16.2142C16.4967 16.4117 16.4159 16.5996 16.2753 16.7369C16.1346 16.874 15.946 16.9494 15.7504 16.9464H12.3754V10.9052C12.3749 10.4984 12.2147 10.1083 11.9299 9.82042C11.645 9.53278 11.2588 9.37094 10.856 9.37042H7.5198C7.11702 9.37092 6.7308 9.53276 6.44585 9.82042C6.16108 10.1082 6.00086 10.4983 6.00035 10.9052V16.9464H2.25035C2.05481 16.9494 1.86614 16.874 1.72552 16.7369C1.5849 16.5995 1.50403 16.4117 1.50035 16.2142V9.74922C1.51575 9.248 1.70309 8.76774 2.03071 8.39099L8.77642 1.57711H8.77626C8.84272 1.53044 8.92308 1.50829 9.00377 1.5142C9.08028 1.50828 9.15661 1.52892 9.22006 1.57271L15.9701 8.39092C16.2977 8.76768 16.4852 9.24794 16.5004 9.74915L16.5004 16.2142Z"
                                                fill="#5F2DED" />
                                        </svg>
                                    </div>
                                    <div class="event__details__date">
                                        <p> <span>End:</span>{{$event->endTime}}</p>
                                    </div>
                                </li>

                                <li>
                                    <div class="event__details__icon">
                                        <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M17.0306 7.31951L10.2759 0.496974C9.92563 0.176359 9.46963 -0.000862647 8.997 3.15745e-06C8.52424 0.000848658 8.06889 0.179588 7.71964 0.50139L0.969643 7.3196C0.359786 7.98029 0.0142286 8.8461 0 9.74926V16.2142C0.00401786 16.8134 0.243082 17.3864 0.664972 17.8078C1.08685 18.2291 1.6569 18.4643 2.25 18.4616H15.75C16.3431 18.4643 16.9132 18.2291 17.335 17.8078C17.7569 17.3864 17.996 16.8133 18 16.2142V9.74926C17.9858 8.8461 17.6402 7.98029 17.0304 7.3196L17.0306 7.31951ZM7.50257 16.9464L7.51981 10.8858L10.8754 10.9054V16.9465L7.50257 16.9464ZM16.5004 16.2142C16.4967 16.4117 16.4159 16.5996 16.2753 16.7369C16.1346 16.874 15.946 16.9494 15.7504 16.9464H12.3754V10.9052C12.3749 10.4984 12.2147 10.1083 11.9299 9.82042C11.645 9.53278 11.2588 9.37094 10.856 9.37042H7.5198C7.11702 9.37092 6.7308 9.53276 6.44585 9.82042C6.16108 10.1082 6.00086 10.4983 6.00035 10.9052V16.9464H2.25035C2.05481 16.9494 1.86614 16.874 1.72552 16.7369C1.5849 16.5995 1.50403 16.4117 1.50035 16.2142V9.74922C1.51575 9.248 1.70309 8.76774 2.03071 8.39099L8.77642 1.57711H8.77626C8.84272 1.53044 8.92308 1.50829 9.00377 1.5142C9.08028 1.50828 9.15661 1.52892 9.22006 1.57271L15.9701 8.39092C16.2977 8.76768 16.4852 9.24794 16.5004 9.74915L16.5004 16.2142Z"
                                                fill="#5F2DED" />
                                        </svg>
                                    </div>
                                    <div class="event__details__date">
                                        <p> <span>Time:</span>{{$event->startTime}}</p>
                                    </div>
                                </li>

                                <li>
                                    <div class="event__details__icon">
                                        <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M17.0306 7.31951L10.2759 0.496974C9.92563 0.176359 9.46963 -0.000862647 8.997 3.15745e-06C8.52424 0.000848658 8.06889 0.179588 7.71964 0.50139L0.969643 7.3196C0.359786 7.98029 0.0142286 8.8461 0 9.74926V16.2142C0.00401786 16.8134 0.243082 17.3864 0.664972 17.8078C1.08685 18.2291 1.6569 18.4643 2.25 18.4616H15.75C16.3431 18.4643 16.9132 18.2291 17.335 17.8078C17.7569 17.3864 17.996 16.8133 18 16.2142V9.74926C17.9858 8.8461 17.6402 7.98029 17.0304 7.3196L17.0306 7.31951ZM7.50257 16.9464L7.51981 10.8858L10.8754 10.9054V16.9465L7.50257 16.9464ZM16.5004 16.2142C16.4967 16.4117 16.4159 16.5996 16.2753 16.7369C16.1346 16.874 15.946 16.9494 15.7504 16.9464H12.3754V10.9052C12.3749 10.4984 12.2147 10.1083 11.9299 9.82042C11.645 9.53278 11.2588 9.37094 10.856 9.37042H7.5198C7.11702 9.37092 6.7308 9.53276 6.44585 9.82042C6.16108 10.1082 6.00086 10.4983 6.00035 10.9052V16.9464H2.25035C2.05481 16.9494 1.86614 16.874 1.72552 16.7369C1.5849 16.5995 1.50403 16.4117 1.50035 16.2142V9.74922C1.51575 9.248 1.70309 8.76774 2.03071 8.39099L8.77642 1.57711H8.77626C8.84272 1.53044 8.92308 1.50829 9.00377 1.5142C9.08028 1.50828 9.15661 1.52892 9.22006 1.57271L15.9701 8.39092C16.2977 8.76768 16.4852 9.24794 16.5004 9.74915L16.5004 16.2142Z"
                                                fill="#5F2DED" />
                                        </svg>
                                    </div>
                                    <div class="event__details__date">
                                        <p> <span>Venue:</span>{{$event->location}}</p>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div class="event__details__button">
                            <a class="default__button" href="/events/rsvp/{{$event->id}}">RSVP Now</a>
                        </div>

                    </div>



                    @if($event->sponsors  !=null)
                    <div class="event__sidebar__wraper" data-aos="fade-up">
                        <div class="event__details__sidebar__heading">
                            <h6>Sponsors</h6>
                        </div>
                        @foreach($event->sponsors as $sponsor)
                        <div class="event__details__img__2">
                            <img loading="lazy"  src="{{$sponsor}}" alt="photo">
                        </div>
                        @endforeach

                    </div>
                    @endif

                </div>

            </div>
        </div>
    </div>
    <!-- event__section__end -->

@endsection





