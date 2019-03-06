@extends('themes.default1.admin.layout.admin')

@section('content')
	<div class="content">
		<div class="clearfix"></div>
		@include('gamification::interface.messages')

		<div class="box box-primary">
			<div class="box-header with-border">
				<div class="row">
					<div class="col-md-6">
						<h3 class="box-title ">{{Lang::get('gamification::lang.manage')}} {{ $title }}</h3>                
					</div>
					<div class="col-md-6">
						<div class="pull-right">
						<div id="labels-div" class="btn-group">
							<button type="button" class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" id="labels-button"><i class="fa fa-eye" style="color:teal;">&nbsp;</i>{{Lang::get('gamification::lang.type')}} <span class="caret"></span>
							</button>
							<ul  class="dropdown-menu role="menu">
								<li><a href="{!!URL::route('gamification.badges.index.types', ['type_id' => 1])!!}">{{Lang::get('gamification::lang.badges')}}</a></li>
								<li><a href="{!!URL::route('gamification.badges.index.types', ['type_id' => 2])!!}">{{Lang::get('gamification::lang.levels')}}</a></li>
								<li><a href="{!!URL::route('gamification.badges.index.types', ['type_id' => 3])!!}">{{Lang::get('gamification::lang.points')}}</a></li>
								<li><a href="{!!URL::route('gamification.badges.index.types', ['type_id' => 4])!!}">{{Lang::get('gamification::lang.credits')}}</a></li>
								<li><a href="{!!URL::route('gamification.badges.index.types', ['type_id' => 5])!!}">{{Lang::get('gamification::lang.rewards')}}</a></li>
							</ul>
						</div>
						<a href="{!!URL::route('gamification.badges.create', ['type_id' => $type_id])!!}" class="btn btn-primary btn-sm">{{Lang::get('gamification::lang.create')}} {{ $title }}</a>
						</div>
					</div>
				</div>
			</div>        
			<div class="box-body">
					@include('gamification::ga_badges.table')
			</div>
		</div>
	</div>
@endsection

