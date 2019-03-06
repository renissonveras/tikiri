@extends('themes.default1.installer.layout.installer')

@section('license')
done
@stop

@section('environment')
done
@stop

@section('database')
done
@stop

@section('locale')
done
@stop

@section('ready')
active
@stop

@section('content')


        <h1 style="text-align: center;">O Tikiri está pronto!</h1>
<div class="woocommerce-message woocommerce-tracker">
                <p>Deu tudo certo com a instalação, seu sistema está instalado e pré-configurado.</p>

            </div>


        <div class="setup-next-steps">
            <div class="setup-next-steps-first">
                <h2>Próximos passos</h2>
                <ul>
                    <li class="setup-product"><a class="button button-primary button-large" href="{!! url('auth/login') !!}" style="float: none; text-align: center; font-size: 24px;    padding: 15px;     line-height: 1;">Acessar o Tikiri</a>
                    </li>
                </ul>
            </div>
            <div class="setup-next-steps-last">
                <h2>Precisa de ajuda?</h2>
                <ul>
                    <li class="video-walkthrough"><a target="_blank" href="https://tikiri.com.br/loja/">Loja de Serviços do Tikiri</a>
                    </li>
                    <li class="sidekick"><a target="_blank" href="https://tikiri.com.br/tikiri/knowledgebase">Base de Conhecimento do Tikiri</a>
                    </li>

                    <li class="newsletter"><a href="https://tikiri.com.br/contato">Contato da Equipe de Desenvolvimento</a>
                    </li>
                    <br>
                    <br>
                    <br>
                </ul>
            </div>
        </div>

    <script src="{{asset("lb-faveo/js/install/jquery.min.js")}}"></script>
    <script src="{{asset("lb-faveo/js/index.js")}}"></script>

  @stop