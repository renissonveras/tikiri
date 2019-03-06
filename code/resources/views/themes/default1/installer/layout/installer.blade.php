<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta name="viewport" content="width=device-width">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tikiri - Instalador</title>
        <link href="{{asset("lb-faveo/media/images/favicon.ico")}}"  rel="shortcut icon" />
        <link href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery.ui.css" rel="stylesheet" />
        <link href="{{asset("lb-faveo/css/load-styles.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/css.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/admin.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/setup.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/activation.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/style.css")}}" rel="stylesheet" type="text/css" />
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/ggpopover.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/prism.css")}}" rel="stylesheet" type="text/css" />
        <link href="{{asset("lb-faveo/css/chosen.css")}}" rel="stylesheet" type="text/css" />
    </head>
    <body class="setup wp-core-ui">
        <center><a href="https://tikiri.com.br">
            <img src="{{asset("lb-faveo/media/installer/tikiri.png")}}" alt="faveo" width="250px"></a></center>
    <ol class="setup-steps">
        <li class="@yield('license')">Contrato de Licença</li>
        <li class="@yield('environment')">Teste do Ambiente</li>
        <li class="@yield('database')">Instalação do Banco de Dados</li>
        <li class="@yield('locale')">Informações do Local</li>
        <li class="@yield('ready')">Pronto</li>
    </ol>
    <div class="setup-content">
        @yield('content')
    </div>
    <p style="text-align: center;"> Copyright &copy; 2015 - <?php echo date('Y')?> · Ladybird Web Solution Pvt Ltd. All Rights Reserved. Powered by <a target="_blank" href="http://www.faveohelpdesk.com">Faveo </a></p>
    <p style="text-align: center;"> Versão alterada/adaptada para <a href="https://tikiri.com.br" target="_blank">tikiri.com.br</a></p>

    <script src="{{asset("lb-faveo/js/ggpopover.js")}}" type="text/javascript"></script>

    <script type="text/javascript">
        $('[data-toggle="popover"]').ggpopover();
    </script>

    <script src="{{asset("lb-faveo/js/chosen.jquery.js")}}" type="text/javascript"></script>

    <script src="{{asset("lb-faveo/js/prism.js")}}" type="text/javascript"></script>

    <script type="text/javascript">
        var config = {
            '.chosen-select': {},
            '.chosen-select-deselect': {
                allow_single_deselect: true
            },
            '.chosen-select-no-single': {
                disable_search_threshold: 10
            },
            '.chosen-select-no-results': {
                no_results_text: 'Ops, nada encontrado!'
            },
            '.chosen-select-width': {
                width: "95%"
            }
        }
        for (var selector in config) {
            $(selector).chosen(config[selector]);
        }
    </script>

</body>
</html>