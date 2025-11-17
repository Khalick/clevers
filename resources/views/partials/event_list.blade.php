<!-- eventlistarea__section__start  -->
<div class="eventlistarea sp_top_20 sp_bottom_100">

    <div class="container">
        <div class="eventlistarea__bg">
            <svg width="938" height="919" viewBox="0 0 938 919" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M926.588 668.954C845.79 881.299 578.082 976.498 328.645 881.587C79.2083 786.675 -57.5003 537.594 23.2975 325.25C104.095 112.905 842.659 -201.917 722.687 181.03C612.239 533.576 1007.39 456.609 926.588 668.954Z" fill="url(#paint0_linear_141_3)"/>
                <defs>
                    <linearGradient id="paint0_linear_141_3" x1="621.24" y1="112.617" x2="328.645" y2="881.586" gradientUnits="userSpaceOnUse">
                        <stop offset="0.9999" stop-color="#FBAED8" stop-opacity="0.08"/>
                        <stop offset="1" stop-color="#B64AA4" stop-opacity="0"/>
                    </linearGradient>
                </defs>
            </svg>
        </div>
        <div class="row eventarea__wraper" data-aos="fade-up">
            <div class="col-xl-7 col-lg-7 col-md-7">
                <div class="section__title eventarea__section__title">
                    <div class="section__title__button">
                        <div class="default__small__button">Our Events List</div>
                    </div>
                    <div class="section__title__heading heading__underline">
                        <h2>we provide <span>real-world exposure</span> for every student</h2>
                    </div>
                </div>
            </div>
            <div class="col-xl-5 col-lg-5 col-md-5">
                <div class="eventarea__content">
                    <p>Study tours, seminars, guest lectures, and innovative initiatives that connect you with the latest industry advancements.</p>
                </div>
            </div>
        </div>

        <div class="row" data-aos="fade-up">
            @php
                $events=\App\Models\Event::all()
                ->groupBy('date');
                $fT=true;
                $count=1;
            @endphp
            <div class="col-xl-12">
                <ul class="nav  tab__button__wrap" id="myTab" role="tablist">
                    @foreach($events->keys() as $tabTitle)
@if($fT)
                            <li class="nav-item" role="presentation">
                                <button class="single__tab__link active" data-bs-toggle="tab" data-bs-target="#projects__{{$count}}" type="button">
                                    {{$tabTitle}}</button>
                            </li>
    @php $fT=false; @endphp
                        @else
                            <li class="nav-item" role="presentation">
                                <button class="single__tab__link" data-bs-toggle="tab" data-bs-target="#projects__{{$count}}" type="button">
                                    {{$tabTitle}}</button>
                            </li>
@endif
                        @php $count++; @endphp
                    @endforeach
                </ul>

            </div>
        </div>

        <div class="tab-content tab__content__wrapper" id="myTabContent">
            @php
                $counter=1;
                $fc=true;
            @endphp
            @foreach($events->values() as $values)
                <div class="tab-pane fade @if($fc) active show @php $fc=false; @endphp @endif" id="projects__{{$counter}}" role="tabpanel" aria-labelledby="projects__{{$counter}}">
                    <div class="social__wrapper row">

                        @foreach($values as $event)

                        <div class="single__event__wraper col-md-5 m-4" data-aos="fade-up">
                            <div class="eventarea__img">
                                <img loading="lazy" width="170" height="147r"  src="https://admin.clevers.co.ke/storage/{{$event->banner}}" alt="event">
                            </div>
                            <div class="eventarea__content__wraper">
                                <div class="eventarea__list">
                                    <ul>
                                        <li>
                                            <i class="icofont-clock-time"></i> {{$event->startTime}} - {{$event->endTime}}
                                        </li>
                                        <li>
                                            <a href="#">{{$event->organizer}}</a> - Event Organizer
                                        </li>
                                    </ul>
                                </div>
                                <div class="single__event__heading">
                                    <h4><a href="/events/details/{{$event->id}}">{{$event->title}}</a></h4>
                                </div>
                                <div class="single__event__button">
                                    <a href="/events/details/{{$event->id}}">Read More <i class="icofont-simple-right"></i></a>
                                </div>
                            </div>
                        </div>
                        @endforeach


                    </div>
                </div>
                @php $counter++; @endphp
                @endforeach
        </div>


    </div>
</div>
<!-- eventlistarea__section__end  -->
