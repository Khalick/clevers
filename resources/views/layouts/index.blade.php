<!doctype html>
<html class="no-js" lang="zxx">
@include('partials.head')



<body class="body__wrapper">
@include('partials.preloader')

@include('partials.switcher')


    <main class="main_wrapper overflow-hidden">

        @include('partials.topbar')
        @include('partials.header')
        @include('partials.mobile_menu')
        @yield('content')
        @include('partials.footer')
    </main>




@include('partials.scripts')
@stack('extra')
@if(session('message'))
    <script>
        Swal.fire("{{session('title')}}","{{session('message')}}","{{session('type')}}")
    </script>
@endif


</body>

</html>
