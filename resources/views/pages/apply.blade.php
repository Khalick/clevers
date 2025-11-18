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

            @if(session('error'))
                <div class="alert alert-danger alert-dismissible">
                    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                    <strong>Error!</strong> {{ session('error') }}
                </div>
            @endif

            <div class="col-md-12">
                <form method="post" id="application" action="/applications/new" enctype="multipart/form-data" onsubmit="return validateForm()">
                  @csrf

                    <div class="">
                        <div class="container-fluid">
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

                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample2">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading2">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
                                                FEE PAYMENT DETAILS
                                            </button>
                                        </h2>
                                        <div id="collapse2" class="accordion-collapse collapse show" aria-labelledby="heading2"
                                             data-bs-parent="#accordionExample2">
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

                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample3">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading3">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse3" aria-expanded="true" aria-controls="collapse3">
                                                COURSE APPLICATION DETAILS:
                                            </button>
                                        </h2>
                                        <div id="collapse3" class="accordion-collapse collapse show" aria-labelledby="heading3"
                                             data-bs-parent="#accordionExample3">
                                            <div class="accordion-body">
                                                <div class="row d-flex justify-content-evenly">
                                                    <div class="mb-4 col-md-6">
                                                        <label class="form-label" for="course">Course Name</label>
                                                        <select class="form-control form-select" id="course" name="course" onchange="loadCourseUnits()">
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
                                                    <div class="mb-4 col-md-6">
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

                                                    <div class="mb-4 col-md-12">
                                                        <label class="form-label">
                                                            Select Subjects/Units <span class="text-info">(Select the units you want to study)</span>
                                                        </label>
                                                        <div id="unitsContainer" class="border rounded p-3" style="min-height: 100px;">
                                                            <p class="text-muted">Loading subjects...</p>
                                                        </div>
                                                    </div>

                                                    <div class="mb-4 col-md-12">
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

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample4">
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="heading4">
                                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                    data-bs-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
                                                ATTACHMENTS:
                                            </button>
                                        </h2>
                                        <div id="collapse4" class="accordion-collapse collapse show" aria-labelledby="heading4"
                                             data-bs-parent="#accordionExample4">
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

                                <div class="accordion content__cirriculum__wrap mt-2" id="accordionExample5">
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
                                <div class="row d-flex justify-content-center mt-4">
                                    <div class="col-md-6 text-center">
                                        <button type="submit" class="btn btn-danger btn-lg">Submit Application</button>
                                    </div>
                                </div>
                        </div>                    </div>

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
            loadCourseUnits(); // Load units on page load
            let mform = document.getElementById('application');
            FormPersistence.persist(mform);
        });
        
        function loadCourseUnits() {
            const courseId = $('#course').val();
            if (!courseId) return;
            
            $('#unitsContainer').html('<p class="text-muted">Loading subjects...</p>');
            
            $.ajax({
                method: "GET",
                url: "/course/units/" + courseId,
                success: function(units) {
                    if (units.length === 0) {
                        $('#unitsContainer').html('<p class="text-muted">No subjects available for this course.</p>');
                        return;
                    }
                    
                    let html = '<div class="row">';
                    units.forEach(function(unit) {
                        html += '<div class="col-md-6 mb-2">';
                        html += '<div class="form-check">';
                        html += '<input class="form-check-input" type="checkbox" name="units[]" value="' + unit.id + '" id="unit' + unit.id + '">';
                        html += '<label class="form-check-label" for="unit' + unit.id + '">' + unit.name + '</label>';
                        html += '</div>';
                        html += '</div>';
                    });
                    html += '</div>';
                    
                    $('#unitsContainer').html(html);
                },
                error: function() {
                    $('#unitsContainer').html('<p class="text-danger">Error loading subjects. Please try again.</p>');
                }
            });
        }
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
            let feePayer=$("#feePayer").val();
            if (feePayer==="Other"){
                if (!$("#feePayerName") || !$("#feePayerRelationShip") || !$("#feePayerPhone")){
                    Swal.fire('You missed something','Please provide the details of the person who will be paying fees','error')
                    return false;
                }
            }

        }

        // Refresh CSRF token every 60 minutes to prevent expiration
        setInterval(function() {
            $.get('/refresh-csrf').done(function(data) {
                $('input[name="_token"]').val(data.token);
            });
        }, 3600000); // 60 minutes

    </script>
@endpush






