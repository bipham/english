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
    <link rel="stylesheet" href="{{asset('public/css/client/responsive.css')}}"/>
    <link rel="stylesheet" href="{{asset('public/css/my-style.css')}}"/>
    <link rel="stylesheet" href="{{asset('public/libs/toolbar/jquery.toolbar.css')}}" />
    <script>
        var current_user = {!! json_encode(Auth::user()) !!};
        {{--var current_user_name = {!! json_encode((array)Auth::user()->id) !!};--}}
    </script>
    @yield('css')
</head>
<body>
@include('layout.header')
@include('layout.menuHeaderReading')
<div role="main" class="main main-page">

    @yield('top-information')

    @yield('content')

</div>

@include('layout.footer')
<script src="{{asset('public/libs/tether/tether.min.js')}}"></script>
<script src="{{asset('public/libs/jquery/jquery.min.js')}}"></script>
<script src="{{asset('public/libs/bootstrap/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/libs/highlight/TextHighlighter.min.js')}}"></script>
<script src="{{asset('public/libs/bootbox/bootbox.min.js')}}"></script>
<script src="//cdn.rawgit.com/julmot/mark.js/master/dist/jquery.mark.min.js"></script>
<script src="{{asset('public/libs/toolbar/jquery.toolbar.js')}}"></script>
<script src="{{asset('public/js/my-script.js')}}"></script>
<script language="JavaScript">
    <!--
    var dictionaries = "ev_ve";
    // -->
</script>
<script language="JavaScript1.2" src="http://vndic.net/js/vndic.js" type='text/javascript'></script>
<script language="JavaScript">
    $('.btn-toolbar').toolbar({
        content: '#toolbar-options',
        position: 'right',
        style: 'primary',
        event: 'click'
    });
</script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.0.3/socket.io.js"></script>
<script>
    var socket = io('http://english.dev:8890');
    socket.on('chat:message', function (data) {
        console.log(data);
    })
</script>
@yield('scripts')
</body>
</html>
