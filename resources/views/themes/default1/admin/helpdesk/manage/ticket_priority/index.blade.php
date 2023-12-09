@extends('themes.default1.admin.layout.admin')

@section('Manage')
class="nav-link active"
@stop

@section('manage-menu-parent')
class="nav-item menu-open"
@stop

@section('manage-menu-open')
class="nav nav-treeview menu-open"
@stop

@section('priority')
class="nav-link active"
@stop

@section('HeadInclude')
@stop
<!-- header -->
@section('PageHeader')
<h1>{!! Lang::get('lang.ticket_priority') !!}</h1>
@stop
<!-- /header -->
<!-- breadcrumbs -->
@section('breadcrumbs')
<ol class="breadcrumb">
</ol>
@stop

<!-- content -->
@section('content')

@if(Session::has('success'))
<div class="alert alert-success alert-dismissable">
    <i class="fas fa-check-circle"></i>
    <b>Successo!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!! Session::get('success') !!}
</div>
@endif
<!-- failure message -->
@if(Session::has('fails'))
<div class="alert alert-danger alert-dismissable">
    <i class="fas fa-ban"></i>
    <b>Fail!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!! Session::get('fails') !!}
</div>
@endif
<div class="card card-light">
    <div class="card-header">
        <h3 class="card-title">{!! Lang::get('lang.priority') !!}</h3>
        <div class="card-tools">
             <a href="{{route('priority.create')}}" class="btn btn-default btn-tool"> 
                <span class="fas fa-plus"></span>&nbsp;{{Lang::get('lang.create_ticket_priority')}}
            </a>
        </div>
    </div>
    <div class="card-body">
        <div class="test" style="border-bottom:1px solid #F4F4F4;padding-bottom: 10px">
            <a class="right" title="" data-placement="right" data-toggle="tooltip" href="#" data-original-title="{{Lang::get('lang.active_user_can_select_the_priority_while_creating_ticket')}}">

                <span class="lead" >{!! Lang::get('lang.user_priority_status') !!}</span>
           </a>

            <div class="btn-group" id="toggle_event_editing" style="float: right; margin-bottom: 10">
                <button type="button"  class="btn {{$user_status->status == '0' ? 'btn-info' : 'btn-default'}} locked_active">{{Lang::get('lang.inactive')}}</button>
                <button type="button"  class="btn {{$user_status->status == '1' ? 'btn-info' : 'btn-default'}} unlocked_inactive">{{Lang::get('lang.active')}}</button>
            </div>
        </div>
        <div class="priority-table" style="padding-top: 10px">
        {!! Datatable::table()
        ->addColumn(
        Lang::get('lang.priority'),
        Lang::get('lang.priority_desc'),
        Lang::get('lang.priority_color'),
        Lang::get('lang.status'),
        Lang::get('lang.action'))
        ->setUrl(route('priority.index1')) // this is the route where data will be retrieved
        ->render() !!}
        </div>
    </div>
</div>
<script type="text/javascript">
    $('a').tooltip()
</script>

<script>
    function confirmDelete(priority_id) {
        var r = confirm('Are you sure?');
        if (r == true) {
            // alert('{!! url("ticket_priority") !!}/' + priority_id + '/destroy');
            window.location = '{!! url("ticket/priority") !!}/' + priority_id + '/destroy';
            //    $url('ticket_priority/' . $model->priority_id . '/destroy')
        } else {
            return false;
        }
    }
</script>
<script>
    $('#toggle_event_editing button').click(function () {

        var user_settings_priority=1;
         var user_settings_priority=0;
        if ($(this).hasClass('locked_active') ) {
         

            user_settings_priority = 0
        } if ( $(this).hasClass('unlocked_inactive')) {
          
            user_settings_priority = 1;
        }

        /* reverse locking status */
        $('#toggle_event_editing button').eq(0).toggleClass('locked_inactive locked_active btn-default btn-info');
        $('#toggle_event_editing button').eq(1).toggleClass('unlocked_inactive unlocked_active btn-info btn-default');
        $.ajax({
            type: 'post',
            url: '{{route("user.priority.index")}}',
            data: {
                "_token": "{{ csrf_token() }}",
                user_settings_priority: user_settings_priority},
            success: function (result) {
                // with('success', Lang::get('lang.approval_settings-created-successfully'));
                // alert("Hi, testing");
                alert(result);
                location.reload(); 
            }
        });
    });
</script>
@stop