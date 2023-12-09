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
                                @if($system->name)
                                {!! $system->name !!}
                                @else
                                SISTEMA <b>TIKIRI</b>
                                @endif

                    </center>
                </div>
            </h2>
        </div>
        <br/>
        <?php $help_topic_name = App\Model\helpdesk\Manage\Help_topic::where('id', '=', $table_help_topic)->first(); ?>
        <span class="lead"> Serviço : {!! $help_topic_name->topic !!} </span>
        <br/>
        Período: {!! reset($table_datas[0]) !!} - {!! end($table_datas)->date !!}
        <br/><br/>
        <span class="lead">Resumo:</span>
        <table class="table table-striped" border="1" cellpadding="3" cellspacing="0" style="font-size:8;">
            <thead>
                <tr>
                    <td align="center">Data</td>
                    <td align="center">Criados</td>
                    <td align="center">Fechados</td>
                    <td align="center">Reabertos</td>
                </tr>
            </thead>
            <tbody>
                <?php
//dd($table_datas[1]);
                $table_open = 0;
                $table_closed = 0;
                $table_reopened = 0;
                foreach ($table_datas as $table_data) {
                    echo '<tr>';
                        echo '<td align="center">' . $table_data->date . '</td>';
                        //if ($table_data->open) {
                            echo '<td align="center">' . $table_data->open . '</td>';
                            $table_open += $table_data->open;
                        //}
                        //if ($table_data->closed) {
                            echo '<td align="center">' . $table_data->closed . '</td>';
                            $table_closed += $table_data->closed;
                        //}
                        //if ($table_data->reopened) {
                            echo '<td align="center">' . $table_data->reopened . '</td>';
                            $table_reopened += $table_data->reopened;
                        //}
                    echo '</tr>';
                }
                ?>          
            </tbody>
        </table>

        <table>
            <tr>
                <td colspan="4"  align="center">TOTAIS</td>
            </tr>
            <tr>
                <td align="center">
                    <span>Em progresso</span> : {!! $table_datas[1]->inprogress !!}
                </td>
                <td align="center">
                    <span>Criados</span>  : {!! $table_open !!}
                </td>
                <td align="center">
                    <span>Reabertos</span>  : {!! $table_reopened !!}
                </td>
                <td align="center">
                    <span>Fechados</span> : {!! $table_closed !!}
                </td>
            </tr>
        </table>    


    </body>
</html>