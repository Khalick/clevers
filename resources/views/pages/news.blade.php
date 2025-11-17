@extends('layouts.index')
@section('title')
    News and Blog
@endsection
@section('content')
        <div class="breadcrumbarea" style="background: url('{{asset('img/herobanner/university_2.jpg')}}')">

            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb__content__wraper" data-aos="fade-up">
                            <div class="breadcrumb__title">
                                <h2 class="heading">News and Blog</h2>
                            </div>
                            <div class="breadcrumb__inner">
                                <ul>
                                    <li><a href="/">Home</a></li>
                                    <li>News and Blog</li>
                                </ul>
                            </div>
                        </div>



                    </div>
                </div>
            </div>

            <div class="shape__icon__2">
                <img loading="lazy"  class=" shape__icon__img shape__icon__img__1" src="img/herobanner/herobanner__1.png" alt="photo">
                <img loading="lazy"  class=" shape__icon__img shape__icon__img__2" src="img/herobanner/herobanner__2.png" alt="photo">
                <img loading="lazy"  class=" shape__icon__img shape__icon__img__3" src="img/herobanner/herobanner__3.png" alt="photo">
                <img loading="lazy"  class=" shape__icon__img shape__icon__img__4" src="img/herobanner/herobanner__5.png" alt="photo">
            </div>

        </div>
        <!-- breadcrumbarea__section__end-->

        <div class="blogarea__2 sp_top_100 sp_bottom_100">
            <div class="container">
                <div class="row">
                    @php
                        $blogs=\App\Models\Blog::query();
                        if (!empty($_GET['c'])){
                            $blogs=$blogs->where('category',$_GET['c']);
                        }
                        if (!empty($_GET['search'])){
                            $blogs=$blogs->where('title','like','%'.$_GET['search'].'%')
                            ->orWhere('content','like','%'.$_GET['search'].'%');
                        }
                        $blogs=$blogs->paginate(10);
                    @endphp

                    <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                        @foreach($blogs as $blog)
                        <div class="blog__content__wraper__2" data-aos="fade-up">
                            <div class="blogarae__img__2">
                                <img loading="lazy" width="770" height="498" src="https://admin.clevers.co.ke/storage/{{$blog->banner}}" alt="blog">
                                <div class="blogarea__date__2">
                                    <span>{{date('d',strtotime($blog->created_at))}}</span>
                                    <span class="blogarea__month">{{date('M',strtotime($blog->created_at))}}</span>
                                </div>
                            </div>
                            <div class="blogarea__text__wraper__2">
                                <div class="blogarea__heading__2">
                                    <h3><a href="/blog/details/{{base64_encode($blog)}}">{{$blog->title}}</a></h3>
                                </div>
                                <div class="blogarea__list__2">
                                    <ul>
                                        <li>
                                            <a href="/blog/details/{{base64_encode($blog)}}">
                                                <i class="icofont-business-man-alt-2"></i> {{$blog->poster}}
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/blog/details/{{base64_encode($blog)}}">
                                                <i class="icofont-speech-comments"></i> {{\App\Models\Comment::where('postId',$blog->id)->where('isReply',false)->count()}}Comments
                                            </a>
                                        </li>

                                        <li>
                                            <a href="/blog/details/{{base64_encode($blog)}}">
                                                <i class="icofont-eraser-alt"></i> {{$blog->category}}
                                            </a>
                                        </li>

                                    </ul>
                                </div>
                                <div class="blogarea__paragraph">
                                    <p> {{$blog->description}}</p>
                                </div>
                                <div class="blogarea__button__2">
                                    <a href="/blog/details/{{base64_encode($blog)}}">READ MORE
                                <i class="icofont-double-right"></i>
                            </a>
                                    <a href="#">
                                        <div class="blogarea__icon__2">
                                            <i class="icofont-share"></i>
                                            <i class="icofont-heart"></i>
                                        </div>
                                    </a>
                                </div>
                            </div>


                        </div>
                        @endforeach
{{$blogs->links()}}
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
