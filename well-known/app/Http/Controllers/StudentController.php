<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use PHPMailer\PHPMailer\PHPMailer;

class StudentController extends Controller
{
    //
    function factoryPassword($uid)
    {
        $user=User::where('email',$uid)->first();
        $newPass=str()->random(8);
        $user->password=Hash::make($newPass);
        $user->save();
        $mailer=new PHPMailer();
        $mailer->Body='Your password was reset.Your email is '.$user->email.' and your password is '.$newPass.'. Log in at https://portal.clevers.co.ke';
        $mailer->Subject='Password Reset';
        $mailer->setFrom('admin@clevers.ac.ke','Clevers Schools');
        $mailer->addAddress($user->email);
        $mailer->send();
        $mailer->clearAddresses();
        $mailer->clearAllRecipients();
        return back()->with(['type'=>'success','message'=>'New credentials sent to the student email','title'=>'Password Reset Successfully']);
    }

    function activateStudent($id)
    {
        Student::whereId($id)->update(['status' => 'Active']);
        return back();
    }
    function deleteStudent($id)
    {
       Student::whereId($id)->update(['status' => 'Inactive']);
       return back();
    }
    function studentDetails($id)
    {
        return view('pages.students_details',['student'=>Student::find($id)]);
    }
}
