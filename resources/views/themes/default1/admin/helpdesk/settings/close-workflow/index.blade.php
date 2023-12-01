@extends('themes.default1.admin.layout.admin')

@section('Tickets')
class="nav-link active"
@stop

@section('ticket-menu-parent')
class="nav-item menu-open"
@stop

@section('ticket-menu-open')
class="nav nav-treeview menu-open"
@stop

@section('close-workflow')
class="nav-link active"
@stop

@section('PageHeader')
<h1>{!! Lang::get('lang.settings') !!}</h1>
@stop

@section('header')
@stop

@section('content')
  @if(Session::has('success'))
<div class="alert alert-success alert-dismissable">
    <i class="fas fa-check-circle"></i>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{Session::get('success')}}
</div>
@endif
@if(Session::has('failed'))
<div class="alert alert-danger alert-dismissable">
    <i class="fas fa-ban"></i>
    <b>{!! Lang::get('lang.alert') !!}!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <p>{{Session::get('failed')}}</p>                
</div>
@endif
@if(Session::has('errors'))
<?php //dd($errors); ?>
<div class="alert alert-danger alert-dismissable">
    <i class="fas fa-ban"></i>
    <b>{!! Lang::get('lang.alert') !!}!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <br/>
    @if($errors->first('days'))
    <li class="error-message-padding">{!! $errors->first('days', ':message') !!}</li>
    @endif
    @if($errors->first('condition'))
    <li class="error-message-padding">{!! $errors->first('condition', ':message') !!}</li>
    @endif
    @if($errors->first('send_email'))
    <li class="error-message-padding">{!! $errors->first('send_email', ':message') !!}</li>
    @endif
    @if($errors->first('status'))
    <li class="error-message-padding">{!! $errors->first('status', ':message') !!}</li>
    @endif
</div>
@endif
<div class="card card-light">
    <div class="card-header">
        <h3 class="card-title">{!! Lang::get('lang.close_ticket_workflow_settings') !!}</h3>
    </div><!-- /.box-header -->
    <div class="card-body">
        {!! Form::model($security,['route'=>['close-workflow.update', $security->id],'method'=>'PATCH','files' => true]) !!}
        <div class="form-group {{ $errors->has('days') ? 'has-error' : '' }}">
            <div class="row">
                <div class="col-md-3">
                    <label for="title">{!! Lang::get('lang.no_of_days') !!}: <span class="text-red"> *</span></label>
                </div>
                <div  class="col-md-9">
                    <div class="callout callout-default" style="font-style: oblique;">{!! Lang::get('lang.close-msg1') !!}</div>
                    {!! Form::text('days',null,['class'=>'form-control'])!!}
                </div>
            </div>
        </div>
        <div class="form-group {{ $errors->has('send_email') ? 'has-error' : '' }}"> 
            <div class="row">
                <div class="col-md-3">
                    <label for="title">{!! Lang::get('lang.send_email_to_user') !!}:</label>
                </div>
                <div class="col-md-6">
                    <div class="callout callout-default" style="font-style: oblique;">{!! Lang::get('lang.close-msg4') !!}</div>
                    <div class="row">
                        <div class="col-sm-3">
                            {!! Form::radio('send_email','1') !!} {{Lang::get('lang.yes')}}
                        </div>
                        <div class="col-sm-3">
                            {!! Form::radio('send_email','0') !!} {{Lang::get('lang.no')}}
                        </div>
                    </div>       
                </div>
            </div>
        </div>
        <div class="form-group {{ $errors->has('status') ? 'has-error' : '' }}"> 
            <div class="row">
                <div class="col-md-3">
                    <label for="title">{!! Lang::get('lang.ticket_status') !!}:</label>
                </div>
                <div class="col-md-6">
                    <div class="callout callout-default" style="font-style: oblique;">{!! Lang::get('lang.close-msg3') !!}</div>
                    <?php $user = \App\Model\helpdesk\Ticket\Ticket_Status::where('state', '=', 'closed')->get(); ?>
                    {!! Form::select('status',[ Lang::get('lang.status')=>$user->pluck('name','id')->toArray()],null,['class' => 'form-control']) !!}	
                </div>
            </div>
        </div>
    </div><!-- /.box-body -->
    <div class="card-footer">
        <button type="submit" class="btn btn-primary">{!! Lang::get('lang.submit') !!}</button>
    </div>
    {!! Form::close() !!}
</div>
@stop
