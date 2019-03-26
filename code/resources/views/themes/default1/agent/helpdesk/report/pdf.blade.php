<!DOCTYPE html>
<html>
    <head>
        <title>PDF</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <style type="text/css">
            * {
                font-family: "DejaVu Sans Mono", monospace;
            }
        </style>
        <link href="{{asset("lb-faveo/css/bootstrap.min.css")}}" rel="stylesheet" type="text/css" />
    </head>
    <body>    

        <div style="background-color:#F2F2F2;">
            <h2>
                <div id="logo" class="site-logo text-center" style="font-size: 30px;">
                    <?php
                    $company = App\Model\helpdesk\Settings\Company::where('id', '=', '1')->first();
                    $system = App\Model\helpdesk\Settings\System::where('id', '=', '1')->first();
                    ?>
                    <center>
                        @if($system->url)
                        <a href="{!! $system->url !!}" rel="home">
                            @else
                            <a href="{{url('/')}}" rel="home" style="text-decoration:none;">
                                @endif
                                @if($company->use_logo == 1)
                                <img src="{{asset('uploads/company')}}{{'/'}}{{'6304.logo_azul561px.png'}}" width="100px;"/>
                                @else
                                @if($system->name)
                                {!! $system->name !!}
                                @else
                                <b>Tikiri</b> Sistema de Gestão
                                @endif
                                @endif
                            </a>
                    </center>
                </div>
            </h2>
        </div>
        <br/><br/>
        <?php $help_topic_name = App\Model\helpdesk\Manage\Help_topic::where('id', '=', $table_help_topic)->first(); ?>
        <span class="lead"> Servi&ccedil;o : {!! $help_topic_name->topic !!} </span>
        <br/>
        
        Per&iacute;odo : {!! reset($table_datas[0]) !!} --- {!! end($table_datas)->date !!}
        <br/><br/>
        <span class="lead">Resumo</span>
        <table class="table table-striped" style="font-size:8;">
            <thead>
                <tr>
                    <td>Data</td>
                    @if(array_key_exists('open', $table_datas[1]))
                    <td>Criado</td>
                    @endif
                    @if(array_key_exists('closed', $table_datas[1]))
                    <td>Fechado</td>
                    @endif
                    @if(array_key_exists('reopened', $table_datas[1]))
                    <td>Reaberto</td>
                    @endif
                </tr>
            </thead>
            <tbody>
                <?php
//dd($table_datas[1]);
                $table_open = '';
                $table_closed = '';
                $table_reopened = '';
                foreach ($table_datas as $table_data) {
                    echo '<tr>';
                    echo '<td>' . $table_data->date . '</td>';
                    if (array_key_exists('open', $table_data)) {
                        echo '<td>' . $table_data->open . '</td>';
                        $table_open += $table_data->open;
                    }
                    if (array_key_exists('closed', $table_data)) {
                        echo '<td>' . $table_data->closed . '</td>';
                        $table_closed += $table_data->closed;
                    }
                    if (array_key_exists('reopened', $table_data)) {
                        echo '<td>' . $table_data->reopened . '</td>';
                        $table_reopened += $table_data->reopened;
                    }
                    echo '</tr>';
                }
                ?>          
            </tbody>
        </table>

        <table>
            <tr>
                <td>
                    <span style="color:#F7CF07;">TOTAIS ANDAMENTO</span> : {!! $table_datas[1]->inprogress !!}
                </td>
                <td>
                    @if(array_key_exists('open', $table_data))
                    <span style="color:blue;">CRIADOS</span>  : {!! $table_open !!}
                    @endif
                </td>
                <td>
                    @if(array_key_exists('reopened', $table_data))
                    <span style="color:orange;">REABERTOS</span>  : {!! $table_reopened !!}
                    @endif
                </td>
                <td>
                    @if(array_key_exists('closed', $table_data))
                    <span style="color:#00e765;">FECHADOS</span> : {!! $table_closed !!}
                    @endif    
                </td>
            </tr>
        </table>    


    </body>
</html>