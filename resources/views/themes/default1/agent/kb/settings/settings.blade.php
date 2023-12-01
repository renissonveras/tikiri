@extends('themes.default1.agent.layout.agent')
@extends('themes.default1.agent.layout.sidebar')    

@section('Tools')
class="nav-link active"
@stop

@section('tool')
class="active"
@stop

@section('kb')
class="nav-link active"
@stop

@section('settings')
class="nav-link active"
@stop

@section('content')
<!-- open a form -->
{!! Form::model($settings,['url' => 'postsettings/'.$settings->id, 'method' => 'PATCH','files'=>true]) !!}

<!-- check whether success or not -->
@if(Session::has('success'))
<div class="alert alert-success alert-dismissable">
    <i class="fa  fa-check-circle"></i>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{Session::get('success')}}
</div>
@endif
<!-- failure message -->
@if(Session::has('fails'))
<div class="alert alert-danger alert-dismissable">
    <i class="fa fa-ban"></i>
    <b>{!! lang::get('lang.alert') !!}!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{Session::get('fails')}}
</div>
@endif
@if(Session::has('errors'))
<div class="alert alert-danger alert-dismissable">
    <i class="fa fa-ban"></i>
    <b>{!! Lang::get('lang.alert') !!}!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <br/>
    @if($errors->first('pagination'))
    <li class="error-message-padding">{!! $errors->first('pagination', ':message') !!}</li>
    @endif         
</div>
@endif
<div class="card card-light">
    
    <div class="card-header">
        <h3 class="card-title">{{Lang::get('lang.kb-settings')}}</h3> 
    </div>
    
    <div class="card-body">
        
        <div class="row">
            <div class="col-md-3">
                {!! Form::label('pagination',Lang::get('lang.numberofelementstodisplay')) !!} <span class="text-red"> *</span>
                <input type="number" class="form-control" name='pagination' value="{!! $settings->pagination !!}" min="2" required>
            </div>
        </div>
    </div>

     <div class="card-footer">
        {!! Form::submit(Lang::get('lang.submit'),['class'=>'btn btn-primary'])!!}
    </div>
</div>
@stop
