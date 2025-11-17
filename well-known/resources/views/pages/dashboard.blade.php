@extends('layouts.main')
@section('header')
    <!-- [ breadcrumb ] start -->
    <div class="page-header">
        <div class="page-block">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-auto">
                    <div class="page-header-title">
                        <h5 class="mb-0">Home</h5>
                    </div>
                </div>
                <div class="col-sm-auto">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/"><i class="ph-duotone ph-house"></i></a></li>
                        <li class="breadcrumb-item"><a href="javascript: void(0)">Dashboard</a></li>
                        <li class="breadcrumb-item" aria-current="page">Home</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
@endsection

@section('content')
    <!-- [ Main Content ] start -->
    <div class="row">
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-warning border-feed">
                            <i class="material-icons-two-tone d-block f-46">admin_panel_settings</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\Examiner::count()}}</h2>
                                <p class="text-muted m-0">
                                    Examiners <span class="text-info f-w-400"><a class="btn btn-primary" href="/examiners">Manage Examiners</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-secondary border-feed">
                            <i class="material-icons-two-tone d-block f-46">assignment_ind</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\Intake::count()}}</h2>
                                <p class="text-muted m-0">
                                    Intakes <span class="text-info f-w-400"><a class="btn btn-primary" href="/intakes">Manage Intakes</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-info border-feed">
                            <i class="material-icons-two-tone d-block f-46">school</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\Semester::count()}}</h2>
                                <p class="text-muted m-0">
                                    Semesters <span class="text-info f-w-400"><a class="btn btn-primary" href="/semesters">Manage Semesters</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-warning border-feed">
                            <i class="material-icons-two-tone d-block f-46">download</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\Downloads::count()}}</h2>
                                <p class="text-muted m-0">
                                    Downloads <span class="text-info f-w-400"><a class="btn btn-primary" href="/downloads">Manage Downloads</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-danger border-feed">
                            <i class="material-icons-two-tone d-block f-46">menu_book</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\PastPaper::count()}}</h2>
                                <p class="text-muted m-0">
                                    Past Papers <span class="text-info f-w-400"><a class="btn btn-primary" href="/pastpapers">Manage Past Papers</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-success border-feed">
                            <i class="material-icons-two-tone d-block f-46">work</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\Career::count()}}</h2>
                                <p class="text-muted m-0">
                                    Careers <span class="text-info f-w-400"><a class="btn btn-primary" href="/careers">Manage Careers</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-gradient bg-pink-600 border-feed">
                            <i class="material-icons-two-tone d-block f-46">image</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\Gallery::count()}}</h2>
                                <p class="text-muted m-0">
                                    Gallery <span class="text-info f-w-400"><a class="btn btn-primary" href="/gallery">Manage Gallery</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-danger bg-pink-600 border-feed">
                            <i class="material-icons-two-tone d-block f-46">library_books</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <h2 class="f-w-400 m-b-10">{{\App\Models\StudyMode::count()}}</h2>
                                <p class="text-muted m-0">
                                    Study Modes <span class="text-info f-w-400"><a class="btn btn-primary" href="/modes">Manage Modes</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-danger bg-dark-subtle border-feed">
                            <i class="material-icons-two-tone d-block f-46">home</i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <p class="text-muted m-0">
                                    Homepage Settings <span class="text-info f-w-400"><a class="btn btn-primary" href="/settings/home">Change Settings</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card feed-card card-border-none">
                <div class="card-body py-0">
                    <div class="row">
                        <div class="col-4 bg-info border-feed">
                            <i class="d-block f-46 ph-duotone ph-graduation-cap"></i>
                        </div>
                        <div class="col-8">
                            <div class="p-t-25 p-b-25">
                                <p class="text-muted m-0">
                                    Founder's Message <span class="text-info f-w-400"><a class="btn btn-primary" href="/settings/founder">Change Settings</a> </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- [ Main Content ] end -->
@endsection
