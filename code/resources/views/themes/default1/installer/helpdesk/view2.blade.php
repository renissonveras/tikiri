@extends('themes.default1.installer.layout.installer')

@section('license')
done    
@stop

@section('environment')
active
@stop



@section('content')

<div id="form-content">
<center><h1>Teste do Ambiente</h1></center>
         @if (Session::has('fail_to_change'))
           <div class="woocommerce-message woocommerce-tracker" >
                <p id="fail">{!!Session::get('fail_to_change')!!}</p>
            </div>
         @endif
<?php
define('PROBE_VERSION', '1.0');
define('PROBE_FOR', 'Tikiri ('.Config::get('app.version').')');
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
}
?>

<div id="wrapper">
        <br>
        <b>Testando para:</b>
        <?php echo PROBE_FOR; ?>
        <br/>
        <br/>
    Este teste verifica os requisitos para instalar o Tikiri.
    
    <br/><br/>
    <p><b>OBS:</b>&nbsp;O Tikiri não funciona corretamente sem o JavaScript.  Desta forma, para que a instalação e diversos recursos do sistema funcionem é necessário que o navegador esteja habilitado para executar Javascript.</p>
    <p><b>Extensões do Servidor Web:</b> É necessário que os módulos de Pretty URLs, Mod_rewrite ou Search Engine Friendly estejam habilitados no seu servidor Web seja ele Apache ou Nginx.</p>
     <?php

function validate_php(&$results) {
    if (version_compare(PHP_VERSION, '5.5') == -1) {
        $results[] = new TestResult('A versão do PHP mínima para executar o Tikiri é 5.5. Sua versão do PHP é: ' . PHP_VERSION, STATUS_ERROR);
        return false;
    } else {
        $results[] = new TestResult('Sua versão do PHP é ' . PHP_VERSION, STATUS_OK);
        return true;
    } // if
} // validate_php

/**
 * Convert filesize value from php.ini to bytes
 *
 * Convert PHP config value (2M, 8M, 200K...) to bytes. This function was taken  from PHP documentation. $val is string
 * value that need to be converted
 *
 * @param string $val
 * @return integer
 */
function php_config_value_to_bytes($val) {
    $val = trim($val);
    $last = strtolower($val{strlen($val) - 1});
    switch ($last) {
        // The 'G' modifier is available since PHP 5.1.0
        case 'g':
            $val *= 1024;
        case 'm':
            $val *= 1024;
        case 'k':
            $val *= 1024;
    } // if

    return (integer) $val;
} // php_config_value_to_bytes

/**
 * to check file permissions 
 *
 */
function checkFilePermission(&$results)
{
    $path2 = base_path().DIRECTORY_SEPARATOR.'storage';
    $f2 = substr(sprintf("%o",fileperms($path2)),-3);
    if (file_exists(base_path() . DIRECTORY_SEPARATOR . "example.env")) {
        $path1 = base_path().DIRECTORY_SEPARATOR.'example.env';
        $f1 = substr(sprintf("%o",fileperms($path1)),-3);
    } else {
        $f1 = '644';
    }
    if( $f1 >= '644' && $f2 >= '755') {
        $results[] = new TestResult('Tudo certo com a permissão dos arquivos', STATUS_OK);
        return true;
    } else {
        if(isset($path1)){
        $results[] = new TestResult('Falta permissão em arquivos.<ul><b>Altere a permissão nos seguintes arquivos</b><li>'.$path1.'&nbsp: \'644\'</li><li>'.$path2.'&nbsp: \'755\'</li></ul></br>Altere a permissão manualmente no seu servidor ou <a href="change-file-permission">clique aqui.</a>', STATUS_ERROR);
        } else {
            $results[] = new TestResult('Falta permissão em arquivos.<ul><b>Configura a permissão para "755" para os seguintes arquivos</b><li>'.$path2.'</li></ul></br>Altere a permissão manualmente no seu servidor ou <a href="change-file-permission">clique aqui.</a>', STATUS_ERROR);
        }
        return false;
    }
}

/**
 * Validate memory limit
 *
 * @param array $result
 */
function validate_memory_limit(&$results) {
    $memory_limit = php_config_value_to_bytes(ini_get('memory_limit'));

    $formatted_memory_limit = $memory_limit === -1 ? 'unlimited' : format_file_size($memory_limit);

    if ($memory_limit === -1 || $memory_limit >= 67108864) {
        $results[] = new TestResult('Limite de memória: ' . $formatted_memory_limit, STATUS_OK);
        return true;
    } else {
        $results[] = new TestResult('Seu limite de memória é muito baixo para completar a instalação. O valor mínimo é 64MB, você precisa alterar para ' . $formatted_memory_limit, STATUS_ERROR);
        return false;
    } // if
} // validate_memory_limit

/**
 * Format filesize
 *
 * @param string $value
 * @return string
 */
function format_file_size($value) {
    $data = array(
        'TB' => 1099511627776,
        'GB' => 1073741824,
        'MB' => 1048576,
        'kb' => 1024,
    );

    // commented because of integer overflow on 32bit sistems
    // http://php.net/manual/en/language.types.integer.php#language.types.integer.overflow
    // $value = (integer) $value;
    foreach ($data as $unit => $bytes) {
        $in_unit = $value / $bytes;
        if ($in_unit > 0.9) {
            return trim(trim(number_format($in_unit, 2), '0'), '.') . $unit;
        } // if
    } // foreach

    return $value . 'b';
} // format_file_size

function validate_zend_compatibility_mode(&$results) {
    $ok = true;

    if (version_compare(PHP_VERSION, '5.0') >= 0) {
        if (ini_get('zend.ze1_compatibility_mode')) {
            $results[] = new TestResult('zend.ze1_compatibility_mode is set to On. This can cause some strange problems. It is strongly suggested to turn this value to Off (in your php.ini file)', STATUS_WARNING);
            $ok = false;
        } else {
            $results[] = new TestResult('zend.ze1_compatibility_mode is turned Off', STATUS_OK);
        } // if
    } // if

    return $ok;
} // validate_zend_compatibility_mode

function validate_extensions(&$results) {
    $ok = true;

    $required_extensions = array('mcrypt', 'openssl', 'pdo', 'fileinfo', 'curl', 'zip', 'mbstring');

    foreach ($required_extensions as $required_extension) {
        if (extension_loaded($required_extension)) {
            $results[] = new TestResult("Extensão REQUERIDA '$required_extension' encontrada", STATUS_OK);
        } else {
            $results[] = new TestResult("A extensão '$required_extension' é NECESSÁRIA para o Tikiri ", STATUS_ERROR);
            $ok = false;
        } // if
    } // foreach

    // Check for eAccelerator
    if (extension_loaded('eAccelerator') && ini_get('eaccelerator.enable')) {
        $results[] = new TestResult("eAccelerator opcode cache enabled. <span class=\"details\">eAccelerator opcode cache causes Faveo Helpdesk to crash. <a href=\"https://eaccelerator.net/wiki/Settings\">Disable it</a> for folder where Faveo Helpdesk is installed, or use APC instead: <a href=\"http://www.php.net/apc\">http://www.php.net/apc</a>.</span>", STATUS_ERROR);
        $ok = false;
    } // if

    // Check for XCache
    if (extension_loaded('XCache') && ini_get('xcache.cacher')) {
        $results[] = new TestResult("XCache opcode cache enabled. <span class=\"details\">XCache opcode cache causes Faveo Helpdesk to crash. <a href=\"http://xcache.lighttpd.net/wiki/XcacheIni\">Disable it</a> for folder where Faveo Helpdesk is installed, or use APC instead: <a href=\"http://www.php.net/apc\">http://www.php.net/apc</a>.</span>", STATUS_ERROR);
        $ok = false;
    } // if

    $recommended_extensions = array(
        'imap' => 'IMAP extension is used for connecting to mail server using IMAP settings to fetch emails in the system.'
        // 'gd' => 'GD is used for image manipulation. Without it, system is not able to create thumbnails for files or manage avatars, logos and project icons. Please refer to <a href="http://www.php.net/manual/en/image.installation.php">this</a> page for installation instructions',
        // 'mbstring' => 'MultiByte String is used for work with Unicode. Without it, system may not split words and string properly and you can have weird question mark characters in Recent Activities for example. Please refer to <a href="http://www.php.net/manual/en/mbstring.installation.php">this</a> page for installation instructions',
        // 'curl' => 'cURL is used to support various network tasks. Please refer to <a href="http://www.php.net/manual/en/curl.installation.php">this</a> page for installation instructions',
        // 'iconv' => 'Iconv is used for character set conversion. Without it, system is a bit slower when converting different character set. Please refer to <a href="http://www.php.net/manual/en/iconv.installation.php">this</a> page for installation instructions',
        // 'imap' => 'IMAP is used to connect to POP3 and IMAP servers. Without it, Incoming Mail module will not work. Please refer to <a href="http://www.php.net/manual/en/imap.installation.php">this</a> page for installation instructions',
        // 'zlib' => 'ZLIB is used to read and write gzip (.gz) compressed files',
        // SVN extension ommited, to avoid confusion
    );

    foreach ($recommended_extensions as $recommended_extension => $recommended_extension_desc) {
        if (extension_loaded($recommended_extension)) {
            $results[] = new TestResult("Extensão RECOMENDADA '$recommended_extension' encontrada", STATUS_OK);
        } else {
            $results[] = new TestResult("A extensão '$recommended_extension' não foi encontrada. <span class=\"details\">$recommended_extension_desc</span>", STATUS_WARNING);
        } // if
    } // foreach

    return $ok;
} // validate_extensions

/**
 * function to check if there are laravel required functions are disabled
 */
function checkDisabledFunctions(&$results) {
    $ok = true;
    $sets = explode(",", ini_get('disable_functions'));
    $required_functions = ['escapeshellarg'];
    // dd($required_functions,$sets);
    foreach ($sets as $key) {
        $key = trim($key);
        foreach ($required_functions as $value) {
            if($key == $value) {
                if (strpos(ini_get('disable_functions'), $key) !== false) {
                    $results[] = new TestResult("Function '$value' is required in order to run Faveo Helpdesk. Please check php.ini to enable this function or contact your server administrator", STATUS_ERROR);
                    $ok = false;
                } else {
                    $results[] = new TestResult("Todas as funções requeridas encontradas", STATUS_OK);
                }
            }
        }
    }
    return $ok;
}

function checkMaxExecutiontime(&$results)
{
    $ok = true;
    if ((int)ini_get('max_execution_time') >=  120) {
        $results[] = new TestResult("O parâmetro Maximum execution time está conforme necessário.", STATUS_OK);
    } else {
        $results[] = new TestResult("O parâmetro Maximum execution time está muito baixo. O recomendado é 120 segundos.", STATUS_WARNING);
    }
    return $ok;
}
// ---------------------------------------------------
//  Do the magic
// ---------------------------------------------------

$results = array();

$php_ok = validate_php($results);
$memory_ok = validate_memory_limit($results);
$extensions_ok = validate_extensions($results);
$file_permission = checkFilePermission($results);
$required_functions = checkDisabledFunctions($results);
$check_execution_time = checkMaxExecutiontime($results);
?>
<p class="setup-actions step">
<?php 
foreach ($results as $result) {
    print '<span class="' . strtolower($result->status) . '">' . $result->status . '</span> &mdash; ' . $result->message . '<br/>';
} // foreach
?>
</p>
<?php
if ($php_ok && $memory_ok && $extensions_ok && $file_permission && $required_functions && $check_execution_time) {
    ?>
</div>  

            <div class="woocommerce-message woocommerce-tracker" >
                <p id="pass">OK, tudo certo para executar o Tikiri</p>
            </div>


    <form action="{{URL::route('postprerequisites')}}" method="post"  class="border-line">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <p class="setup-actions step">
            <input type="submit" id="submitme" class="button-primary button button-large button-next" value="Continuar">
            <a href="{!! route('licence') !!}" class="button button-large button-next" style="float: left">Voltar</a>
        </p>
    </form>
</br>
    <?php
} else {

    ?></div><br>
            
            <div class="woocommerce-message woocommerce-tracker" >
                <p id="fail">Seu ambiente ainda não suporta o Tikiri.</p>
            </div>
<p class="setup-actions step">
    <a href="{{URL::route('licence')}}" style="float: left"><button value="prev" class="button-primary button button-large">Anterior</button></a>
    <button disabled="" class="button-primary button button-large button-next" style="float: right">Continuar</button>
</p> <?php
}
?>

<div id="legend">
        {{-- <ul> --}}
          <p><span class="ok">Ok</span> &mdash; Tudo certo<br/>
          <span class="warning">Warning</span> &mdash; Não é um impeditivo de continuar a instalação, mas é necessário para executar alguns recursos do Tikiri.<br/>
          <span class="error">Error</span> &mdash; O Tikiri não funciona sem esse recurso.</p>
        {{-- </ul> --}}
      </div>
</div>
</div>
@stop