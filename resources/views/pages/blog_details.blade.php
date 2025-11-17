@extends('layouts.index')
@php
$blog=(object)json_decode(base64_decode($blog),true);
\App\Models\Blog::whereId($blog->id)->increment('views')
 @endphp
@section('title')
    {{$blog->title}}
@endsection
    @section('content')

        <div class="breadcrumbarea" style="background: url('{{asset('img/herobanner/university_2.jpg')}}')">

            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb__content__wraper" data-aos="fade-up">
                            <div class="breadcrumb__title">
                                <h2 class="heading">{{$blog->title}}</h2>
                            </div>

                        </div>



                    </div>
                </div>
            </div>


        </div>
        <!-- breadcrumbarea__section__end-->

        <div class="blogarea__2 sp_top_100 sp_bottom_100">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                        <div class="blog__details__content__wraper">
                            <div class="blog__details__img" data-aos="fade-up">
                                <img loading="lazy" width="850" height="430"  src="https://admin.clevers.co.ke/storage/{{$blog->banner}}" alt="blog">
                            </div>
                            <div class="blog__details__content">
                                <p class="content__1" data-aos="fade-up">{{$blog->description}}
                                </p>
                                <div class="content__2" data-aos="fade-up">
                                    {!! $blog->content  !!}
                                </div>


                            </div>

                            <div class="blog__details__comment" data-aos="fade-up">
                                <div class="blog__details__comment__heading">
                                    <h5>{{\App\Models\Comment::where('postId',$blog->id)->count()}} Comments</h5>
                                </div>

                                @php $comments=\App\Models\Comment::where('postId',$blog->id)->where('isReply',false)->paginate(10); @endphp
                               @foreach($comments as $comment)
                                <div class="blog__details__comment__inner">
                                    <div class="author__img">
                                        <img loading="lazy" class="rounded" width="50"  height="50"  src="https://image.pngaaa.com/267/1721267-middle.png" alt="{{$comment->userName}}">

                                    </div>
                                    <div class="author__content">
                                        <div class="author__name">
                                            <h6><a href="#">{{$comment->userName}}</a></h6>
                                            <p>{{date('d F Y',strtotime($comment->created_at))}}</p>

                                        </div>
                                        <div class="author__text">
                                            <p>{{$comment->comment}}</p>
                                        </div>
                                    </div>
                                    <div class="author__icon">
                                        <button>
                                        <svg width="26" height="19" viewBox="0 0 26 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M5.91943 10.2031L12.1694 16.4531C13.3413 17.625 15.3726 16.8047 15.3726 15.125V12.3516C19.9819 12.5469 20.0991 13.5625 19.4351 15.8672C18.9272 17.5469 20.8413 18.9141 22.2866 17.9375C24.2788 16.5703 25.3726 14.8516 25.3726 12.3516C25.3726 6.76562 20.3726 5.67188 15.3726 5.47656V2.66406C15.3726 0.984375 13.3413 0.164062 12.1694 1.33594L5.91943 7.58594C5.17725 8.28906 5.17725 9.5 5.91943 10.2031ZM7.24756 8.875L13.4976 2.625V7.3125C18.1851 7.3125 23.4976 7.58594 23.4976 12.3516C23.4976 14.5391 22.3647 15.6328 21.2319 16.375C22.8335 11.0625 18.8491 10.4375 13.4976 10.4375V15.125L7.24756 8.875ZM0.919434 7.58594C0.177246 8.28906 0.177246 9.5 0.919434 10.2031L7.16943 16.4531C7.95068 17.2734 9.12256 17.1562 9.82568 16.4531L2.24756 8.875L9.82568 1.33594C9.12256 0.632812 7.95068 0.515625 7.16943 1.33594L0.919434 7.58594Z" fill="#121416"/>
                                        </svg>
                                    </button>
                                    </div>
                                </div>
                                @endforeach

                            </div>

                            <form method="post" action="/comments/write">
                                @csrf
                                <input type="hidden" name="postId" value="{{$blog->id}}">
                            <div class="blog__details__form" data-aos="fade-up">
                                <div class="blog__details__input__heading">
                                    <h5>Write your comment</h5>
                                </div>

                               <div class="row">
                                    <div class="col-xl-6">
                                        <div class="blog__details__input">
                                            <input type="text" name="name" required placeholder="Enter your name*">
                                        </div>
                                    </div>
                                    <div class="col-xl-6">
                                        <div class="blog__details__input">
                                            <input type="text" name="email" required placeholder="Enter your mail*">
                                        </div>
                                    </div>

                                    <div class="col-xl-12">
                                        <div class="blog__details__input">
                                            <textarea cols="30" name="message" rows="10">Enter your Massage*</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="blog__check__box">
                                    <input type="checkbox" checked="checked"> Save my name, email, and website in this browser for the next time I comment.
                                </div>
                            </div>
                            <div class="blog__details__button">
                                <button class="default__button">Post Comment</button>
                            </div>
                            </form>




                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">

                        <div class="blogsidebar__content__wraper__2" data-aos="fade-up">

                            <h4 class="sidebar__title">Search here</h4>
                            <form action="/news" method="get">
                                <div class="blogsudebar__input__area">
                                    <input type="search" name="search" placeholder="Search Posts">
                                    <button class="blogsidebar__input__icon">
                                        <i class="icofont-search-1"></i>
                                    </button>


                                </div>


                            </form>

                        </div>
                        <div class="blogsidebar__content__wraper__2" data-aos="fade-up">

                            <h4 class="sidebar__title">categories</h4>
                            <ul class="categorie__list">
                                @php
                                    $categories=\App\Models\Category::all();
                                @endphp
                                @foreach($categories as $category)
                                    <li><a href="/news?c={{$category->name}}">{{$category->name}} <span>{{\App\Models\Blog::where('category',$category->name)->count()}}</span></a></li>
                                @endforeach

                            </ul>

                        </div>

                        <div class="blogsidebar__content__wraper__2" data-aos="fade-up">

                            <h4 class="sidebar__title">Recent Posts</h4>
                            <ul class="recent__list">
                                @php $recents=\App\Models\Blog::orderBy('id','desc')->limit(5)->get(); @endphp
                                @foreach($recents as $recent)
                                    <li>
                                        <div class="recent__img">
                                            <a href="#">
                                                <img loading="lazy" width="136" height="78"  src="https://admin.clevers.co.ke/storage/{{$recent->banner}}" alt="banner">
                                                <div class="recent__number">
                                                    <span>{{$recent->views}}</span>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="recent__text">

                                            <div class="recent__date">
                                                <a href="#">{{date('d F Y',strtotime($recent->created_at))}}</a>
                                            </div>

                                            <h6><a href="/blog/details/{{base64_encode($recent)}}">{{$recent->title}} </a></h6>




                                        </div>
                                    </li>
                                @endforeach

                            </ul>

                        </div>

                        <div class="blogsidebar__content__wraper__2" data-aos="fade-up">

                            <h4 class="sidebar__title">Get in Touch</h4>
                            <form method="post" action="/blog/message">
                                @csrf
                                <div class="get__touch__input">
                                    <input type="text" name="name" required placeholder="Enter name*">
                                    <input type="text" name="email" required placeholder="Enter your mail*">
                                    <input type="text" name="message" required placeholder="Message*">
                                    <button class="default__button">SEND MESSAGE</button>
                                </div>
                            </form>

                        </div>


                        <div class="blogsidebar__content__wraper__2" data-aos="fade-up">

                            <h4 class="sidebar__title">Follow Us</h4>
                            <div class="follow__icon">
                                <ul>
                                    <li>
                                        <a href="https://www.facebook.com/cleverskenya.org"><i class="icofont-facebook"></i></a>
                                    </li>

                                    <li>
                                        <a href="https://www.youtube.com/@cleversschool8832"><i class="icofont-youtube-play"></i></a>
                                    </li>

                                    <li>
                                        <a href="#"><i class="icofont-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="https://www.instagram.com/cleverskenya?igsh=dm5vdXZ0ZGJhcHF4"><i class="icofont-instagram"></i></a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

@endsection
