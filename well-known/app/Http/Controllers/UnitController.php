<?php

namespace App\Http\Controllers;

use App\Models\Unit;
use App\Models\Course;
use Illuminate\Http\Request;

class UnitController extends Controller
{
    public function createUnit(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'course_id' => 'required|exists:courses,id',
            'teacher_id' => 'nullable|exists:teachers,id',
            'department_id' => 'nullable|integer',
            'icon' => 'nullable|string',
            'cat1' => 'nullable|numeric',
            'cat2' => 'nullable|numeric',
            'exams' => 'nullable|numeric',
        ]);

        Unit::create($request->all());

        return redirect('/units')->with([
            'type' => 'success',
            'message' => 'Unit Created Successfully',
            'title' => 'Success'
        ]);
    }

    public function deleteUnit($id)
    {
        Unit::destroy($id);
        
        return back()->with([
            'type' => 'success',
            'message' => 'Unit Deleted Successfully',
            'title' => 'Success'
        ]);
    }

    public function editUnit($id)
    {
        $unit = Unit::find($id);
        return view('pages.edit_unit', ['unit' => $unit]);
    }

    public function updateUnit(Request $request)
    {
        $request->validate([
            'unit_id' => 'required|exists:units,id',
            'name' => 'required|string|max:255',
            'course_id' => 'required|exists:courses,id',
            'teacher_id' => 'nullable|exists:teachers,id',
            'department_id' => 'nullable|integer',
            'icon' => 'nullable|string',
            'cat1' => 'nullable|numeric',
            'cat2' => 'nullable|numeric',
            'exams' => 'nullable|numeric',
        ]);

        $unit = Unit::find($request->unit_id);
        $unit->update($request->except('unit_id'));

        return redirect('/units')->with([
            'type' => 'success',
            'message' => 'Unit Updated Successfully',
            'title' => 'Success'
        ]);
    }

    public function getCourseUnits($courseId)
    {
        $units = Unit::where('course_id', $courseId)->with('teacher')->get();
        return response()->json($units);
    }
}
