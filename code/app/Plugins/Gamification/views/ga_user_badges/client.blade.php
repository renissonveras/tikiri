@extends('themes.default1.client.layout.client')

@section('content')
	<section class="content-header">
		<h2 class="pull-left">{{Lang::get('gamification::lang.my-points')}}</h2>
	</section>
	<div class="content">
		<div class="clearfix"></div>
		@include('gamification::interface.messages')
		<div class="box box-primary">
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-3">
				<div class="box-success">
					<div class="box-header">
						<h4 class="box-title">
							@if ($maxXp != '')
								{{ $maxXp }}
							@else 
								0
							@endif
						</h4>
						<p class="category">Pontos acumulados até o momento!</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="box-info">
					<div class="box-header">
						<h4 class="box-title">
							@if ($maxCredit != '')
								{{ $maxCredit }}
							@else 
								0
							@endif
					</h4>
						<p class="category">Bônus acumulados até o momento!</p>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="box-body">
					@include('gamification::ga_user_badges.clientTable')
			</div>
		</div>
	</div>
@endsection

