@extends('themes.default1.admin.layout.admin')

@section('Plugins')
class="nav-link active"
@stop

@section('HeadInclude')
@stop
<!-- header -->
@section('PageHeader')
<h1>{!! Lang::get('lang.plugins') !!}</h1>
@stop
<!-- /header -->
<!-- breadcrumbs -->
@section('breadcrumbs')
<ol class="breadcrumb">
</ol>
@stop
<!-- /breadcrumbs -->
<!-- content -->
@section('content')
<div class="alert alert-info alert-dismissable">
    <i class="fas fa-info-circle"></i>
    <span>{!! Lang::get('lang.plugin-info') !!}</span><br/>
    <a href="http://www.faveohelpdesk.com/plugins/" target="_blank">{!!Lang::get('lang.click-here')!!}</a>&nbsp;{!!Lang::get('lang.plugin-info-pro')!!}
</div>
@if (count($errors) > 0)
<div class="alert alert-danger alert-dismissable">
    <i class="fas fa-ban"></i>
    <b>{!! Lang::get('lang.alert') !!}!</b><br/>
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif
@if(Session::has('success'))
<div class="alert alert-success alert-dismissable">
    <i class="fas fa-check-circle"></i>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!!Session::get('success')!!}
</div>
@endif
<!-- failure message -->
@if(Session::has('fails'))
<div class="alert alert-danger alert-dismissable">
    <i class="fas fa-ban"></i>
    <b>{!! Lang::get('lang.alert') !!}!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!!Session::get('fails')!!}
</div>
@endif
<div class="card card-light">
    <div class="card-header">
        <h3 class="card-title">{!! Lang::get('lang.plugins-list') !!}</h3>
        <div class="card-tools">
            <button type="button" class="btn btn-default btn-tool" id="Edit_Ticket" data-toggle="modal" data-target="#Edit">
                <i class="fas fa-plus"></i> {!! Lang::get('lang.add_plugin') !!}
            </button> 

            <div class="modal fade" id="Edit">
                <div class="modal-dialog">
                    <div class="modal-content">  
                        <div class="modal-header">
                            <h4 class="modal-title">{!! Lang::get('lang.add_plugin') !!}</h4>
                        </div>
                        <div class="modal-body">
                            {!! Form::open(['url'=>'post-plugin','files'=>true]) !!}
                            <label>{!! Lang::get('lang.plugin') !!} :</label> 
                            <div class="btn bg-olive btn-file" style="color:blue">
                                {!! Lang::get('lang.upload_file') !!}<input type="file" name="plugin">
                            </div>
                        </div><!-- /.modal-content -->   
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal" id="dismis">{!! Lang::get('lang.close') !!}</button>
                            <input type="submit" class="btn btn-primary" value="{!! Lang::get('lang.upload') !!}">
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->           
        </div>
    </div>
    <div class="card-body">
        
        {!! Datatable::table()
    ->addColumn(
        trans('lang.name'),
        trans('lang.description'), // Translate the 'Description' column heading
        trans('lang.author'),      // Translate the 'Author' column heading
        trans('lang.website'),     // Translate the 'Website' column heading
        trans('lang.version')      // Translate the 'Version' column heading
    )        ->setUrl('getplugin')   // this is the route where data will be retrieved
        ->render() !!}
    </div>
</div>
@stop
