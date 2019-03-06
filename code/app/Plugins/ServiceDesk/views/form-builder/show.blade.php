@extends('themes.default1.agent.layout.agent')
@section('content')
<section class="content-heading-anchor">
    <h2>
        Gerador de Formulário 
    </h2>
</section>
<link rel="stylesheet" type="text/css" media="screen" href="http://formbuilder.online/assets/css/form-builder.min.css">
<div class="box box-primary">
    <div class="box-header">
        <h3>Gerador de Formulário</h3>
    </div>
    <div class="box-body">
        <div class="row">

            <div id="response" class="col-md-12"></div>
            <div class="col-md-12 form-group">
                {!! $html !!}
            </div>
            
        </div>
    </div>
</div>
@stop
@section('FooterInclude')

@stop