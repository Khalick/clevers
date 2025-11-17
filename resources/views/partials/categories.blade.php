<div class="best__categories sp_top_100 sp_bottom_70">
    <div class="container-fluid full__width__padding">
        <div class="row">
            @php
                $schs=\App\Models\Category::all();
            @endphp

            @foreach($schs as $sch)
                <div class="col-xl-3 col-lg-4 col-sm-6">
                    <!-- categories Item Start -->
                    <div class="best__categories__item aos-init" data-aos="fade-up">
                        <a class="best__categories__link" href="/courses?school={{$sch->name}}">

                            <div class="best__categories__info">
                                <h3 class="best__categories__name">{{$sch->name}}</h3>
                                <span class="best__categories__more">{{\App\Models\Course::where('category',$sch->name)->count()}} Courses</span>
                            </div>
                        </a>
                    </div>
                    <!-- categories Item End -->
                </div>
            @endforeach

        </div>
    </div>
</div>
