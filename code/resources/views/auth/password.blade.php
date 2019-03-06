@extends('themes.default1.client.layout.logclient')

@section('home')
	class = "active"
@stop



<!-- @if (count($errors) > 0)
<div class="alert alert-danger alert-dismissable">
	<i class="fa fa-ban"></i>
	<b>{!! Lang::get('lang.alert') !!} !</b>
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	@foreach ($errors->all() as $error)
	<li>{{ $error }}</li>
	@endforeach
</div>
@endif -->

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

  
<script type="text/javascript"> $(function(){ $('.dialogerror, .dialoginfo, .dialogalert').fadeIn('slow');$("form").bind("submit", function(e){$(this).find("input:submit").attr("disabled", "disabled");});});</script>
<script type="text/javascript" >try {if (top.location.hostname != self.location.hostname) { throw 1; }} catch (e) { top.location.href = self.location.href; }</script>
</div> 
 

<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
	<div class="card card-signup">
			<div class="header header-primary text-center">
				<h4>{{Lang::get('lang.recover_passord')}}</h4>
			</div>        
		<!-- form open -->
		<form role="form" method="POST" action="{{ url('/password/email') }}">
			<!-- Email -->
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<!-- Email -->
			<!-- <div class="input-group margin"> -->
			@if(Session::has('status'))
			<div class="alert alert-success alert-dismissable">
				<i class="fa  fa-check-circle"> </i> <b> {!! Lang::get('lang.success') !!} </b>
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				{{Session::get('status')}}
			</div>
			@endif

			<div class="content">
				<div class="form-group has-feedback label-floating {{ $errors->has('email') ? 'has-error' : '' }}">
					{!! Form::label('password',Lang::get('lang.enter_your_email_here')) !!}:
					<input type="email" class="form-control" name="email" placeholder="{!! Lang::get('lang.email') !!}" value="{{ old('email') }}">
					 <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
			</div>
			<div class="footer text-center">
				<button type="submit" class="btn btn-simple btn-primary btn-lg">{!! Lang::get('lang.send') !!}</button>
			</div>
			<div class="row">
				<div class="col-xs-6 text-center"> 
					<a href="{{url('auth/login')}}" class="btn btn-simple btn-primary text-center btn-sm">
						<i class="material-icons">account_circle</i>
						{!! Lang::get('lang.i_know_my_password') !!}
					</a>
				</div>
			</div>
		</form>
   </div>
</div>
<!-- /.login-page -->
@stop