<?php

namespace App\Http\Controllers;

use App\Models\Applicant;
use App\Models\Career;
use App\Models\Comment;
use App\Models\Course;
use App\Models\EmailList;
use App\Models\Event;
use App\Models\Intake;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use PHPMailer\PHPMailer\PHPMailer;

class MainController extends Controller
{
    //
    function subscribe(Request $request)
    {
EmailList::create([
    'email' => $request->email,
]);
return back()->with(['type'=>'success','message'=>'You have been subscribed']);
    }
    function contactSend(Request $request)
    {
        $name = strip_tags(trim($request->name));
        $name = str_replace(array("\r","\n"),array(" "," "),$name);
        $email = filter_var(trim($request->email), FILTER_SANITIZE_EMAIL);
        $message = trim($request->message);

        // Check that data was sent to the mailer.
        if ( empty($name) OR empty($message) OR !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            // Set a 400 (bad request) response code and exit.
            http_response_code(400);
            echo "Please complete the form and try again.";
            exit;
        }

        // Set the recipient email address.
        $recipient = "info@clevers.co.ke";

        // Set the email subject.
        $subject = "RE:".$request->subject;

        // Build the email content.
        $email_content = "Name: $name\n";
        $email_content .= "Email: $email\n\n";
        $email_content .= "Phone:\n$request->phone\n";
        $email_content .= "Message:\n$message\n";

        // Build the email headers.
        $email_headers = "From: $name <$email>";

        if (mail($recipient, $subject, $email_content, $email_headers)) {
            // Set a 200 (okay) response code.
            http_response_code(200);
            echo "Thank You! Your message has been sent.";
        } else {
            // Set a 500 (internal server error) response code.
            http_response_code(500);
            echo "Oops! Something went wrong and we couldn't send your message.";
        }

    }
    function loginUser(Request $request)
    {
        if (auth()->attempt($request->only('email', 'password'))) {
            if (!empty($_GET['after'])){
                return redirect('/'.$_GET['after']);
            }
            return redirect('/');
        }
        return back()->with(['type'=>'error','message'=>'Invalid Credentials','title'=>'Login Failed']);

    }
    function submitApplication(Request $request)
    {

        $passports=[];
        $ids=[];
        $slip=null;
        if ($request->file('slip')!=null){
            $slip=$request->file('slip')->store('slips','public');
        }

        if ($request->passport!=null) {
            foreach ($request->passport as $passport) {
                $passports[] = $passport->store('passports', 'public');
            }
        }
        if ($request->id!=null){
        foreach ($request->id as $id){
            $ids[]=$id->store('idcards','public');
        }
        }
    Applicant::create([
        'dateOfBirth' => Carbon::createFromFormat('Y-m-d',$request->dob),
        'firstName'=>$request->fname,
        'middleName'=>$request->mname==null?'N/A':$request->mname,
        'lastName'=>$request->lname,
        'email'=>$request->email,
        'phone'=>$request->phone,
        'idNumber'=>$request->idNo,
        'gender'=>$request->gender,
        'religion'=>$request->religion,
        'county'=>$request->county,
        'residence'=>$request->residence,
        'history'=>$request->history,
        'condition'=>$request->condition,
        'fatherName'=>$request->father,
        'motherName'=>$request->mother,
        'fatherPhone'=>$request->fatherPhone,
        'motherPhone'=>$request->motherPhone,
        'fatherEmail'=>$request->fatherEmail,
        'motherEmail'=>$request->motherEmail,
        'nokName'=>$request->nokName,
        'nokPhone'=>$request->nokPhone,
        'nokEmail'=>$request->nokEmail,
        'payerName'=>$request->feePayerName,
        'payerPhone'=>$request->feePayerPhone,
        'payerRelation'=>$request->feePayerRelationShip,
        'education'=>$request->education,
        'grade'=>$request->grade,
        'school'=>$request->school,
        'schoolYear'=>$request->year,
        'course'=>$request->course,
        'intake'=>Intake::where('status','Active')->first()->id,
        'feePayer'=>$request->feePayer,
        'mode'=>$request->mode,
        'examiners'=>[$request->examiner],
        'passport'=>$passports,
        'nationalId'=>$ids,
        'slip'=>$slip,
        'department'=>Course::find($request->course)->category,
        'others'=>$request->units ? $request->units : [],
    ]);
        return redirect('/courses')->with(['type'=>'success','message'=>'We will contact you via email with further details','title'=>'Your application has been submitted']);
    }
    function counties()
    {
return \Response::json(['Nairobi','Nyandarua','Nyeri','Kirinyaga','Murang`a','Kiambu',
    'Mombasa','Kwale','Kilifi','Tana River','Lamu','Taita Taveta',
    'Garissa','Wajir','Mandera',
    'Marsabit','Isiolo','Meru','Tharaka-Nithi','Embu','Kitui','Machakos','Makueni',
    'Turkana','West Pokot','Samburu','Trans Nzoia','Uasin Gishu','Elgeyo Marakwet','Nandi','Baringo','Laikipia',
    'Nakuru','Narok','Kajiado','Kericho','Bomet',
    'Siaya','Kisumu','Homa Bay','Migori','Kisii','Nyamira',
    'Kakamega','Vihiga','Bungoma','Busia']);
    }
    
    function getCourseUnits($courseId)
    {
        $units = \App\Models\Unit::where('course_id', $courseId)->get(['id', 'name']);
        return \Response::json($units);
    }
    function apply($id)
    {
       return view('pages.apply',['course'=>Course::find($id)]);
    }
    function courseDetails($id)
    {
        return view('pages.course_details',['course' => Course::find($id)]);

    }
    function jobDetails($id)
    {
        $job=Career::find($id);
        return view('pages.job_details',['job' => $job]);
    }
    function eventDetails($id)
    {
        $event=Event::find($id);
       return view('pages.event_details',['event'=>$event]);
    }
    function writeComments(Request $request)
    {
        $user=User::where('email',$request->email)->first();
        $userId = $user?->id;
        Comment::create([
            'comment'=>$request->message,
            'userId'=>$userId,
            'userName'=>$request->name,
            'email'=>$request->email,
            'postId'=>$request->postId,
        ]);
        return back();
    }
    function blogDetails($data)
    {
        return view('pages.blog_details',['blog'=>$data]);
    }

    function messageFromBlog(Request $request)
    {
        $mailer=new PhpMailer();
        $mailer->setFrom('blog@clevers.co.ke', $request->name);
        $mailer->addAddress('blog@clevers.co.ke');
        $mailer->Body=$request->email.'=>'.$request->message;
        $mailer->Subject='Feedback From '.$request->name;
        $mailer->send();
        $mailer->clearAddresses();
        $mailer->clearAllRecipients();
        return back()->with(['type'=>'success','title'=>'Sent','message'=>'We will get back to you shortly']);
    }
}
