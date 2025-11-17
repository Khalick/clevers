@php use App\Models\Intake; @endphp
@extends('layouts.index')
@section('title')
    Apply
@endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up"
         style="background: url('{{asset('img/herobanner/university_3.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading text-white">Online Application</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li class="text-danger">Online Application</li>
                            </ul>
                        </div>
                    </div>


                </div>
            </div>
        </div>


    </div>
    <!-- breadcrumbarea__section__end-->


    <!-- about__tap__section__start -->
    <div class="abouttabarea sp_bottom_70">
        <div class="row m-2 d-flex justify-content-evenly">
            @php
                $intake=Intake::latest()->where('status','Active')->first();
            @endphp
            @if($intake==null)
                <div class="col-md-6">
                    <div class="alert alert-info m-2">
                        <div class="alert-heading">
                            There is no active intake ongoing. Please check again later
                        </div>
                    </div>
                </div>
            @else
                <div class="alert alert-success alert-dismissible">
                    <div class="alert-heading">
                        {{$intake->name}} Intake Ongoing
                    </div>
                </div>
            @endif

            <div class="col-md-12">
                <form method="post" id="application" action="/applications/new" enctype="multipart/form-data" onsubmit="return validateForm()">
                  @csrf

                    <div class="">
                        <!-- Tab panes -->
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" data-bs-toggle="tab" href="#st1">Personal Details</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#st2">Medical History</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#st3">Parent/Next Of Kin</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#st4">Fee Payment</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#st5">Education Background</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#st6">Course Details</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#st7">Attachments</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#st8">Submit</a>
                            </li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane container-fluid active" id="st1">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample1">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingOne">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                APPLICANT’S PERSONAL DETAILS (ALL DETAILS TO BE IN CAPITAL LETTERS)
                                            </button>
                                        </h2>
                                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                             data-bs-parent="#accordionExample1">
                                            <div class="accordion-body">
                                                <div class="row d-flex justify-content-evenly">
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="lname">SurName <span class="text-danger">(required)</span>
                                                        </label>
                                                        <input type="text" maxlength="64" class="form-control" name="lname" id="lname"
                                                               required>
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="fname">First Name <span class="text-danger">(required)</span>
                                                        </label>
                                                        <input type="text" maxlength="64" class="form-control" name="fname" id="fname"
                                                               required>
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="mname">Middle Name <span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="text" maxlength="64" class="form-control" name="mname" id="mname">
                                                    </div>

                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="idNo">ID/PassPort Number<span
                                                                class="text-warning">(optional)</span> </label>
                                                        <input type="number" maxlength="32" class="form-control" name="idNo" id="idNo">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="dob">Date Of Birth <span class="text-danger">(required)</span>
                                                        </label>
                                                        <input type="date" class="form-control" name="dob" id="dob" required>
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="gender">Gender<span class="text-danger">(required)</span>
                                                        </label>
                                                        <select type="text" class="form-control form-select" name="gender" id="gender">
                                                            <option selected value="Male">
                                                                Male
                                                            </option>
                                                            <option value="Female">
                                                                Female
                                                            </option>
                                                            <option value="Non Binary">
                                                                Non Binary
                                                            </option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="religion">Religion <span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="text" class="form-control" name="religion" id="religion">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="county">County Of Residence <span
                                                                class="text-warning">(optional)</span> </label>
                                                        <select  class="form-control form-select" name="county" id="county">
                                                        </select>
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="residence">Current Residence <span
                                                                class="text-warning">(optional)</span> </label>
                                                        <input type="text" class="form-control" name="residence" id="residence">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="email">Active Email <span class="text-danger">(required)</span>
                                                        </label>
                                                        <input type="email" class="form-control" name="email" id="email" required>
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="phone">Active Phone Number <span
                                                                class="text-danger">(required)</span> </label>
                                                        <input type="tel" class="form-control" name="phone" id="phone" required>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="text-end">
                                    <button type="button" value="st1" class="btn btn-danger btnNext">Next</button>

                                </div>

                            </div>

                            <div class="tab-pane container-fluid" id="st2">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample2">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading2">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
                                                APPLICANT’S MEDICAL HISTORY
                                            </button>
                                        </h2>
                                        <div id="collapse2" class="accordion-collapse collapse show" aria-labelledby="heading2"
                                             data-bs-parent="#accordionExample2">
                                            <div class="accordion-body">
                                                <div class="d-flex justify-content-evenly row">
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="history">
                                                            Presence of pre-existing/chronic medical condition
                                                        </label>
                                                        <select id="history" name="history" class="form-control form-select">
                                                            <option selected value="No">No</option>
                                                            <option value="Yes">Yes</option>

                                                        </select>
                                                    </div>
                                                    <div class="col-md-8 mb-4">
                                                        <label class="form-label" for="history">
                                                            If Yes, Please state the condition <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <textarea id="condition" type="text" name="condition"
                                                                  class="form-control"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row d-flex justify-content-evenly">
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-secondary btnPrevious">Back</button>

                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-danger btnNext">Next</button>

                                    </div>

                                </div>
                            </div>

                            <div class="tab-pane container-fluid" id="st3">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample3">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading3">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse3" aria-expanded="true" aria-controls="collapse3">
                                                PARENT/NEXT OF KIN DETAILS
                                            </button>
                                        </h2>
                                        <div id="collapse3" class="accordion-collapse collapse show" aria-labelledby="heading3"
                                             data-bs-parent="#accordionExample3">
                                            <div class="accordion-body">
                                                <div class="row d-flex justify-content-evenly">
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="father">Father's Name <span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="text" maxlength="255" class="form-control" name="father"
                                                               id="father"
                                                               >
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="fatherEmail">Father's Email Address <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="email" maxlength="255" class="form-control" name="fatherEmail"
                                                               id="fatherEmail"
                                                               >
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="fatherPhone">Father's Phone Number <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="tel" maxlength="10" class="form-control" name="fatherPhone"
                                                               id="fatherPhone"
                                                               >
                                                    </div>

                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="mother">Mother's Name <span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="text" maxlength="255" class="form-control" name="mother"
                                                               id="mother"
                                                               >
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="motherEmail">Mother's Email Address <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="email" maxlength="255" class="form-control" name="motherEmail"
                                                               id="motherEmail"
                                                               >
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="motherPhone">Mother's Phone Number <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="tel" maxlength="10" class="form-control" name="motherPhone"
                                                               id="motherPhone"
                                                               >
                                                    </div>

                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="nokName">Next Of Kin Name <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="text" maxlength="255" class="form-control" name="nokName"
                                                               id="nokName">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="nokEmail">Next Of Kin Email Address <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="email" maxlength="255" class="form-control" name="nokEmail"
                                                               id="nokEmail">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="nokPhone">Next Of Kin Phone Number <span
                                                                class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="tel" maxlength="10" class="form-control" name="nokPhone"
                                                               id="nokPhone">
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row d-flex justify-content-evenly">
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-secondary btnPrevious">Back</button>

                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-danger btnNext">Next</button>

                                    </div>

                                </div>

                            </div>

                            <div class="tab-pane container-fluid" id="st4">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample4">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading4">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
                                                FEE PAYMENT DETAILS
                                            </button>
                                        </h2>
                                        <div id="collapse4" class="accordion-collapse collapse show" aria-labelledby="heading4"
                                             data-bs-parent="#accordionExample4">
                                            <div class="accordion-body">
                                                <div class="row d-flex justify-content-evenly">
                                                    <div class="col-md-12 mb-4">
                                                        <label class="form-label" id="feePayer">Who will be paying your fees?</label>
                                                        <select class="form-control form-select" type="text" name="feePayer">
                                                            <option value="father">
                                                                Father
                                                            </option>
                                                            <option value="mother">
                                                                Mother
                                                            </option>
                                                            <option value="self">
                                                                Self
                                                            </option>
                                                            <option value="other">
                                                                Other
                                                            </option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-12 fw-bold mb-4">
                                                        If Other,Please provide details below
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="feePayerName">Name <span class="text-warning">(optional)</span></label>
                                                        <input class="form-control" type="text" id="feePayerName" name="feePayerName">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="feePayerRelationShip">Relationship <span
                                                                class="text-warning">(optional)</span></label>
                                                        <input class="form-control" type="text" maxlength="64" id="feePayerRelationShip"
                                                               name="feePayerRelationShip">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="feePayerPhone">Phone Number <span
                                                                class="text-warning">(optional)</span></label>
                                                        <input class="form-control" type="tel" maxlength="10" id="feePayerPhone"
                                                               name="feePayerPhone">
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row d-flex justify-content-evenly">
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-secondary btnPrevious">Back</button>

                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-danger btnNext">Next</button>

                                    </div>

                                </div>
                            </div>

                            <div class="tab-pane container-fluid" id="st5">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample5">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading5">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse5" aria-expanded="true" aria-controls="collapse5">
                                                EDUCATION BACKGROUND
                                            </button>
                                        </h2>
                                        <div id="collapse5" class="accordion-collapse collapse show" aria-labelledby="heading5"
                                             data-bs-parent="#accordionExample5">
                                            <div class="accordion-body">
                                                <div class="row d-flex justify-content-evenly">
                                                    <div class="mb-4 col-md-4">
                                                        <label class="form-label" for="education">Highest Level Of Education Attained</label>
                                                        <select class="form-control form-select" id="education" name="education">
                                                            <option selected value="Primary">
                                                                Not Applicable
                                                            </option>
                                                            <option selected value="Primary">
                                                                Primary
                                                            </option>
                                                            <option  value="Secondary">
                                                                Secondary
                                                            </option>
                                                            <option  value="Tertiary">
                                                                Tertiary
                                                            </option>
                                                        </select>
                                                    </div>
                                                    <div class="mb-4 col-md-4">
                                                        <label class="form-label" for="grade">
                                                            Grade Attained<span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="text" class="form-control"  id="grade" name="grade">
                                                    </div>
                                                    <div class="mb-4 col-md-4">
                                                        <label class="form-label" for="school">
                                                            School Name<span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="text" class="form-control"  id="school" name="school">
                                                    </div>
                                                    <div class="mb-4 col-md-4">
                                                        <label class="form-label" for="year">
                                                            Year Completed<span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="number" minlength="4" max="{{intval(date('Y'))}}" maxlength="{{strlen(date('Y'))}}" class="form-control" id="year" name="year">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row d-flex justify-content-evenly">
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-secondary btnPrevious">Back</button>

                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-danger btnNext">Next</button>

                                    </div>

                                </div>
                            </div>

                            <div class="tab-pane container-fluid" id="st6">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample6">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading6">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse6" aria-expanded="true" aria-controls="collapse6">
                                                COURSE APPLICATION DETAILS:
                                            </button>
                                        </h2>
                                        <div id="collapse6" class="accordion-collapse collapse show" aria-labelledby="heading6"
                                             data-bs-parent="#accordionExample6">
                                            <div class="accordion-body">
                                                <div class="row d-flex justify-content-evenly">
                                                    <div class="mb-4 col-md-4">
                                                        <label class="form-label" for="course">Course Name</label>
                                                        <select class="form-control form-select" id="course" name="course">
                                                            @php
                                                                $courses=\App\Models\Course::where('status','Active')->get();
                                                            @endphp
                                                            @foreach($courses as $c)
                                                                <option @selected($c->title==$course->title) value="{{$c->id}}">
                                                                    {{$c->title}}
                                                                </option>
                                                            @endforeach

                                                        </select>
                                                    </div>
                                                    <div class="mb-4 col-md-4">
                                                        <label class="form-label" for="examiner">
                                                            Examined By
                                                        </label>
                                                        <select  class="form-control form-select"  id="examiner" name="examiner">
                                                            @php
                                                                $examiners=\App\Models\Examiner::all();
                     $f=true;
                                                            @endphp
                                                            @foreach($examiners as $examiner)
                                                                @if($f)
                                                                    <option selected value="{{$examiner->name}}" >{{$examiner->name}}</option>
                                                                    @php $f=false; @endphp
                                                                @else
                                                                    <option  value="{{$examiner->name}}" >{{$examiner->name}}</option>

                                                                @endif
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                    <div class="mb-4 col-md-4">
                                                        <label class="form-label" for="mode">
                                                            Study Mode
                                                        </label>
                                                        <select  class="form-control form-select"  id="mode" name="mode">
                                                            @php
                                                                $modes=\App\Models\StudyMode::all();
                     $f=true;
                                                            @endphp
                                                            @foreach($modes as $mode)
                                                                @if($f)
                                                                    <option selected value="{{$mode->name}}" >{{$mode->name}}</option>
                                                                    @php $f=false; @endphp
                                                                @else
                                                                    <option  value="{{$mode->name}}" >{{$mode->name}}</option>

                                                                @endif
                                                            @endforeach
                                                        </select>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row d-flex justify-content-evenly">
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-secondary btnPrevious">Back</button>

                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-danger btnNext">Next</button>

                                    </div>

                                </div>
                            </div>

                            <div class="tab-pane container-fluid" id="st7">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample7">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading7">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse7" aria-expanded="true" aria-controls="collapse7">
                                                ATTACHMENTS:
                                            </button>
                                        </h2>
                                        <div id="collapse7" class="accordion-collapse collapse show" aria-labelledby="heading7"
                                             data-bs-parent="#accordionExample7">
                                            <div class="accordion-body">
                                                <div class="row d-flex justify-content-evenly">
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="passport">
                                                            2 Passport Size Photos<span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="file" id="passport" multiple class="form-control" name="passport[]" accept="image/*">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="id">
                                                            National ID Front and Back<span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="file" id="id" multiple class="form-control" name="id[]" accept="image/*">
                                                    </div>
                                                    <div class="col-md-4 mb-4">
                                                        <label class="form-label" for="slip">
                                                            Result Slip/KCSE Certificate<span class="text-warning">(optional)</span>
                                                        </label>
                                                        <input type="file" id="slip" class="form-control" name="slip" accept="application/pdf">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row d-flex justify-content-evenly">
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-secondary btnPrevious">Back</button>

                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" value="st1" class="btn btn-danger btnNext">Next</button>

                                    </div>

                                </div>
                            </div>

                            <div class="tab-pane container-fluid" id="st8">
                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample8">
                                    <div class="accordion-item">
                                        <div class="accordion-body">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="terms" required name="terms">
                                                <label class="form-check-label" for="terms">
                                                    I hereby declare that the information I have provided above is correct and accurate. I have understood all the requirements for my studies/course and I accept to abide by all rules and regulations governing the students of this college throughout the course of my study.
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row d-flex justify-content-evenly">
                                    <div class="col-md-6 text-end">
                                        <button type="button" value="st1" class="btn btn-secondary btnPrevious">Back</button>

                                    </div>
                                    <div class="col-md-6 text-end">
                                        <button type="submit" value="st1" class="btn btn-danger btnNext">Submit Application</button>

                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                </form>

            </div>

        </div>
    </div>
    <!-- .about__tap__section__end -->
@endsection
@push('extra')
    <script src='https://cdn.jsdelivr.net/gh/FThompson/FormPersistence.js@2.0.6/form-persistence.min.js'></script>
    <script>

        $(function (){
            getCounties();
            let mform = document.getElementById('application');
            FormPersistence.persist(mform);
            $('.btnNext').click(function(event) {
                const nextTabLinkEl = $('.nav-tabs .active').closest('li').next('li').find('a')[0];
                const nextTab = new bootstrap.Tab(nextTabLinkEl);
                nextTab.show()
            });
            $('.btnPrevious').click(function() {
                const prevTabLinkEl = $('.nav-tabs .active').closest('li').prev('li').find('a')[0];
                const prevTab = new bootstrap.Tab(prevTabLinkEl);
                prevTab.show();
            });
        });
        function getCounties(){
            $.ajax({
                method:"GET",
                url:"/counties",
                success:function (resp1){
                    $("#county").html("");
                    let resp=resp1;
                    let first=true;
                    for (let i=0;i<resp.length;i++){
                        let option=document.createElement('option');
                        option.value=resp[i];
                        option.innerText=resp[i];
                        if (first){
                            option.selected=true
                            first=false
                        }
                        document.getElementById('county').appendChild(option)

                    }

                }
            })

        }

        function validateForm() {
            let history=$("#history").val();
            if(history==="Yes" && !$("#condition").val()){
                Swal.fire('You missed something','Please provide the medical condition','error')
                return false;
            }

            let feePayer=$("#feePayer").val();
            if (feePayer==="Other"){
                if (!$("#feePayerName") || !$("#feePayerRelationShip") || !$("#feePayerPhone")){
                    Swal.fire('You missed something','Please provide the details of the person who will be paying fees','error')
                    return false;
                }
            }

        }

    </script>
@endpush






