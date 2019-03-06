@extends('themes.default1.admin.layout.admin')
@section('content')
<section class="content-header">
    <h1> {{Lang::get('service::lang.announcement')}} </h1>

</section>
<div class="box box-primary">

    <div class="box-header with-border">
        @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Ooops!</strong> Houveram alguns problemas com a sua entrada de dados.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif

        @if(Session::has('success'))
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            {{Session::get('success')}}
        </div>
        @endif
        <!-- fail message -->
        @if(Session::has('fails'))
        <div class="alert alert-danger alert-dismissable">
            <i class="fa fa-ban"></i>
            <b>{{Lang::get('message.alert')}}!</b> {{Lang::get('message.failed')}}.
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            {{Session::get('fails')}}
        </div>
        @endif
        {!! Form::open(['url'=>'service-desk/announcement','method'=>'post','id'=>'from']) !!}
    </div><!-- /.box-header -->
    <!-- /.box-header -->
    <div class="box-body">
        <div class="row">

            <div class="col-md-6">
                <p>{!! Form::label('option','Selecione uma opção') !!}</p>
                <div class="col-md-3">
                    <p> {!! Form::radio('option','organization',['class'=>'option']) !!} {{Lang::get('lang.organization')}}</p>
                </div>
                <div class="col-md-3">
                    <p> {!! Form::radio('option','department',['class'=>'option']) !!} {{Lang::get('lang.department')}}</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" id="organization">
                {!! Form::label('organization','Órgão') !!}
                {!! Form::select('organization',[''=>Lang::get('lang.select'),'Órgão'=>$organization],null,['class'=>'form-control']) !!}
            </div>
            <div class="col-md-6" id="department">
                {!! Form::label('department','Departamento') !!}
                {!! Form::select('department',[''=>Lang::get('lang.select'),'Departamento'=>$departments],null,['class'=>'form-control']) !!}
            </div>

        </div>

        <div>
            {!! Form::label('announcement','Anúncio') !!}
            {!! Form::textarea('announcement',null,['class'=>'form-control']) !!}
        </div>
        <!-- /.box-body -->
    </div>
    <div class="box-footer">
        {!! Form::submit(Lang::get('lang.save'),['class'=>'btn btn-success']) !!}
        {!! Form::close() !!}
    </div>
    <!-- /.box -->
</div>
@stop
