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
                        <li class="breadcrumb-item"><a href="/units">Units</a></li>
                        <li class="breadcrumb-item" aria-current="page">New Unit</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <form method="post" action="/units/create">
                @csrf
                <div class="card">
                    <div class="card-header">
                        <h5 class="text-danger">
                            <i class="ph-duotone ph-book-open me-2"></i>Add New Unit/Subject
                        </h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="mb-4 col-md-6">
                                <label for="name" class="form-label">
                                    Unit/Subject Name <span class="text-danger">*</span>
                                </label>
                                <input class="form-control" name="name" id="name" type="text" maxlength="255" required placeholder="e.g., Mathematics, English, Computer Science">
                            </div>

                            <div class="mb-4 col-md-6">
                                <label for="course_id" class="form-label">
                                    Course <span class="text-danger">*</span>
                                </label>
                                <select required id="course_id" class="form-control form-select" name="course_id">
                                    <option value="">Select Course</option>
                                    @php
                                        $courses = \App\Models\Course::where('status', 'Active')->orderBy('title')->get();
                                    @endphp
                                    @foreach($courses as $course)
                                        <option value="{{$course->id}}">{{$course->title}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="mb-4 col-md-6">
                                <label for="department_id" class="form-label">
                                    Department
                                </label>
                                <select id="department_id" class="form-control form-select" name="department_id">
                                    <option value="">Select Department</option>
                                    @php
                                        $departments = \App\Models\Category::all();
                                    @endphp
                                    @foreach($departments as $dept)
                                        <option value="{{$dept->id}}">{{$dept->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="mb-4 col-md-6">
                                <label for="teacher_id" class="form-label">
                                    Assigned Teacher
                                </label>
                                <select id="teacher_id" class="form-control form-select" name="teacher_id">
                                    <option value="">Not Assigned</option>
                                    @php
                                        $teachers = \App\Models\Teacher::orderBy('name')->get();
                                    @endphp
                                    @foreach($teachers as $teacher)
                                        <option value="{{$teacher->id}}">{{$teacher->name}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="mb-4 col-md-12">
                                <label for="icon" class="form-label">
                                    Icon Class <small class="text-muted">(Optional - e.g., ph-duotone ph-calculator)</small>
                                </label>
                                <input class="form-control" name="icon" id="icon" type="text" maxlength="255" placeholder="ph-duotone ph-book">
                                <small class="text-muted">Visit <a href="https://phosphoricons.com/" target="_blank" class="text-danger">Phosphor Icons</a> for icon codes</small>
                            </div>

                            <div class="col-md-12 mb-3">
                                <h6 class="text-danger">Grading Structure (Percentage)</h6>
                                <small class="text-muted">Define the weight of each assessment type. Total should equal 100%</small>
                            </div>

                            <div class="mb-4 col-md-4">
                                <label for="cat1" class="form-label">
                                    CAT 1 (%)
                                </label>
                                <input class="form-control" name="cat1" id="cat1" type="number" step="0.01" min="0" max="100" placeholder="e.g., 15">
                            </div>

                            <div class="mb-4 col-md-4">
                                <label for="cat2" class="form-label">
                                    CAT 2 (%)
                                </label>
                                <input class="form-control" name="cat2" id="cat2" type="number" step="0.01" min="0" max="100" placeholder="e.g., 15">
                            </div>

                            <div class="mb-4 col-md-4">
                                <label for="exams" class="form-label">
                                    Exams (%)
                                </label>
                                <input class="form-control" name="exams" id="exams" type="number" step="0.01" min="0" max="100" placeholder="e.g., 70">
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-end">
                        <a href="/units" class="btn btn-secondary">
                            <i class="ph-duotone ph-x"></i> Cancel
                        </a>
                        <button type="submit" class="btn btn-danger">
                            <i class="ph-duotone ph-check"></i> Save Unit
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>

@endsection

@push('extra')
    <script>
        // Validate total percentage
        document.querySelector('form').addEventListener('submit', function(e) {
            const cat1 = parseFloat(document.getElementById('cat1').value) || 0;
            const cat2 = parseFloat(document.getElementById('cat2').value) || 0;
            const exams = parseFloat(document.getElementById('exams').value) || 0;
            const total = cat1 + cat2 + exams;
            
            if (total > 0 && total !== 100) {
                e.preventDefault();
                alert('Warning: Grading percentages total ' + total + '%. It should equal 100% for proper grading.');
                return false;
            }
        });
    </script>
@endpush
