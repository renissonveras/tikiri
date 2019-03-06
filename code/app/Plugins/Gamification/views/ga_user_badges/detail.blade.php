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
			<div class="col-md-3">
				<div class="small-box bg-yellow">
					<div class="inner">
						<h3>
							<a href="#" id="assign_Ticket" data-toggle="modal" data-target="#AssignTickets">Premiar usuário</a>
						</h3>
						<p>Atribuir um bônus para este usuário!</p>
					</div>
					<div class="icon">
					  <i class="ion ion-plus"></i>
					</div>
				</div>
			</div>			
			<div class="clearfix"></div>            
			<div class="box-body">
					@include('gamification::ga_user_badges.tableDetail')
			</div>
		</div>
	</div>
	<!-- Assign ticket model-->
	<div class="modal fade" id="AssignTickets">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" id="assign-close" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">{!! Lang::get('gamification::lang.assign-credits') !!} </h4>
				</div><!-- /.modal-header-->
				<div class ="modal-body">
					<div class="row">
						<div class="col-md-4">
						</div>
						<div class="col-md-6" id="assign_loader"  style="display:none;">
							<img src="{{asset("lb-faveo/media/images/gifloader.gif")}}"><br/><br/><br/>
						</div><!-- /.merge-loader -->
					</div>
					<div id="assign_body">
							<div class="row">
								<div class="col-md-12">
									{!! Form::open(['id'=>'assign-form','method' => 'POST'] )!!}
									{!! Form::hidden('user_id', $user_id) !!}
									<label>{!! Lang::get('gamification::lang.credit_do_you_want_to_assign') !!}</label>
									<select class="form-control" id="select-assign-credit"  name="assign_to" data-placeholder="{!! Lang::get('gamification::lang.select_credit') !!}" style="width: 100%;"><option value=""></option></select>
								</div>
							</div>
						</div><!-- mereg-body-form -->
					</div><!-- merge-body -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default pull-left" data-dismiss="modal" id="dismis2">{!! Lang::get('lang.close') !!}</button>
					<input  type="submit" id="merge-btn" class="btn btn-primary pull-right" value="{!! Lang::get('lang.assign') !!}"></input>
					{!! Form::close() !!}
				</div><!-- /.modal-footer -->
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
<script>
	var t_id = [];
	var option = null;
    $(document).ready(function() { /// Wait till page is loaded	
		$('#AssignTickets').on('show.bs.modal', function() {
			$.ajax({
				type: "POST",
				headers: { 'X-CSRF-TOKEN' : '{{ csrf_token() }}' },
				url: "{{route('gamification.get.credits')}}",
				dataType: "html",
				data: {
					"user_id":{{$user_id}},
				},
				contentType: 'application/x-www-form-urlencoded',
				beforeSend: function() {
					$("#assign_body").hide();
					$("#assign_loader").show();
				},
				success: function(data) {
					$("#assign_loader").hide();
					$("#assign_body").show();
					$('#select-assign-credit').html(data);
				}
			});
		});

		// Assign a ticket
		$('#assign-form').on('submit', function() {
			$.ajax({
				type: "POST",
				url: "{{route('gamification.store.credits')}}",
				dataType: "html",
				data: $(this).serialize(),
				beforeSend: function() {
				$("#assign_body").hide();
					$("#assign_loader").show();
				},
				success: function(response) {
					if (response == 1)
					{
						location.reload();
						var message = "Success!";
							$("#alert11").show();
							$('#message-success1').html(message);
							setInterval(function(){$("#dismiss11").trigger("click"); }, 2000);
					}
					$("#assign_body").show();
					$("#assign_loader").hide();
					$("#dismis4").trigger("click");
				}
			})
			return false;
		});
	});

	function someFunction(id) {
		if (document.getElementById(id).checked) {
			t_id.push(id);
			// alert(t_id);
		} else if(document.getElementById(id).checked === undefined){
			var index = t_id.indexOf(id);
			if (index === -1){
				t_id.push(id);
			} else{
				t_id.splice(index, 1);
			}
		} else {
			var index = t_id.indexOf(id);
			t_id.splice(index, 1);
			// alert(t_id);
		}
		showAssign(t_id);
	}

</script>
@endsection

