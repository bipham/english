<?php
/**
 * Created by PhpStorm.
 * User: nobikun1412
 * Date: 12-Jun-17
 * Time: 00:20
 */
?>
        <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>@yield('meta-title', 'Reading English') - Reading English</title>
    <link rel="stylesheet" href="{{asset('public/libs/bootstrap/css/bootstrap.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('public/libs/font-awesome/css/font-awesome.min.css')}}"/>
    <link rel="stylesheet" href="{{asset('public/css/client/my-style.css')}}"/>

    @yield('css')
</head>
<body>
@include('layout.header')
<div role="main" class="main main-page">

    @yield('top-information')

    @yield('content')

</div>

@include('layout.footer')
<script src="{{asset('public/libs/tether/tether.min.js')}}"></script>
<script src="{{asset('public/libs/jquery/jquery.min.js')}}"></script>
<script src="{{asset('public/libs/bootstrap/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/libs/highlight/TextHighlighter.min.js')}}"></script>
<script src="//cdn.rawgit.com/julmot/mark.js/master/dist/jquery.mark.min.js"></script>
<script src="{{asset('public/js/client/my-script.js')}}"></script>

@yield('scripts')
</body>
</html>
