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

@section('add-article')
class="nav-link active"
@stop

@section('article')
class="nav-link active"
@stop

@section('article-menu-open')
class="nav nav-treeview menu-open"
@stop

@section('article-menu-parent')
class="nav-item menu-open"
@stop

@section('PageHeader')
<h1>{{Lang::get('lang.article')}}</h1>
@stop

@section('content')

{!! Form::open(array('route' => 'article.store' , 'method' => 'post') )!!}

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
    <b>{!! Lang::get('lang.alert') !!} !</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{Session::get('fails')}}
</div>
@endif
@if(!$category)
<div class="alert alert-warning alert-dismissable">
    <i class="fa fa-info"></i>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!! Lang::get('lang.create_a_category') !!}
</div>
@endif
@if(Session::has('errors'))
<?php //dd($errors); ?>
<div class="alert alert-danger alert-dismissable">
    <i class="fa fa-ban"></i>
    <b>{!! Lang::get('lang.alert') !!}!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <br/>
    @if($errors->first('name'))
    <li class="error-message-padding">{!! $errors->first('name', ':message') !!}</li>
    @endif
    @if($errors->first('slug'))
    <li class="error-message-padding">{!! $errors->first('slug', ':message') !!}</li>
    @endif
    @if($errors->first('description'))
    <li class="error-message-padding">{!! $errors->first('description', ':message') !!}</li>
    @endif
    @if($errors->first('type'))
    <li class="error-message-padding">{!! $errors->first('type', ':message') !!}</li>
    @endif
    @if($errors->first('status'))
    <li class="error-message-padding">{!! $errors->first('status', ':message') !!}</li>
    @endif
    @if($errors->first('category_id'))
    <li class="error-message-padding">{!! $errors->first('category_id', ':message') !!}</li>
    @endif
</div>
@endif

<div class="row">

    <div class="col-sm-7">

        <div class="card card-light">
            
            <div class="card-header">
                
                <h3 class="card-title">{!! Lang::get('lang.addarticle') !!}</h3>
            </div>

            <div class="card-body">
                
                <div class="row">
                    
                    <div class="col-md-12 form-group {{ $errors->has('name') ? 'has-error' : '' }}" >
                        {!! Form::label('name',Lang::get('lang.name')) !!}<span class="text-red"> *</span>
                        {!! Form::text('name',null,['class' => 'form-control']) !!}
                    </div>

                    <div class="form-group col-md-12 {{ $errors->has('description') ? 'has-error' : '' }}">
                        {!! Form::label('description',Lang::get('lang.description')) !!}<span class="text-red"> *</span>
                        <div class="form-group" style="background-color:white">
                            {!! Form::textarea('description',null,['class' => 'form-control article_desc','id'=>'editor','size' => '128x20','placeholder'=>Lang::get('lang.enter_the_description')]) !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-5">
        
        <div class="card card-light">
            
            <div class="card-header">
                <h3 class="card-title">{{Lang::get('lang.publish')}}</h3>
            </div>

            <div class="card-body">
                
                <div class="form-group {{ $errors->has('type') ? 'has-error' : '' }}">
                    {!! Form::label('type',Lang::get('lang.status')) !!}
                    <div class="row">
                        <div class="col-sm-1">
                            {!! Form::radio('type','1',true) !!}
                        </div>
                        <div class="col-sm-4">
                            {{Lang::get('lang.published')}}
                        </div>
                        <div class="col-sm-1">
                            {!! Form::radio('type','0',null) !!}
                        </div>
                        <div class="col-sm-4">
                            {{Lang::get('lang.draft')}}
                        </div>
                    </div>
                </div>

                <div class="form-group {{ $errors->has('status') ? 'has-error' : '' }}">
                    {!! Form::label('status',Lang::get('lang.visibility')) !!}
                    <div class="row">
                        <div class="col-sm-1">
                            {!! Form::radio('status','1',true) !!}
                        </div>
                        <div class="col-sm-4">  
                            {{Lang::get('lang.public')}}
                        </div>
                         <div class="col-sm-1">
                            {!! Form::radio('status','0',null) !!}
                        </div>
                        <div class="col-sm-4"> 
                            {{Lang::get('lang.private')}}
                        </div>
                    </div>
                </div>

                <?php
                $format = App\Model\helpdesk\Settings\System::where('id', '1')->first()->date_time_format;
                $format = \App\Model\helpdesk\Utility\Date_time_format::where('id', $format)->first()->format;
                $tz = App\Model\helpdesk\Settings\System::where('id', '1')->first()->time_zone;
                $tz = App\Model\helpdesk\Utility\Timezones::where('id', $tz)->first()->name;
                date_default_timezone_set($tz);
                $date = date($format);
                $dateparse = date_parse_from_format($format, $date);
                //dd($dateparse);
                $month = $dateparse['month'];
                $day = $dateparse['day'];
                $year = $dateparse['year'];
                $hour = $dateparse['hour'];
                $minute = $dateparse['minute'];
    //                            echo $date;
                ?>
                <div class="row">
                    <div class="col-md-12">
                        {!! Form::label('month',Lang::get('lang.publish_immediately')) !!}
                    </div>
                    <div class="col-md-12">
                        <span class="d-flex">
                            {!! Form::selectMonth('month', $month,['class'=>'form-control mr-1','style'=>'width: 120px;'])  !!}
                            {!! Form::selectRange('day', 1, 31, $day,['class'=>'form-control mr-1','style'=>'width: 65px;'])  !!}
                            {!! Form::text('year',date('Y'),['class'=>'form-control mr-1','style'=>'width: 58px;'])  !!}@
                            &nbsp;<input type="text" name="hour" value="{{$hour}}" class="form-control" style="width: 50px;">&nbsp;:&nbsp;<input type="text" name="minute" value="{{$minute}}" class="form-control" style="width: 50px;" >
                        </span>
                    </div>
                </div>
            </div>
            
            <div class="card-footer">
                {!! Form::submit(Lang::get('lang.publish'),['class'=>'btn btn-primary'])!!}
            </div>
        </div>

        <div class="card card-light">

            <div class="card-header">
                
                <h3 class="card-title">{{Lang::get('lang.category')}}<span class="text-red"> *</span></h3>


            </div>
            
            <div class="card-body" style="height:166px; overflow-y:auto;">
            
                <div class="form-group {{ $errors->has('category_id') ? 'has-error' : '' }}">
            
                    {{-- {!! Form::label('category_id','Category') !!} --}}

                    @foreach($category->toArray() as $key=>$val)
                    <div class="row">
                        <div class="form-group">
                            <input type="radio" name="category_id[]" value="<?php echo $val; ?>"> <?php echo $key; ?>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            {!! Form::close() !!}

            <div class="card-footer">

                <span class="btn btn-info btn-sm" data-toggle="modal" data-target="#j">{{Lang::get('lang.addcategory')}}</span>

                <div class="modal" id="j">
                    
                    <div class="modal-dialog">
                    
                        <div class="modal-content">
                            {!! Form::open(['method'=>'post','route'=>'category.store']) !!}
                            
                            <div class="modal-header">          
                                <h4 class="modal-title">{{Lang::get('lang.addcategory')}}</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            </div>

                            <div class="modal-body">
                                @include('themes.default1.agent.kb.category.form')
                            </div>
                            
                            <div class="modal-footer justify-content-between" style="margin: -15px;">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <div class="form-group">
                                    {!! Form::submit('Add',['class'=>'btn btn-primary'])!!}
                                </div>
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 

<script type="text/javascript">
    $(function() {
        $(".article_desc").summernote({
            height: 300,
            tabsize: 2,
          });
    });
</script>

@stop