@extends('themes.default1.admin.layout.admin')

@section('content')
	<section class="content-header">
		<h1 class="pull-left">{{Lang::get('gamification::lang.user_badges')}}</h1>
	</section>
	<div class="content">
		<div class="clearfix"></div>
		@include('gamification::interface.messages')
		<div class="box box-primary">
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="clearfix"></div>            
			<div class="box-body">
					@include('gamification::ga_user_badges.adminTable')
			</div>
		</div>
	</div>
@endsection

