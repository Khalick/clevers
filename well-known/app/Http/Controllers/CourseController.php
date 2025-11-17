<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CourseController extends Controller
{
    //
    function editCourse(Request $request)
    {
       $course = Course::find($request->courseId);
       if ($request->code!=null){
           $course->code = $request->code;
       }
        if ($request->title!=null){
            $course->title = $request->title;
        }
        if ($request->description!=null){
            $course->description = $request->description;
        }
        if ($request->duration!=null){
            $course->duration = $request->duration;
        }

        if ($request->lecs!=null){
            $course->lecs = $request->lecs;
        }
        if ($request->certificate!=null){
            $course->certificate = $request->certificate;
        }
        if ($request->fees!=null){
            $course->fees = $request->fees;
        }
        if ($request->grade!=null){
            $course->grade = $request->grade;
        }
        if ($request->video!=null){
            $course->video = $request->video;
        }
        if ($request->category!=null){
            $course->category = $request->category;
        }
        if ($request->filepond!=null){
            $preview=json_decode($request->filepond,true);
            $preview=$preview['path'];
            $course->preview=$preview;
        }
        if ($request->curriculum!=null){
            $curriculum=json_decode($request->curriculum,true);
            $curriculum=$curriculum['path'];
            $course->curriculum=$curriculum;
        }
        $course->save();
        if ($course->category=='Accounting'){
            return redirect('/accounting');
        }
        return redirect('/listing');
    }
    function editC($id)
    {
        return view('pages.edit_course',['course'=>Course::find($id)]);
    }
    function deleteC($id)
    {
       Course::whereId($id)->update(['status' => 'Deleted']);
       return back();
    }
    function departmentCourses($department)
    {
        $department=Category::find($department);
        return \Response::json(Course::where('category',$department->name)->get());
    }
    function deactivate($id)
    {

        Course::whereId($id)
            ->update(['status'=>'Inactive']);
        return back()->with(['type'=>'success','message'=>'Course Deactivated','title'=>'Success']);
    }
    function activateC($id)
    {

        Course::whereId($id)
            ->update(['status'=>'Active']);
        return back()->with(['type'=>'success','message'=>'Course Activated','title'=>'Success']);
    }
    function createCourse(Request $request)
    {
        $preview=json_decode($request->filepond,true);
        $preview=$preview['path'];
        $curriculum=json_decode($request->curriculum,true);
        $curriculum=$curriculum['path'];
  Course::create(['title'=>$request->title,
            'description'=>$request->description,
            'status'=>'Active',
            'duration'=>$request->duration,
            'lecs'=>$request->lecs,
            'fees'=>$request->fees,
            'certificate'=>$request->certificate,
            'preview'=>$preview,
            'video'=>$request->video,
            'curriculum'=>$curriculum,
            'grade'=>$request->grade,
            'code'=>$request->code,
            'category'=>$request->category]);
if ($request->category=='Accounting'){
    return redirect('/accounting')->with(['type'=>'success','message'=>'Course Created And Activated','title'=>'Success']);

}
  return redirect('/listing')->with(['type'=>'success','message'=>'Course Created And Activated','title'=>'Success']);

    }
    function uploadTaskFile(Request $request): ?JsonResponse
    {
        $files=$request->allFiles();
        if (empty($files)){
            abort(422,"No files selected");
        }

        $requestKey = array_key_first($files);
        $file = is_array($request->input($requestKey))
            ? $request->file($requestKey)[0]
            : $request->file($requestKey);

        $path=$file->store("tasks",'public');

        return response()->json(["path"=>$path]);

    }

    function removeTaskFile(Request $request)
    {
        Log::error(json_encode($request->all()));
    }
}
