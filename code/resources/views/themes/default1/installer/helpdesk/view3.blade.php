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
<div ng-app="myApp">
    <h1 style="text-align: center;">Instalação do Banco de Dados</h1>
    <p class="wc-setup-content">Abaixo você deve inserir os detalhes da conexão do banco de dados. Se você não tem certeza sobre isso, entre em contato com o seu host.</p>

    @if(Cache::has('fails'))
    <div class="wc-setup-content">
        <div class="woocommerce-message woocommerce-tracker">
            <div class="fail">
                <span id="fail">{!! Lang::get('lang.fails') !!}! {{Cache::get('fails')}}</span><br/><br/>
            </div>
        </div>        
    </div>  
    <?php Cache::forget('fails'); ?>
    @endif

    @if($errors->has('default') || $errors->has('host') || $errors->has('port') || $errors->has('databasename') || $errors->has('username') || $errors->has('password'))
    <div class="wc-setup-content">
        <div class="woocommerce-message woocommerce-tracker">
            <div class="fail">
                {!! $errors->first('default', '<spam id="fail">:message</spam><br/>') !!}
                {!! $errors->first('host', '<spam id="fail">:message</spam><br/>') !!}
                {!! $errors->first('port', '<spam id="fail">:message</spam><br/>') !!}
                {!! $errors->first('databasename', '<spam id="fail">:message</spam><br/>') !!}
                {!! $errors->first('username', '<spam id="fail">:message</spam><br/>') !!}
                {!! $errors->first('password', '<spam id="fail">:message</spam><br/>') !!}
                <br/>
            </div>
        </div>
    </div>
    @endif

    {!! Form::open(['url'=> '/step4post', 'id' => 'databaseform']) !!}
    <table ng-controller="MainController">
        <tr>
            <td>
                <label for="selectbox1">Database <span style="color: red;font-size:12px;">*</span></label>
            </td>
            <td>
                <div class="side-by-side clearfix moveleftthre">
                    <div>
                        <select name="default" data-placeholder="Choose a SQL format..." class="chosen-select" style="width:290px;" tabindex="2">
                            <option value="mysql">MySQL</option>
                        </select>
                    </div>
                </div>
            </td>
            <td>
                <button type="button" data-toggle="popover" data-placement="right" data-arrowcolor="#eeeeee" data-bordercolor="#bbbbbb" data-title-backcolor="#cccccc" data-title-bordercolor="#bbbbbb" data-title-textcolor="#444444" data-content-backcolor="#eeeeee" data-content-textcolor="#888888" title="@{{Databasetitle}}" data-content="@{{Databasecontent}}" style="padding: 0px;border: 0px; border-radius: 5px;"><i class="fa fa-question-circle" style="padding: 0px;"></i>
                </button>
            </td>
        </tr>
        <tr>
            <td>
                <label for="box1">Host<span style="color: red;font-size:12px;">*</span></label>
            </td>
            <td>
                {!! Form::text('host', null, ['required' => true]) !!}
            </td>
            <td>
                <button type="button" data-toggle="popover" data-placement="right" data-arrowcolor="#eeeeee" data-bordercolor="#bbbbbb" data-title-backcolor="#cccccc" data-title-bordercolor="#bbbbbb" data-title-textcolor="#444444" data-content-backcolor="#eeeeee" data-content-textcolor="#888888" title="@{{Hosttitle}}" data-content="@{{Hostcontent}}" style="padding: 0px;border: 0px; border-radius: 5px;"><i class="fa fa-question-circle" style="padding: 0px;"></i>
                </button>
            </td>
        </tr>
        <tr>
            <td>
                <label for="box2">Porta</label>
            </td>
            <td>
                {!! Form::text('port', null, ['onkeydown' => 'return CheckPortForInput(event)']) !!}
            </td>
            <td>
                <button type="button" data-toggle="popover" data-placement="right" data-arrowcolor="#eeeeee" data-bordercolor="#bbbbbb" data-title-backcolor="#cccccc" data-title-bordercolor="#bbbbbb" data-title-textcolor="#444444" data-content-backcolor="#eeeeee" data-content-textcolor="#888888" title="@{{Porttitle}}" data-content="@{{Portcontent}}" style="padding: 0px;border: 0px; border-radius: 5px;"><i class="fa fa-question-circle" style="padding: 0px;"></i>
                </button>
            </td>
        </tr>
        <tr>
            <td>
                <label for="box3">Nome do Database<span style="color: red;font-size:12px;">*</span></label>
            </td>
            <td>
                {!! Form::text('databasename', null, ['required' => true]) !!}
            </td>
            <td>
                <button type="button" data-toggle="popover" data-placement="right" data-arrowcolor="#eeeeee" data-bordercolor="#bbbbbb" data-title-backcolor="#cccccc" data-title-bordercolor="#bbbbbb" data-title-textcolor="#444444" data-content-backcolor="#eeeeee" data-content-textcolor="#888888" title="@{{Databasenametitle}}" data-content="@{{Databasenamecontent}}" style="padding: 0px;border: 0px; border-radius: 5px;"><i class="fa fa-question-circle" style="padding: 0px;"></i>
                </button>
            </td>
        </tr>
        <tr>
            <td>
                <label for="box4">Usuário<span style="color: red; font-size: 12px;">*</span></label>
            </td>
            <td>
                {!! Form::text('username', null, ['required' => true]) !!}
            </td>
            <td>
                <button type="button" data-toggle="popover" data-placement="right" data-arrowcolor="#eeeeee" data-bordercolor="#bbbbbb" data-title-backcolor="#cccccc" data-title-bordercolor="#bbbbbb" data-title-textcolor="#444444" data-content-backcolor="#eeeeee" data-content-textcolor="#888888" title="@{{Usertitle}}" data-content="@{{Usercontent}}" style="padding: 0px;border: 0px; border-radius: 5px;"><i class="fa fa-question-circle" style="padding: 0px;"></i>
                </button>
            </td>
        </tr>
        <tr>
            <td>
                <label for="box5">Senha</label>
            </td>
            <td>
                <input type="text" name="password"> 
            </td>
            <td>
                <button type="button" data-toggle="popover" data-placement="right" data-arrowcolor="#eeeeee" data-bordercolor="#bbbbbb" data-title-backcolor="#cccccc" data-title-bordercolor="#bbbbbb" data-title-textcolor="#444444" data-content-backcolor="#eeeeee" data-content-textcolor="#888888" title="@{{Passwordtitle}}" data-content="@{{Passwordcontent}}" style="padding: 0px;border: 0px; border-radius: 5px;"><i class="fa fa-question-circle" style="padding: 0px;"></i>
                </button>
            </td>
        </tr>
    </table>
    <br>
    <p class="setup-actions step">
        <input type="submit" id="submitme" class="button-primary button button-large button-next" value="Continuar">
        <a href="{!! route('prerequisites') !!}" class="button button-large button-next" style="float: left">Anterior</a>
    </p>
    <br>
</form>
</div>
<script src="{{asset("lb-faveo/js/install/jquery-1.10.2.js")}}"></script>
<script src="{{asset("lb-faveo/js/install/angular.min.js")}}"></script>
<script src="{{asset("lb-faveo/js/angular2.js")}}" type="text/javascript"></script>
<script type="text/javascript">
    function CheckPortForInput(e) {
        var code = e.which || e.keyCode;
        if (e.ctrlKey != true){
            if((code >=48 && code<= 57) || code == 8 || code == 46 || e.keyCode == 9 || e.keyCode == 13) {
                return true;
            }
        } else {
            if((code == 65 || code == 97) || (code == 88 || code == 120) || (code == 86 || code == 118)) {
                return true;
            }
        }
        return false;
    }
</script>
<script type="text/javascript">
    @if($errors->has('host'))
        addErrorClass('host');
    @endif
    @if($errors->has('host'))
        addErrorClass('host');
    @endif
    @if($errors->has('databasename'))
        addErrorClass('databasename');
    @endif
    @if($errors->has('username'))
        addErrorClass('username');
    @endif
    @if($errors->has('password'))
        addErrorClass('password');
    @endif

    $('#databaseform').on('submit', function(e){
        $("#databaseform input[type=text]").each(function(){
            if($(this).attr('name') == 'host' || $(this).attr('name') == 'databasename' || $(this).attr('name') == 'username'){
                if ($(this).val() == '') {
                    $(this).css('border-color','red')
                    $(this).css('border-width','1px');
                    e.preventDefault();
                    alert('Please fill all required values.');
                }
            }
        });
    });

    $('input[type=text]').on('blur', function(){
        if($(this).attr('name') == 'host' || $(this).attr('name') == 'databasename' || $(this).attr('name') == 'username'){
            if ($(this).val() == '') {
                addErrorClass($(this).attr('name'));
            }
        }
    })

    function addErrorClass(name){
        var target = document.getElementsByName(name);
        $(target[0]).css('border-color','red');
        $(target[0]).css('border-width','1px');
    }

    $('input').on('focus', function(){
        $(this).css('border-color','#A9A9A9')
        $(this).css('border-width','1px');
    })
</script>
</div>
@stop