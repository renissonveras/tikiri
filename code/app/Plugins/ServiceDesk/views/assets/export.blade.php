@extends('themes.default1.agent.layout.agent')

@section('Users')
class="active"
@stop

@section('user-bar')
active
@stop

@section('user')
class="active"
@stop

<!-- header -->
@section('PageHeader')
<h1>Exportar Ativos de TI</h1>
@stop
<!-- /header -->
<!-- content -->
@section('content')
<link href="{{asset("lb-faveo/css/daterangepicker.css")}}" rel="stylesheet" type="text/css">
{!! Form::open(['url'=>'service-desk/assets/export','method'=>'post']) !!}
<div class="box box-primary">
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
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{Session::get('fails')}}
    </div>
    @endif
    <div class="box-header with-border">
        <h3 class="box-title">
            Ativos de TI
        </h3>
    </div>
    <div class="box-body">
        <div class="row">
            <div class="col-md-6">
                <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%">
                    <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>&nbsp;
                    <span id="date"></span> <b class="caret"></b>
                </div>
            </div>
            <div class="col-md-6">
                {!! Form::hidden('date',null,['id'=>'hidden']) !!}
                {!! Form::submit('Exportar',['class'=>'btn btn-success','id'=>'submit']) !!}
            </div>
        </div>
    </div>
</div>
{!! Form::close() !!}
@stop
@section('FooterInclude')
<script src="{{asset("lb-faveo/js/daterangepicker.js")}}" type="text/javascript"></script>
<script type="text/javascript">
$(function () {

    var start = moment().subtract(29, 'days');
    var end = moment();

    function cb(start, end) {
        $('#reportrange span').html(start.format('DD-MM-YYYY') + ' : ' + end.format('DD-MM-YYYY'));
    }

    $('#reportrange').daterangepicker({
        startDate: start,
        endDate: end,
        locale: {
        "format": "DD-MM-YYYY",
        "separator": " - ",
        "applyLabel": "Aplicar",
        "cancelLabel": "Cancelar",
        "fromLabel": "De",
        "toLabel": "Até",
        "customRangeLabel": "Personalizado",
        "weekLabel": "S",
        "daysOfWeek": [
            "Do",
            "Se",
            "Te",
            "Qu",
            "Qu",
            "Se",
            "Sa"
        ],
        "monthNames": [
            "Janeiro",
            "Fevereiro",
            "Março",
            "Abril",
            "Maio",
            "Junho",
            "Julho",
            "Agosto",
            "Setembro",
            "Outubro",
            "Novembro",
            "Dezembro"
        ],
        "firstDay": 1
        },
        ranges: {
            'Hoje': [moment(), moment()],
            'Ontem': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Últimos 7 Dias': [moment().subtract(6, 'days'), moment()],
            'Últimos 30 Dias': [moment().subtract(29, 'days'), moment()],
            'Este Mês': [moment().startOf('month'), moment().endOf('month')],
            'Último Mês': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        }
    }, cb);

    cb(start, end);

});
$("#submit").on('click', function () {
    var date = $("#date").text();
    $("#hidden").val(date);
});


</script>
@stop