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

@section('breadcrumb')
	<div class="site-hero clearfix">
		<ol class="breadcrumb breadcrumb-custom">
			<li class="text">{!! Lang::get('lang.you_are_here') !!}: </li>
			<li><a href="{!! URL::route('/') !!}">{!! Lang::get('lang.home') !!}</a></li>
		</ol>
	</div>
@stop
@section('content')
<div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
	<div class="card card-signup">
		<div class="header header-primary text-center">
			<h4>{{Lang::get('lang.registration')}}</h4>
		</div>
		@if(Session::has('status'))
		<div class="alert alert-success alert-dismissable">
			<i class="fa  fa-check-circle"> </i> <b> {!! Lang::get('lang.success') !!} </b>
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			{{Session::get('status')}}
		</div>
		@endif

		@if (count($errors) > 0)
		<div class="alert alert-danger alert-dismissable">
			<i class="fa fa-ban"></i>
			<b>{!! Lang::get('lang.alert') !!} !</b>
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			@foreach ($errors->all() as $error)
			<li>{{ $error }}</li>
			@endforeach
		</div>
		@endif		
		<div class="content">
			<!-- form open -->
			{!!  Form::open(['action'=>'Auth\AuthController@postRegister', 'method'=>'post']) !!}

			<!-- fullname -->
			<div class="form-group has-feedback {{ $errors->has('full_name') ? 'has-error' : '' }}">
						
			 {!! Form::text('full_name',null,['placeholder'=>Lang::get('lang.full_name'),'class' => 'form-control']) !!}
			 <span class="glyphicon glyphicon-user form-control-feedback"></span>

			</div>
			<!-- Email -->
			@if (($email_mandatory->status == 1 || $email_mandatory->status == '1'))
			<div class="form-group has-feedback {{ $errors->has('email') ? 'has-error' : '' }}">
				{!! Form::text('email',null,['placeholder'=>Lang::get('lang.email'),'class' => 'form-control']) !!}
				<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
			</div>
			@elseif (($settings->status == 0 || $settings->status == '0') && ($email_mandatory->status == 0 || $email_mandatory->status == '0'))
			<div class="form-group has-feedback {{ $errors->has('email') ? 'has-error' : '' }}">
				{!! Form::text('email',null,['placeholder'=>Lang::get('lang.email'),'class' => 'form-control']) !!}
				<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
			</div>
			@else
				{!! Form::hidden('email', null) !!}
			@endif
			@if($settings->status == '1' || $settings->status == 1)
			<div class='row'>
				<div class="col-md-3">
					<div class="form-group {{ $errors->has('code') ? 'has-error' : '' }}">
					{!! Form::text('code',null,['placeholder'=>'DDD','class' => 'form-control']) !!}
					</div>    
				</div>
				<div class="col-md-9">
					<div class="form-group has-feedback {{ $errors->has('mobile') ? 'has-error' : '' }}">
					{!! Form::text('mobile',null,['placeholder'=>Lang::get('lang.mobile'),'class' => 'form-control']) !!}
					<span class="glyphicon glyphicon-phone form-control-feedback"></span>
					</div>
				</div>
			</div>
			@else
				{!! Form::hidden('mobile', null) !!}
				{!! Form::hidden('code', null) !!}

			@endif
			<!-- Password -->
			<div class="form-group has-feedback {{ $errors->has('password') ? 'has-error' : '' }}">
					   
				{!! Form::password('password',['placeholder'=>Lang::get('lang.password'),'class' => 'form-control']) !!}
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>

			</div>
			<!-- Confirm password -->
			<div class="form-group has-feedback {{ $errors->has('password_confirmation') ? 'has-error' : '' }}">
					   
				{!! Form::password('password_confirmation',['placeholder'=>Lang::get('lang.retype_password'),'class' => 'form-control']) !!}
				<span class="glyphicon glyphicon-log-in form-control-feedback"></span>

			</div>
			<div >
				<button type="submit" class="btn btn-primary btn-block btn-flat">{!! Lang::get('lang.register') !!}</button>
			</div>
			<div class="checkbox icheck" align="center">
				<label>
				   Você já tem uma conta? <a href="{{url('auth/login')}}" class="text-center">{!! Lang::get('lang.login') !!}</a>                
				</label>
			</div>
			<div class="row">
				<div class="col-md-12">
					@include('themes.default1.client.layout.social-login')
				</div>
			</div>

			{!! Form::close()!!}  
		</div>
	</div>
</div>
@stop
