<?php

namespace App\Http\Controllers;

use App\Models\Applicant;
use Illuminate\Http\Request;

class Navigator extends Controller
{
    //
    function founderSettings()
    {
      return view('pages.founder_message');
    }
    function accounting()
    {
      return view('pages.accounting');
    }
    function homeSettings()
    {
        return view('pages.homesettings');
    }
    function staff()
    {
        return view('pages.staff');
    }
    function students()
    {
       return view('pages.students');
    }
    function applicationDetails(int $id)
    {
      return view('pages.application_details',['application'=>Applicant::find($id)]);
    }
    function applications()
    {
      return view('pages.applications');
    }
    function modes()
    {
      return view('pages.modes');
    }
    function examiners()
    {
        return view('pages.examiners');
    }
    function intakes()
    {
      return view('pages.intakes');
    }
    function gallery()
    {
       return view('pages.gallery');
    }
    function newCareer()
    {
        return view('pages.new_career');
    }
    function careers()
    {
      return view('pages.careers')  ;
    }
    function pastPapers()
    {
        return view('pages.pastpapers');
    }
    function downloads()
    {
        return view('pages.downloads');
    }
    function semesters()
    {
return view('pages.semesters');
    }
    function teachers()
    {
      return view('pages.teachers');
    }
    function newTeacher()
    {
        return view('pages.new_teacher');
    }
    function newBlog()
    {
        return view('pages.new_blog');
    }
    function blogs()
    {
        return view('pages.blog');
    }
    function newEvent()
    {
        return view('pages.new_event');
    }
    function events()
    {
        return view('pages.events');
    }
    function passwordReset(string $token)
    {
        return view('pages.reset_password',['token'=>$token]);

    }
    function requestPage()
    {
        return view('pages.forgot_password');
    }
    function loginPage()
    {
     return view('pages.login');
    }
    function dashboard()
    {
        return view('pages.dashboard');
    }
    function newCourse()
    {
        return view('pages.new_course');
    }
    function categories()
    {
       return view('pages.categories');
    }

    function courses()
    {
       return view('pages.listing');
    }
    
    function units()
    {
        return view('pages.units');
    }
    
    function newUnit()
    {
        return view('pages.new_unit');
    }
}
