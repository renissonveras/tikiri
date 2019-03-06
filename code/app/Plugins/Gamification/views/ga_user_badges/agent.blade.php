@extends('themes.default1.agent.layout.agent')

@section('content')
	<section class="content-header">
		<h1 class="pull-left">{{Lang::get('gamification::lang.my-points')}}</h1>
	</section>
	<div class="content">
		<div class="clearfix"></div>
		@include('gamification::interface.messages')
		<div class="box box-primary">
			<div class="col-md-3"></div>
			<div class="col-md-3"></div>
			<div class="col-md-3">
								<div class="small-box bg-aqua">
					<div class="inner">
						<h3>
							@if ($maxXp != '')
								{{ $maxXp }}
							@else 
								0
							@endif
					 	</h3>
					  <p>Pontos acumulados até o momento!</p>
					</div>
					<div class="icon">
					  <i class="ion ion-bag"></i>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="small-box bg-green">
					<div class="inner">
						<h3>
							@if ($maxCredit != '')
								{{ $maxCredit }}
							@else 
								0
							@endif
					 	</h3>
					  <p>Bônus acumulados até o momento!</p>
					</div>
					<div class="icon">
					  <i class="ion ion-bag"></i>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>            
			<div class="box-body">
					@include('gamification::ga_user_badges.table')
			</div>
		</div>
	</div>
@endsection

