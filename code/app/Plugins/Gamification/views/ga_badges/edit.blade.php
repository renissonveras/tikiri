@extends('themes.default1.admin.layout.admin')

@section('content')
	<section class="content-heading-anchor" id="heading">
		<h2>
			{{ Lang::get('gamification::lang.edit') }} {{ Lang::get('gamification::lang.badge') }}
		</h2>
	</section> 
   <div class="content">
	<div class="clearfix"></div>
	@include('gamification::interface.messages')       
	   <div class="box box-primary">
		   <div class="box-body">
			   <div class="row">
				   {!! Form::model($gaBadge, ['route' => ['gamification.gaBadges.update', $gaBadge->id], 'method' => 'patch']) !!}

						@include('gamification::ga_badges.fields')

				   {!! Form::close() !!}
			   </div>
		   </div>
	   </div>
   </div>
@endsection