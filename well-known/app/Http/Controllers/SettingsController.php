<?php

namespace App\Http\Controllers;

use App\Models\AboutSection;
use App\Models\Founder;
use App\Models\HomeArt;
use App\Models\HomeSports;
use App\Models\HomeWellness;
use App\Models\Slider;
use App\Models\Testimonial;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
    //
    function founderMessage(Request $request)
    {
       $founder = Founder::firstOrNew();
       if ($request->breadcrumb !=null){
           $founder->breadcrumb = $request->file('breadcrumb')->store('breadcrumbs','public');
       }
        if ($request->founder !=null){
            $founder->founder = $request->file('founder')->store('founder','public');
        }
        if ($request->bigText !=null){
            $founder->title = $request->bigText;
        }
        if ($request->side !=null){
            $founder->description = $request->side;
        }
        if ($request->main !=null){
            $founder->content = $request->main;
        }
        $founder->save();
        return back();
    }
    function deleteTestimonial($id)
    {
        Testimonial::destroy($id);
        return back();

    }
    function addTestimonial(Request $request)
    {
      Testimonial::create(['name'=>$request->heading,
          'profession'=>$request->bigText,
          'avatar'=>$request->avatar,
          'message'=>$request->message,
          'stars'=>$request->stars]);
      return back();
    }
    function changeSports(Request $request){
        $wellness=HomeSports::firstOrNew();
        if ($request->heading !=null){
            $wellness->title=$request->heading;
        }
        if ($request->bigText !=null){
            $wellness->description=$request->bigText;
        }
        if ($request->image !=null){
            $wellness->image=$request->file('image')->store('sports','public');
        }
        $wellness->save();
        return back();
    }
    function changeArt(Request $request){
        $wellness=HomeArt::firstOrNew();
        if ($request->heading !=null){
            $wellness->title=$request->heading;
        }
        if ($request->bigText !=null){
            $wellness->description=$request->bigText;
        }
        if ($request->image !=null){
            $wellness->image=$request->file('image')->store('art','public');
        }
        $wellness->save();
        return back();
    }
    function changeWellness(Request $request){
      $wellness=HomeWellness::firstOrNew();
      if ($request->heading !=null){
          $wellness->title=$request->heading;
      }
      if ($request->bigText !=null){
          $wellness->description=$request->bigText;
      }
      if ($request->image !=null){
         $wellness->image=$request->file('image')->store('wellness','public');
      }
      $wellness->save();
      return back();
    }

    function aboutSection(Request $request)
    {
       $about=AboutSection::firstOrNew();

       if ($request->heading!=null){
           $about->title=$request->heading;
       }
        if ($request->bigText!=null){
            $about->content=$request->bigText;
        }
        if ($request->file('image1')!=null){
            $about->image1=$request->file('image1')->store('abouts','public');
        }
        if ($request->file('image2')!=null){
            $about->image2=$request->file('image2')->store('abouts','public');
        }
        $about->save();
        return back();


    }
    function addSlider(Request $request)
    {
      Slider::create(['bigText'=>$request->bigText,
          'heading'=>$request->heading,
          'image'=>$request->file('image')->store('sliders','public'),]);
      return back();
    }

    function removeSlider($id)
    {
        Slider::destroy($id);
        return back();
    }
}
