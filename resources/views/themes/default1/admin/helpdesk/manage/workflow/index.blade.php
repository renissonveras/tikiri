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

@section('workflow')
class="nav-link active"
@stop

@section('HeadInclude')
@stop
<!-- header -->
@section('PageHeader')
<h1>{{Lang::get('lang.manage')}}</h1>
@stop
<!-- /header -->
<!-- breadcrumbs -->
@section('breadcrumbs')
@stop
<!-- /breadcrumbs -->
<!-- content -->
@section('content')
<!-- check whether success or not -->
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
    <b>{!! Lang::get('lang.alert') !!} !</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!! Session::get('fails') !!}
</div>
@endif
<div class="card card-light">
    <div class="card-header">
        <h3 class="card-title">{!! Lang::get('lang.ticket_workflow') !!}</h3>
        <div class="card-tools">
            <a href="{!! URL::route('workflow.create') !!}" class="btn btn-default btn-tool">
                <span class="fas fa-plus"></span>&nbsp;{!! Lang::get('lang.create') !!}
            </a>
        </div>
    </div>
    <!-- /.box-header -->
    <div class="card-body">
        {!! Datatable::table()
        ->addColumn(Lang::get('lang.name'),
        Lang::get('lang.status'),
        Lang::get('lang.order'),
        Lang::get('lang.rules'),
        Lang::get('lang.target_channel'),
        Lang::get('lang.created'),
        Lang::get('lang.updated'),
        Lang::get('lang.action')) // these are the column headings to be shown
        ->setUrl(route('workflow.list'))   // this is the route where data will be retrieved
        ->render() !!}
    </div>
    <!-- </div> -->
</div>
<!-- /.box -->

<script>
    $(function() {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
</script>
@stop
