@extends('themes.default1.client.layout.logclient')

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


@section('breadcrumb')
	<div class="site-hero clearfix">
		<ol class="breadcrumb breadcrumb-custom">
			<li class="text">{!! Lang::get('lang.you_are_here') !!}: </li>
			<li><a href="{!! URL::route('/') !!}">{!! Lang::get('lang.home') !!}</a></li>
		</ol>
	</div>
@stop
@section('content')

<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
	<div class="card card-signup">
		{!!  Form::open(['action'=>'Auth\AuthController@postLogin', 'method'=>'post']) !!}
			<div class="header header-primary text-center">
				<h4>{{Lang::get('lang.login_to_start_your_session')}}</h4>
				<div class="social-line">
					 @include('themes.default1.client.layout.social-login')
				</div>
			</div>
			@if(Session::has('status'))
			<div class="alert alert-success alert-dismissable">
				<i class="fa  fa-check-circle"> </i> <b> {!! Lang::get('lang.success') !!} </b>
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				{{Session::get('status')}}
			</div>
			@endif

			@if(Session::has('error'))
			<div class="alert alert-danger alert-dismissable">
				<div class="container-fluid">
				  <div class="alert-icon">
					<i class="material-icons">error_outline</i>
				  </div>
				  <button type="button" class="close" data-dismiss="alert"  aria-label="Fechar">
					<span aria-hidden="true"><i class="material-icons">clear</i></span>
				  </button>
				   <b> {!! Lang::get('lang.alert') !!} </b>
				   {{Session::get('error')}}
				</div>
			</div>
			@else

			@if (count($errors) > 0)
			<div class="alert alert-danger alert-dismissable">
				<div class="container-fluid">
				  <div class="alert-icon">
					<i class="material-icons">error_outline</i>
				  </div>
				  <button type="button" class="close" data-dismiss="alert" aria-label="Fechar">
					<span aria-hidden="true"><i class="material-icons">clear</i></span>
				  </button>
				   <b>{!! Lang::get('lang.alert') !!} !</b>
				   <ul>
						@foreach ($errors->all() as $error)
						<li>{{ $error }}</li>
						@endforeach
					</ul>
				</div>
			</div>
			@endif
			@endif
			<div class="content">
				<div class="form-group has-feedback label-floating {{ $errors->has('email') ? 'has-error' : '' }}">
					<div class="input-group">
						<span class="input-group-addon">
							<i class="material-icons">email</i>
						</span>
						{!! Form::text('email',null,['placeholder'=> Lang::get("lang.email") ,'class' => 'form-control']) !!}
					</div>
					<span class="material-icons form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback label-floating {{ $errors->has('password') ? 'has-error' : '' }}">
					<div class="input-group">
						<span class="input-group-addon">
							<i class="material-icons">lock_outline</i>
						</span>
						{!! Form::password('password',['placeholder'=>Lang::get("lang.password"),'class' => 'form-control']) !!}
					</div>
					<span class="material-icons form-control-feedback"></span>
				</div>                
				<div class="form-group">
					<div class="checkbox">
						<label>
							<input type="checkbox" checked name="remember"> {!! Lang::get("lang.remember") !!}
						</label>
					</div>
				</div>
			</div>
			<div class="footer text-center">
				<button type="submit" class="btn btn-simple btn-primary btn-lg">{!! Lang::get("lang.login") !!}</button>
			</div>
			<div class="row">
				<div class="col-xs-6 text-center">
					<a href="{{url('password/email')}}" class="btn btn-simple btn-primary text-center btn-sm">
						<i class="material-icons">find_replace</i>
						{!! Lang::get("lang.iforgot") !!}
					</a>
				</div>
				<div class="col-xs-6 text-center"> 
					<a href="{{url('auth/register')}}" class="btn btn-simple btn-primary text-center btn-sm">
						<i class="material-icons">account_circle</i>
						{!! Lang::get("lang.register") !!}
					</a>
				</div>
			</div>
		{!! Form::close()!!} 
	</div>
</div>
<script type="text/javascript"> $(function(){ $('.dialogerror, .dialoginfo, .dialogalert').fadeIn('slow');$("form").bind("submit", function(e){$(this).find("input:submit").attr("disabled", "disabled");});});</script>
<script type="text/javascript" >try {if (top.location.hostname != self.location.hostname) { throw 1; }} catch (e) { top.location.href = self.location.href; }</script>
@stop