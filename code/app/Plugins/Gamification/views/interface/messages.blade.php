@if(Session::has('success'))
<div class="alert alert-success alert-dismissable">
	<i class="fa  fa-check-circle"></i>
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	{!! Session::get('success') !!}
</div>
@endif
<!-- failure message -->
@if(Session::has('fails'))
<div class="alert alert-danger alert-dismissable">
	<i class="fa fa-ban"></i>
	<b>Falha!</b>
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	{!! Session::get('fails') !!}
</div>
@endif

<div class="clearfix"></div>