@extends('themes.default1.installer.layout.installer')

@section('license')
done
@stop

@section('environment')
done
@stop

@section('database')
active
@stop

@section('content') 

    <h1 style="text-align: center;">Instalação do Banco de Dados</h1>
        Este teste verifica os requisitos para instalar o banco de dados do Tikiri.<br/>
<?php
/**
 * Faveo HELPDESK Probe
 *
 * Copyright (c) 2014 Ladybird Web Solution.
 *
 */
// -- Please provide valid database connection parameters ------------------------------
$default = Session::get('default');
$host = Session::get('host');
$username = Session::get('username');
$password = Session::get('password');
$databasename = Session::get('databasename');
$port = Session::get('port');
define('DB_HOST', $host); // Address of your MySQL server (usually localhost)
define('DB_USER', $username); // Username that is used to connect to the server
define('DB_PASS', $password); // User's password
define('DB_NAME', $databasename); // Name of the database you are connecting to
define('DB_PORT', $port); // Name of the database you are connecting to
define('PROBE_VERSION', '4.2');
define('PROBE_FOR', 'Tikiri');
define('STATUS_OK', 'Ok');
define('STATUS_WARNING', 'Warning');
define('STATUS_ERROR', 'Error');
class TestResult {
    var $message;
    var $status;
    function __construct($message, $status = STATUS_OK) {
        $this->message = $message;
        $this->status = $status;
    }
} // TestResult
if (DB_HOST && DB_USER && DB_NAME) {
    ?>
<?php
    $mysqli_ok = true;
    $results = array();
    // error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
    error_reporting(0);
    if($default == 'mysql') {
        if ($connection = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME)) {
            $results[] = new TestResult('Conectado ao banco de dados como ' . DB_USER . '@' . DB_HOST . DB_PORT, STATUS_OK);
            if (mysqli_select_db($connection, DB_NAME)) {
                $results[] = new TestResult('Banco de Dados "' . DB_NAME . '" selecionado', STATUS_OK);
                $mysqli_version = mysqli_get_server_info($connection);
                if (version_compare($mysqli_version, '5') >= 0) {
                    $results[] = new TestResult('A versão MySQL é ' . $mysqli_version, STATUS_OK);
                    // $have_inno = check_have_inno($connection);
                    $sql = "SHOW TABLES FROM ".DB_NAME;
                    $res = mysqli_query($connection, $sql);
                    if (mysqli_fetch_array($res) === null) {
                        $results[] = new TestResult('O banco de dados está vazio');
                        $mysqli_ok = true;
                    } else {
                        $results[] = new TestResult('A instalação do Tikir requer um banco de dados vazio, seu banco de dados já possui tabelas e dados.', STATUS_ERROR);
                        $mysqli_ok = false;
                    }
                } else {
                    $results[] = new TestResult('A versão do seu MySQL é ' . $mysqli_version . '. Recomendamos fazer um upgrade para, no mínimo, MySQL5!', STATUS_ERROR);
                    $mysqli_ok = false;
                } // if
            } else {
                $results[] = new TestResult('Falha ao selecionar o banco de dados. ' . mysqli_error(), STATUS_ERROR);
                $mysqli_ok = false;
            } // if
        } else {
            $results[] = new TestResult('Falha ao conectar ao banco de dados. ' . mysqli_error(), STATUS_ERROR);
            $mysqli_ok = false;
        } // if
    } 
    // elseif($default == 'pgsql') {
    //     if ($connection2 = pg_connect("'host='.DB_HOST.' port='.DB_PORT.' dbname='.DB_NAME.' user='.DB_USER.' password='.DB_PASS.")) {
    //         $results[] = new TestResult('Connected to database as ' . DB_USER . '@' . DB_HOST, STATUS_OK);
    //     } else {
    //         $results[] = new TestResult('Failed to connect to database. <br> PgSQL said: ' . mysqli_error(), STATUS_ERROR);
    //         $mysqli_ok = false;
    //     }
    // } elseif($default == 'sqlsrv') {
        
    // }
    // ---------------------------------------------------
    //  Validators
    // ---------------------------------------------------
// dd($results);
    ?><p class="setup-actions step"><?php
    foreach ($results as $result) {
        print '<br><span class="' . strtolower($result->status) . '">' . $result->status . '</span> &mdash; ' . $result->message . '';
    } // foreach
    ?> </p>
<!-- </ul> -->
<?php } else { ?>
      <p>O teste do banco de dados está <strong>desabilitado</strong>. Para habilitá-lo consulte o suporte.</p>
      <ul>
        <li>DB_HOST &mdash; Address of your MySQL server (usually localhost)</li>
        <li>DB_USER &mdash; Username that is used to connect to the server</li>
        <li>DB_PASS &mdash; User's password</li>
        <li>DB_NAME &mdash; Name of the database you are connecting to</li>
      </ul>
      <p>Once these settings are set, probe.php will check if your database meets the system requirements.</p>
<?php $mysqli_ok = null;?>
<?php }  ?>

<?php if ($mysqli_ok !== null) {?>
<?php if ($mysqli_ok) {?>

<div class="woocommerce-message woocommerce-tracker" >
    <p id="pass">Conexão com banco de dados realizada com sucesso. Este ambiente está apto executar o Tikiri.</p>
</div>

<script src="{{asset("lb-faveo/js/ajax-jquery.min.js")}}"></script>

<span id="wait">Aguarde que pode demorar um pouco...</span>

{!! Form::open( ['id'=>'form','method' => 'POST'] )!!}
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <!-- <b>default</b><br> -->
    <input type="hidden" name="default" value="{!! $default !!}"/>
    <!-- <b>Host</b><br> -->
    <input type="hidden"  name="host" value="{!! $host !!}"/>
    <!-- <b>Database Name</b><br> -->
    <input type="hidden" name="databasename" value="{!! $databasename !!}"/>
    <!-- <b>User Name</b><br> -->
    <input type="hidden" name="username" value="{!! $username !!}"/>
    <!-- <b>User Password</b><br> -->
    <input type="hidden" name="password" value="{!! $password !!}"/>
    <!-- <b>Port</b><br> -->
    <input type="hidden" name="port" value="{!! $port !!}"/>

    <input type="submit" style="display:none;">

</form>

    <div id="show" style="display:none;">
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-9">
                <img src="{{asset("lb-faveo/media/images/gifloader.gif")}}"><br/><br/><br/>
            </div>
        </div>
    </div>

    <div style="border-bottom: 1px solid #eee;">
        <p class="setup-actions step">
            <a href="{{ URL::route('account') }}" class="pull-right" id="next" style="text-color:black"><input type="submit" id="submitme" class="button-primary button button-large button-next" value="Continuar"> </a>
            <a href="{{ URL::route('configuration') }}" class="button button-large button-next" style="float: left">Anterior</a>
        </p>
    </div>

<br/>

<script type="text/javascript">
// submit a ticket
$(document).ready(function () {
    $("#form").submit();
});
    // Edit a ticket
        $('#form').on('submit', function() {
            $.ajax({
                type: "POST",
                url: "{!! route('postconnection') !!}",
                dataType: "html",
                data: $(this).serialize(),
                beforeSend: function() {
                    $("#conn").hide();
                    $("#show").show();
                    $("#wait").show();
                },
                success: function(response) {
                    // $("#dismis").trigger("click");
                    if (response == 1) {
                        $("#show").hide();
                        $("#wait").hide();
                        $("#conn").show();
                        // $("#next1").trigger("click");
                    } else if (response == 0) {
                        alert('Verifique todos os seus campos');
                    }
                }
            })
            return false;
        });
</script>

<?php } else {?>
    <div class="woocommerce-message woocommerce-tracker" >
            <p id="fail">Conexão de banco de dados sem sucesso. Este sistema não atende aos requisitos do sistema Tikiri</p>
            </div>
        <p>Isso significa que as informações de nome de usuário e senha estão incorretas ou não foi possível contactar o servidor do banco de dados. Isso pode significar que o servidor de banco de dados do seu servidor está desativado.</p>
        <ul>
            <li>Tem certeza de que forneceu o nome de usuário e a senha corretos?</li>
            <li>Tem certeza de que você digitou o nome do host correto?</li>
            <li>Tem a certeza de que o servidor de banco de dados está sendo executado?</li>
        </ul>
        <p>Se você não tiver certeza do que esses termos significam, você provavelmente deve entrar em contato com seu host. Se você ainda precisar de ajuda, você sempre pode visitar o <a href="https://tikiri.com.br">Suporte Tikiri </a>.</p>


            <div  style="border-bottom: 1px solid #eee;">
                @if(Cache::has('step4')) <?php Cache::forget('step4'); ?> @endif
                <p class="setup-actions step">
                    <input type="submit" id="submitme" class="button-danger button button-large button-next" style="background-color: #d43f3a;color:#fff;" value="continuar" disabled>
                    <a href="{{URL::route('configuration')}}" class="button button-large button-next" style="float: left;">Anterior</a>
                </p>
            </div>
            <br/><br/>
      <?php } ?> 
    <div id="legend">
        {{-- <ul> --}}
        <p class="setup-actions step">
            <span class="ok">Ok</span> &mdash; Tudo certo<br/>
            <span class="warning">Warning</span> &mdash; Não é um impeditivo de continuar a instalação, mas é necessário para executar alguns recursos do Tikiri.<br/>
            <span class="error">Error</span> &mdash; O Tikiri não funciona sem esse recurso.
        </p>
        {{-- </ul> --}}
    </div>
<?php } // if ?>

@stop