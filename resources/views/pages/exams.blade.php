@extends('layouts.index')
    @section('title')
        Examinations
    @endsection
@section('content')

    <!-- breadcrumbarea__section__start -->
    <div class="breadcrumbarea" data-aos="fade-up" style="background: url('{{asset('img/herobanner/university1.jpg')}}')">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb__content__wraper">
                        <div class="breadcrumb__title">
                            <h2 class="heading">Examinations</h2>
                        </div>
                        <div class="breadcrumb__inner">
                            <ul>
                                <li><a href="/">Home</a></li>
                                <li>Examinations</li>
                            </ul>
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

    <!-- aboutarea__5__section__start -->
    <div class="aboutarea__5 sp_bottom_100 sp_top_30">
        <div class="container">
            <div class="row">
                At CLIPS, examinations play a crucial role in evaluating students’ academic progress and ensuring the integrity of the education we provide. We are committed to maintaining a fair and transparent examination process that accurately assesses students’ knowledge and skills.
            </div>
            <div class="row sp_top_30">
                <ul class="nav nav-tabs flex-column col-md-4" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" role="tab" aria-controls="home" aria-selected="true" href="#">Academic Support</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="hours-tab" data-bs-toggle="tab" data-bs-target="#hours" type="button" role="tab" aria-controls="hours" aria-selected="false" href="#">Examination Results</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="making-tab" data-bs-toggle="tab" data-bs-target="#making" type="button" role="tab" aria-controls="making" aria-selected="false" href="#">Academic Support</button>
                    </li>

                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="security-tab" data-bs-toggle="tab" data-bs-target="#security" type="button" role="tab" aria-controls="security" aria-selected="false" href="#">Examination Security</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="assessment-tab" data-bs-toggle="tab" data-bs-target="#assessment" type="button" role="tab" aria-controls="assessment" aria-selected="false" href="#">Internal Progress Assessment Exams</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="exams-tab" data-bs-toggle="tab" data-bs-target="#exams" type="button" role="tab" aria-controls="exams" aria-selected="false" href="#">External Examinations by KNEC, ICM, ABMA.</button>
                    </li>
                </ul>
                <div class="tab-content col-md-8">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <p>We understand that examinations can be challenging, and students may need additional support. Nibs Technical College offers various academic support services to assist students in their preparation:</p>
                        <p>Tutoring Services: We provide tutoring and academic assistance for specific subjects, helping students build a stronger foundation and excel in their studies.</p>
                        <p>Revision Workshops: Prior to major examinations, we conduct revision workshops to review essential topics and clarify any doubts.</p>
                        <p>Study Groups: Students can join study groups to collaborate and share knowledge, enhancing their understanding of various subjects.</p>
                    </div>
                    <div class="tab-pane fade" id="hours" role="tabpanel" aria-labelledby="hours-tab">
                        <p><span class="fw-bold"> Timely Feedback:</span> We strive to provide examination results promptly. Students will be informed of their performance and can access their results through the college’s online platform.</p>
                        <p><span class="fw-bold"> Assessment Transparency:</span> Students have the right to request feedback on their examination performance. Our faculty is available to discuss results and offer guidance on areas for improvement.</p>
                    </div>
                    <div class="tab-pane fade" id="making" role="tabpanel" aria-labelledby="making-tab">
                       <p>
                           We understand that examinations can be challenging, and students may need additional support. Nibs Technical College offers various academic support services to assist students in their preparation:
                       </p>
                        <ul style="list-style: circle">
                            <li><span class="fw-bold">Tutoring Services:</span> We provide tutoring and academic assistance for specific subjects, helping students build a stronger foundation and excel in their studies.</li>
                            <li><span class="fw-bold">Revision Workshops:</span> Prior to major examinations, we conduct revision workshops to review essential topics and clarify any doubts.</li>
                            <li><span class="fw-bold">Study Groups:</span> Students can join study groups to collaborate and share knowledge, enhancing their understanding of various subjects.</li>
                        </ul>
                    </div>

                    <div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
                       <p>
                           At Nibs Technical College, we take examination security seriously. Measures are in place to prevent malpractice and protect the integrity of our examinations. These measures include:
                       </p>
                        <ul style="list-style: circle">
                            <li><span class="fw-bold">Secure Examination Venues:</span> Examinations are conducted in secure and monitored environments to prevent unauthorized access or communication.</li>

                        <li><span class="fw-bold">Randomized Question Papers:</span> Question papers are randomized to ensure fairness and prevent collusion.</li>

                        <li><span class="fw-bold">Strict Supervision:</span> Examinations are closely supervised by qualified invigilators to maintain a controlled and secure testing environment.</li>
                        </ul>
                        We believe in fostering an environment of academic excellence and integrity, and our examination processes reflect our commitment to providing quality education and assessments.

                    </div>
                    <div class="tab-pane fade" id="assessment" role="tabpanel" aria-labelledby="assessment-tab">
                       <p>
                           In addition to the examinations conducted by external bodies,CLIPS also implements internal progress assessment exams as an integral part of the academic evaluation process. These internal assessments play a significant role in monitoring students’ progress and ensuring their educational growth throughout the course of their studies.
                       </p>
                        <h6>
                        Purpose of Internal Progress Assessment Exams
                        </h6>

                        <p><span class="fw-bold"> Continuous Evaluation:</span> Internal assessments are conducted at regular intervals to gauge students’ understanding of the course material and track their academic progress over time.</p>

                       <p><span class="fw-bold"> Feedback and Improvement:</span> These exams provide valuable feedback to students and faculty, allowing for targeted improvements in teaching methods and learning strategies.</p>

                        <p><span class="fw-bold">Preparation for External Examinations:</span> Internal assessments help students prepare for the final external examinations conducted by recognized bodies like KNEC, ICM, and ABMA.</p>

                        <p><span class="fw-bold">Identifying Weaknesses:</span> Through internal assessments, educators can identify individual students’ strengths and weaknesses and offer personalized support to enhance their learning experience.</p>

                        <p><span class="fw-bold">Motivation and Accountability:</span> Regular internal assessments motivate students to stay on track with their studies and take ownership of their academic performance.</p>
                    </div>
                    <div class="tab-pane fade" id="exams" role="tabpanel" aria-labelledby="exams-tab">
                        <p>
                            CLIPS holds a strong affiliation with external examination bodies, including the Kenya National Examinations Council (KNEC), International College of Management (ICM), and Association of Business Managers and Administrators (ABMA), among others. These external examinations provide standardized assessments that are widely recognized and respected in the academic and professional world.
                        </p>
                        <h6>
                        Advantages of External Examinations
                        </h6>

                        <p><span class="fw-bold">Credibility and Recognition:</span> Certifications from external bodies carry a high level of credibility and are acknowledged both nationally and internationally, enhancing graduates’ employability.</p>

                       <p><span class="fw-bold"> Industry Alignment:</span> External examinations are designed to meet industry standards and equip students with relevant skills employers seek.</p>

                        <p><span class="fw-bold">Benchmarking and Quality Assurance:</span> External assessments set a benchmark for academic performance, ensuring that the education provided by CLIPS meets and exceeds industry standards.</p>

                                <p><span class="fw-bold">Competitive Advantage: </span>Graduates with certifications from renowned external bodies have a competitive advantage in the job market and are better positioned for career advancement.</p>
<h6>
                        Balanced Assessment Approach
</h6>
<p>
                        CLIPS follows a balanced assessment approach that combines internal progress assessment exams with external examinations. This approach ensures that students receive a holistic evaluation of their academic performance, fostering their overall growth and success.
</p>
                                <p>
                        Our commitment to excellence in education includes maintaining the highest standards in both internal and external assessments. Through a rigorous and fair evaluation process, we strive to nurture skilled and competent professionals who can thrive in today’s dynamic and competitive world.
             </p>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <!-- aboutarea__5__section__end -->
@endsection






