@extends('themes.default1.client.layout.client')

@section('home')
    class = "active"
@stop

@section('HeadInclude')
<link href="{{asset("lb-faveo/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css")}}" rel="stylesheet" type="text/css" />
           <link href="{{asset("lb-faveo/css/widgetbox.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/plugins/iCheck/flat/blue.css")}}" rel="stylesheet" type="text/css" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        {{-- <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"> --}}
        <link href="{{asset("lb-faveo/css/jquerysctipttop.css")}}" rel="stylesheet" type="text/css">
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
@stop
@section('breadcrumb')
    <div class="site-hero clearfix">
        <ol class="breadcrumb breadcrumb-custom">
            <li class="text">{!! Lang::get('lang.you_are_here') !!}: </li>
            <li><a href="{!! URL::route('/') !!}">{!! Lang::get('lang.home') !!}</a></li>
        </ol>
    </div>
@stop
@section('content')
@if(!Session::has('error') && count($errors)>0)
    <div class="alert alert-danger alert-dismissable">
        <i class="fa fa-ban"></i>
        <b>{!! Lang::get('lang.alert') !!} !</b>
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
<div id="content" class="site-content col-md-12">
<div class="progress progress-striped active">
  <div class="progress-bar" style="width: 0%"></div>
</div>
<div class="nav-center">
    <ul class="nav nav-pills nav-pills-icons" role="tablist">
        {{--@if(Auth::user())
        @else        
        <li>
            <a href="#register" id="btn-register" role="tab" data-toggle="tab">
                <i class="material-icons">person_add</i>
                {!! Lang::get('lang.register') !!}
            </a>
        </li>
        @endif--}}
        <?php $system = App\Model\helpdesk\Settings\System::where('id', '=', '1')->first();  ?>
        @if($system != null) 
            @if($system->status) 
                @if($system->status == 1)
                <li>
                    <a href="#submit-a-ticket" id="btn-submit-a-ticket" role="tab" data-toggle="tab">
                        <i class="material-icons">note</i>
                        {!! Lang::get('lang.submit_a_ticket') !!}
                    </a>
                </li>
                @endif
            @endif
        @endif        
        <li>
            <a href="#my-tickets" id="btn-my-tickets" role="tab" data-toggle="tab">
                <i class="material-icons">inbox</i>
                {!! Lang::get('lang.my_tickets') !!}
            </a>
        </li>
        <li>
            <a href="#kb" id="btn-kb" role="tab" data-toggle="tab">
                <i class="material-icons">book</i>
                {!! Lang::get('lang.knowledge_base') !!}
            </a>
        </li>        
    </ul>
</div>
<script type="text/javascript"> $(function(){ $('.dialogerror, .dialoginfo, .dialogalert').fadeIn('slow');$("form").bind("submit", function(e){$(this).find("input:submit").attr("disabled", "disabled");});});</script>
<script type="text/javascript" >try {if (top.location.hostname != self.location.hostname) { throw 1; }} catch (e) { top.location.href = self.location.href; }</script>
</div>
@stop