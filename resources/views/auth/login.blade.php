@extends('themes.default1.client.layout.logclient')

@section('home')
    class = "nav-item active"
@stop

@section('breadcrumb')
    <ol class="breadcrumb float-sm-right ">
        <li class="breadcrumb-item"> <i class="fas fa-home"> </i> {!! Lang::get('lang.you_are_here') !!} : &nbsp;</li>
            <li><a href="{!! URL::route('post.login') !!}">{!! Lang::get('lang.login') !!}</a></li>
        </ol>
    </div>
@stop

@section('content')

    @if(Session::has('status'))
    <div class="alert alert-success alert-dismissable">
        <i class="fa  fa-check-circle"> </i> <b> {!! Lang::get('lang.success') !!} </b>
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{Session::get('status')}}
    </div>

    @endif

    @if(Session::has('error'))
    <div class="alert alert-danger alert-dismissable">
        <i class="fa  fa-check-circle"> </i> <b> {!! Lang::get('lang.alert') !!} </b>
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{Session::get('error')}}
    </div>
    @else

    @if (count($errors) > 0)
    <div class="alert alert-danger alert-dismissable">
        <i class="fa fa-ban"></i>
        <b>{!! Lang::get('lang.alert') !!} !</b>
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </div>
    @endif
    @endif

    <div id="content" class="site-content col-md-12">
        
        <div id="corewidgetbox" class="wid">
            
            <div id="wbox" class="widgetrow text-center">
                
                @if(Auth::user())
                @else
                <span onclick="javascript: window.location.href='{{url('auth/register')}}';">
                    <a href="{{url('auth/register')}}"  class="widgetrowitem defaultwidget"  style="background-image:url({{ URL::asset('lb-faveo/media/images/register.png') }})"  >
                        <span class="widgetitemtitle"  style="color: rgb(0, 154, 186)">{!! Lang::get('lang.register') !!}</span>
                    </a>
                </span>
                @endif
                <?php $system = App\Model\helpdesk\Settings\System::where('id', '=', '1')->first();            
                ?>
                @if($system != null) 
                    @if($system->status) 
                        @if($system->status == 1)
                            <span onclick="javascript: window.location.href='{!! URL::route('form') !!}';">
                                <a href="{!! URL::route('form') !!}" class="widgetrowitem defaultwidget" style="background-image:url({{ URL::asset('lb-faveo/media/images/submitticket.png') }})">
                                    <div style="font-size: 13px ; color: rgb(0, 154, 186)"" class="widgetitemtitle">{!! Lang::get('lang.submit_a_ticket') !!}</div>
                                </a>
                            </span>
                        @endif
                    @endif
                @endif
                <span onclick="javascript: window.location.href='{{url('mytickets')}}';">
                    <a href="{{url('mytickets')}}" class="widgetrowitem defaultwidget" style="background-image:url({{ URL::asset('lb-faveo/media/images/news.png') }})">
                        <span class="widgetitemtitle"  style="color: rgb(0, 154, 186)">{!! Lang::get('lang.my_tickets') !!}</span>
                    </a>
                </span>
                <span onclick="javascript: window.location.href='{{url('/knowledgebase')}}';">
                    <a href="{{url('/knowledgebase')}}" class="widgetrowitem defaultwidget" style="background-image:url({{ URL::asset('lb-faveo/media/images/knowledgebase.png') }})">
                        <span class="widgetitemtitle"  style="color: rgb(0, 154, 186)">{!! Lang::get('lang.knowledge_base') !!}</span>
                    </a>
                </span>
            </div>
        </div>

        <script type="text/javascript"> $(function(){ $('.dialogerror, .dialoginfo, .dialogalert').fadeIn('slow');$("form").bind("submit", function(e){$(this).find("input:submit").attr("disabled", "disabled");});});</script>
        <script type="text/javascript" >try {if (top.location.hostname != self.location.hostname) { throw 1; }} catch (e) { top.location.href = self.location.href; }</script>

        <div class="d-flex justify-content-center">

            <div class="login-box" style=" width: 490px;">

                <div class="form-border">

                    <div align="center">

                        <h4 style="background-color: #0084b4;"> <a href="#" class="logo">
                            <img src="{{ asset('lb-faveo/media/images/logo-tikiri-1-2.png')}}" width="100px;"></a>
                        </h4>
                    </div>

                    <div>

                        <h4 class="box-title" align="center">{{Lang::get('lang.login_to_start_your_session')}}</h4>
                    </div>

                    <!-- form open -->
                    {!!  Form::open(['route' => 'auth.post.login']) !!}

                        <div class="form-group has-feedback {{ $errors->has('email') ? 'has-error' : '' }}" style="display: -webkit-box;">
                            {!! Form::text('email',null,['placeholder'=> Lang::get("lang.email") ,'class' => 'form-control']) !!}
                            <span class="far fa-envelope form-control-feedback" style="top: 9px;left: -25px;color: #6c757d;"></span>
                        </div>

                        <div class="form-group has-feedback {{ $errors->has('password') ? 'has-error' : '' }}" style="display: -webkit-box;">

                            {!! Form::password('password',['placeholder'=>Lang::get("lang.password"),'class' => 'form-control']) !!}
                            <span class="  fa fa-lock form-control-feedback" style="top: 9px;left: -25px;color: #6c757d;"></span>
                        </div>

                        <div>
                            <button type="submit" class="btn btn-primary btn-block btn-flat" STYLE="width: 100%; color: white">{!! Lang::get("lang.login") !!}</button>                        </div>

                        <div class="row mt-2">

                            <div class="col-sm-5">

                                <div>

                                    <label>

                                        <input type="checkbox" name="remember"> {!! Lang::get("lang.remember") !!}
                                    </label>
                                </div>
                            </div>

                            <div class="col-sm-5">

                                <a href="{{url('password/email')}}">{!! Lang::get("lang.iforgot") !!}</a><br>
                            </div>

                            <div class="col-sm-2">

                                <a href="{{url('auth/register')}}" class="text-center">{!! Lang::get("lang.register") !!}</a>
                            </div>
                        </div>

                        <div>
                            @include('themes.default1.client.layout.social-login')
                        </div>

                    {!! Form::close()!!}
                </div>
            </div>
        </div>
    </div>
@stop
