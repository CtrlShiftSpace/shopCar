<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>@yield('title', 'Laravel Shop') - Luke的Laravel電商平台</title>
  <!-- 样式 -->
  <!-- <link href="{{ mix('css/app.css') }}" rel="stylesheet"> -->

  <!--Bootstrap and Other Vendors-->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/bootstrap-theme.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('vendor/laravel-admin/owl.carousel/css/owl.carousel.css') }}" rel="stylesheet">

    <link href="{{ asset('vendor/laravel-admin/lightbox/css/lightbox.css') }}" rel="stylesheet" media="screen">
    <link href="{{ asset('vendor/laravel-admin/flexslider/flexslider.css') }}" rel="stylesheet" media="screen">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('css/responsive.css') }}" rel="stylesheet">


    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/laravel-admin/lightbox/css/lightbox.css') }}" media="screen" />
    <link rel="stylesheet" type="text/css" href="{{ asset('vendor/laravel-admin/flexslider/flexslider.css') }}" media="screen" />

    <!--Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800|Montserrat:400,700' rel='stylesheet' type='text/css'>



</head>
<body>

{{--<div id="app" class="{{ route_class() }}-page">--}}
  @include('layouts._header')
  {{--<div class="container">--}}
    @yield('content')
  {{-- </div> --}}
  @include('layouts._footer')
{{--</div>--}}
<!-- JS 脚本 -->
<script src="{{ mix('js/app.js') }}"></script>
@yield('scriptsAfterJs')

    <script src="{{ asset('js/jquery-2.1.3.min.js') }}"></script>

    <!--Google Maps-->
    <!---<script src="http://ditu.google.cn/maps/api/js"></script>--->

    <!--Bootstrap JS-->
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>

    <!--Nice Scroll-->
    <script src="{{ asset('vendor/laravel-admin/nicescroll/jquery.nicescroll.js') }}"></script>

    <!--Flickr-->


    <!--Lightshot-->
    <script src="{{ asset('vendor/laravel-admin/lightbox/js/lightbox.min.js') }}"></script>

    <!--Tweets-->
    <script src="{{ asset('vendor/laravel-admin/tweet/scripts.js') }}"></script>
    <script src="{{ asset('vendor/laravel-admin/tweet/tweetie.min.js') }}"></script>

    <!--Counter Up-->
    <script src="{{ asset('vendor/laravel-admin/waypoints/waypoints.min.js') }}"></script>
    <script src="{{ asset('vendor/laravel-admin/counterup/jquery.counterup.min.js') }}"></script>

    <!--Owl Carousel-->
    <script src="{{ asset('vendor/laravel-admin/owl.carousel/js/owl.carousel.min.js') }}"></script>

    <!--Isotope-->
    <script src="{{ asset('vendor/laravel-admin/isotope/isotope-custom.js') }}"></script>

    <!--FlexSlider-->
    <script src="{{ asset('vendor/laravel-admin/flexslider/jquery.flexslider-min.js') }}"></script>

    <!--Strella JS-->
    <script src="{{ asset('js/furniture.js') }}"></script>
</body>
</html>
