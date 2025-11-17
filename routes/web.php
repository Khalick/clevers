<?php

use App\Http\Controllers\MainController;
use App\Models\Gallery;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('pages.home');
});
Route::get('/founder', function () {
    return view('pages.founder');
});
Route::get('/history', function () {
    return view('pages.history');
});
Route::get('/mission', function () {
    return view('pages.mission');
});
Route::get('/governance', function () {
    return view('pages.governance');
});
Route::get('/partners', function () {
    return view('pages.partners');
});
Route::get('/campuses', function () {
    return view('pages.campuses');
});
Route::get('/courses', function () {
    return view('pages.courses');
});
Route::get('/library', function () {
    return view('pages.library');
});
Route::get('/exams', function () {
    return view('pages.exams');
});
Route::get('/facilities', function () {
    return view('pages.facilities');
});
Route::get('/calendar', function () {
    return view('pages.calendar');
});
Route::get('/applications/new', function () {
    return view('pages.new_applications');
});
Route::get('/kcse', function () {
    return view('pages.kcse');
});
Route::get('/igcse', function () {
    return view('pages.igcse');
});
Route::get('/aas', function () {
    return view('pages.aas');
});
Route::get('/languages', function () {
    return view('pages.languages');
});
Route::get('/fees', function () {
    return view('pages.fees');
});
Route::get('/international', function () {
    return view('pages.international');
});
Route::get('/accommodation', function () {
    return view('pages.accommodation');
});
Route::get('/life', function () {
    return view('pages.life');
});
Route::get('/news', function () {
    return view('pages.news');
});
Route::get('/pastpapers', function () {
    if (!auth()->check()) {
        return redirect('/login?after=pastpapers');
    }
    return view('pages.papers');
});
Route::get('/login', function () {
    return view('pages.login');
});
Route::get('/downloads', function () {
    return view('pages.downloads');
});
Route::get('/career', function () {
    return view('pages.career');
});
Route::get('/accounting', function () {
    return view('pages.accounting');
});
Route::get('/contact', function () {
    return view('pages.contact');
});
Route::get('/virtual', function () {
    return view('pages.gallery');
});
Route::get('/gallery/like/{id}', function ($id) {
    Gallery::find($id)->increment('likes');
    return back();
});
Route::get('/events/details/{id}',[MainController::class,'eventDetails']);
Route::get('/counties',[MainController::class,'counties']);
Route::get('/course/apply/{id}',[MainController::class,'apply']);
Route::get('/jobs/details/{id}',[MainController::class,'jobDetails']);
Route::get('/blog/details/{data}',[MainController::class,'blogDetails']);
Route::get('/course/details/{id}',[MainController::class,'courseDetails']);
Route::post('/blog/message',[MainController::class,'messageFromBlog']);
Route::post('/comments/write',[MainController::class,'writeComments']);
Route::post('/applications/new',[MainController::class,'submitApplication']);
Route::post('/login',[MainController::class,'loginUser']);
Route::post('/contact/email',[MainController::class,'contactSend']);
Route::post('/mail/subscribe',[MainController::class,'subscribe']);
