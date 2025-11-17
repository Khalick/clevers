@extends('layouts.main')
@section('header')
    <!-- [ breadcrumb ] start -->
    <div class="page-header">
        <div class="page-block">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-auto">
                    <div class="page-header-title">
                        <h5 class="mb-0">{{$student->regNumber}} =>{{$student->firstName}}</h5>
                    </div>
                </div>
                <div class="col-sm-auto">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/"><i class="ph-duotone ph-house"></i></a></li>
                        <li class="breadcrumb-item"><a href="javascript: void(0)">Students</a></li>
                        <li class="breadcrumb-item" aria-current="page">Student Details</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- [ breadcrumb ] end -->
@endsection

@section('content')
    <div class="text-end">
        <button type="button" onclick="printDetails()" class="btn btn-danger">Print</button>
    </div>
   <div class="row d-flex justify-content-evenly" id="section-to-print">
       <div class="col-md-6">
           <div class="card">
               <div class="card-header">
                   <h4 class="card-title">
                       General Details
                   </h4>
               </div>
               <div class="card-body">
                   <div class="table-responsive">
                       <table class="table table-bordered">
                           <tbody>
                           <tr>
                               <td class="fw-bold">
                                   Registration Number
                               </td>
                               <td>
                                   {{$student->regNumber}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   First Name
                               </td>
                               <td>
                                   {{$student->firstName}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Middle Name
                               </td>
                               <td>
                                   {{$student->middleName}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Last Name
                               </td>
                               <td>
                                   {{$student->lastName}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Date Of Birth
                               </td>
                               <td>
                                   {{$student->dateOfBirth}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Gender
                               </td>
                               <td>
                                   {{$student->gender}}
                               </td>
                           </tr>
                           </tbody>
                       </table>
                   </div>
               </div>
           </div>
       </div>
       <div class="col-md-6">
           <div class="card">
               <div class="card-header">
                   <h4 class="card-title">
                       Contact Details
                   </h4>
               </div>
               <div class="card-body">
                   <div class="table-responsive">
                       <table class="table table-bordered">
                           <tbody>
                           <tr>
                               <td class="fw-bold">
                                   Phone Number
                               </td>
                               <td>
                                   {{$student->phone}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Email Address
                               </td>
                               <td>
                                   {{$student->email}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   County
                               </td>
                               <td>
                                   {{$student->county}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                  Place Of Residence
                               </td>
                               <td>
                                   {{$student->residence}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Religion
                               </td>
                               <td>
                                   {{$student->religion}}
                               </td>
                           </tr>
                           </tbody>
                       </table>
                   </div>
               </div>
           </div>
       </div>
       <div class="col-md-6">
           <div class="card">
               <div class="card-header">
                   <h4 class="card-title">
                       Next Of Kin Details
                   </h4>
               </div>
               <div class="card-body">
                   <div class="table-responsive">
                       <table class="table table-bordered">
                           <thead class="thead-dark">
                           <tr>
                               <th>
                                   Father's Name
                               </th>
                               <th>
                                   Father's Email
                               </th>
                               <th>
                                   Father's Phone
                               </th>
                           </tr>
                           </thead>
                           <tbody>
                           <tr>
                               <td>
                                   {{$student->fatherName}}
                               </td>
                               <td>
                                   {{$student->fatherEmail}}
                               </td>
                               <td>
                                   {{$student->fatherPhone}}
                               </td>
                           </tr>
                           </tbody>
                           <thead class="thead-dark">
                           <tr>
                               <th>
                                   Mother's Name
                               </th>
                               <th>
                                   Mother's Email
                               </th>
                               <th>
                                   Mother's Phone
                               </th>
                           </tr>
                           </thead>
                           <tbody>
                           <tr>
                               <td>
                                   {{$student->motherName}}
                               </td>
                               <td>
                                   {{$student->motherEmail}}
                               </td>
                               <td>
                                   {{$student->motherPhone}}
                               </td>
                           </tr>
                           </tbody>
                           <thead class="thead-dark">
                           <tr>
                               <th>
                                   Next of Kin's Name
                               </th>
                               <th>
                                   Next of Kin's Email
                               </th>
                               <th>
                                   Next of Kin's Phone
                               </th>
                           </tr>
                           </thead>
<tbody>
                           <tr>
                               <td>
                                   {{$student->nokName}}
                               </td>
                               <td>
                                   {{$student->nokEmail}}
                               </td>
                               <td>
                                   {{$student->nokPhone}}
                               </td>
                           </tr>
                           </tbody>
                       </table>
                   </div>
               </div>
           </div>
       </div>
       <div class="col-md-6">
           <div class="card">
               <div class="card-header">
                   <h4 class="card-title">
                       Medical History
                   </h4>
               </div>
               <div class="card-body">
                  <p>
                      Student has a medical condition? <span class="fw-bold">{{$student->history}}</span>
                  </p>
                   <h6>The condition</h6>
                   <p>
                       {{$student->condition}}
                   </p>
               </div>
           </div>
       </div>
       <div class="col-md-6">
           <div class="card">
               <div class="card-header">
                   <h4 class="card-title">
                       Fee Payment Details
                   </h4>
               </div>
               <div class="card-body">
                   <div class="table-responsive">
                       <table class="table table-bordered">
                           <tbody>
                           <tr>
                               <td class="fw-bold">
                                   Who is Paying
                               </td>
                               <td>
                                   {{$student->feePayer}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Name
                               </td>
                               <td>
                                   {{$student->payerName}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Phone
                               </td>
                               <td>
                                   {{$student->payerPhone}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Relationship
                               </td>
                               <td>
                                   {{$student->payerRelation}}
                               </td>
                           </tr>
                           </tbody>
                       </table>
                   </div>
               </div>
           </div>
       </div>
       <div class="col-md-6">
           <div class="card">
               <div class="card-header">
                   <h4 class="card-title">
                       Education Background
                   </h4>
               </div>
               <div class="card-body">
                   <div class="table-responsive">
                       <table class="table table-bordered">
                           <tbody>
                           <tr>
                               <td class="fw-bold">
                                   HIGHEST LEVEL OF EDUCATION
                               </td>
                               <td>
                                   {{$student->education}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   GRADE ATTAINED
                               </td>
                               <td>
                                   {{$student->grade}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   SCHOOL NAME
                               </td>
                               <td>
                                   {{$student->school}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   YEAR
                               </td>
                               <td>
                                   {{$student->schoolYear}}
                               </td>
                           </tr>

                           </tbody>
                       </table>
                   </div>
               </div>
           </div>
       </div>
       <div class="col-md-6">
           <div class="card">
               <div class="card-header">
                   <h4 class="card-title">
                       Course Details
                   </h4>
               </div>
               <div class="card-body">
                   <div class="table-responsive">
                       <table class="table table-bordered">
                           <tbody>
                           <tr>
                               <td class="fw-bold">
                                   Course
                               </td>
                               <td>
                                   {{\App\Models\Course::find($student->course)->title}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Department
                               </td>
                               <td>
                                   {{$student->department}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Examiner
                               </td>
                               <td>
                                   {{$student->examiners[0]}}
                               </td>
                           </tr>
                           <tr>
                               <td class="fw-bold">
                                   Study Mode
                               </td>
                               <td>
                                   {{$student->mode}}
                               </td>
                           </tr>

                           </tbody>
                       </table>
                   </div>
               </div>
           </div>
       </div>
   </div>

@endsection

@push('extra')
    <script src="{{asset('assets/js/plugins/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/dataTables.bootstrap5.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.colVis.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.print.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/pdfmake.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/jszip.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/vfs_fonts.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.html5.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/buttons.bootstrap5.min.js')}}"></script>

   <script>
       function printDetails() {
           window.print()
       }
   </script>
@endpush

