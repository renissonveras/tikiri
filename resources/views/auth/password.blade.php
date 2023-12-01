@extends('themes.default1.client.layout.logclient')

@section('home')
    class = "nav-item active"
@stop

@section('breadcrumb')
    <ol class="breadcrumb float-sm-right ">
        <li class="breadcrumb-item"> <i class="fas fa-home"> </i> {!! Lang::get('lang.you_are_here') !!} :&nbsp; </li>
            <li><a href="{!! URL::route('/') !!}">{!! Lang::get('lang.forgot_password') !!}</a></li>
        </ol>
@stop

@section('content')

    @if(Session::has('status'))
    <div class="col-sm-12">
        <div class="alert alert-success alert-dismissable">
            <i class="fa  fa-check-circle"> </i> <b> {!! Lang::get('lang.success') !!} </b>
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            {{Session::get('status')}}
        </div>
    </div>
    @endif

<div id="content" class="site-content col-md-12">

    <div id="corewidgetbox" class="wid">

        <div id="wbox" class="widgetrow text-center">

            @if(Auth::user())
            @else
            <span onclick="javascript: window.location.href='{{url('auth/register')}}';">
                <a href="{{url('auth/register')}}" class="widgetrowitem defaultwidget"   style="background-image:url({{ URL::asset('lb-faveo/media/images/register.png') }})">
                    <span class="widgetitemtitle">{!! Lang::get('lang.register') !!}</span>
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
                                <span class="widgetitemtitle">{!! Lang::get('lang.submit_a_ticket') !!}</span>
                            </a>
                        </span>
                    @endif
                @endif
            @endif
            <span onclick="javascript: window.location.href='{{url('mytickets')}}';">
                <a href="{{url('mytickets')}}" class="widgetrowitem defaultwidget" style="background-image:url({{ URL::asset('lb-faveo/media/images/news.png') }})">
                    <span class="widgetitemtitle">{!! Lang::get('lang.my_tickets') !!}</span>
                </a>
            </span>
            
            <span onclick="javascript: window.location.href='{{url('/knowledgebase')}}';">
               <a href="{{url('/knowledgebase')}}" class="widgetrowitem defaultwidget" style="background-image:url({{ URL::asset('lb-faveo/media/images/knowledgebase.png') }})">
                    <span class="widgetitemtitle">{!! Lang::get('lang.knowledge_base') !!}</span>
                </a>
            </span>
        </div>
    </div>
   
    <script type="text/javascript"> $(function(){ $('.dialogerror, .dialoginfo, .dialogalert').fadeIn('slow');$("form").bind("submit", function(e){$(this).find("input:submit").attr("disabled", "disabled");});});</script>
    <script type="text/javascript" >try {if (top.location.hostname != self.location.hostname) { throw 1; }} catch (e) { top.location.href = self.location.href; }
    </script>
    <div class="d-flex justify-content-center">
    
        <div class="login-box" style=" width: 490px;"  >
        
            <div class="form-border">
     
                <div align="center">
                    
                    <h4 style="background-color: #0084b4;"> <a href="http://www.faveohelpdesk.com" class="logo">
                        <img src="{{ asset('lb-faveo/media/images/logo.png')}}" width="100px;"></a>
                    </h4>
                </div>
                
                <div>

                    <h3 class="box-title" align="center">{{trans('lang.forgot_password')}}</h3>
                </div> 
                       
                <!-- form open -->
                <form role="form" method="POST" action="{{ url('/password/email') }}">
                    <!-- Email -->
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <!-- Email -->
                    <!-- <div class="input-group margin"> -->
                    <div class="form-group has-feedback {{ $errors->has('email') ? 'has-error' : '' }}" style="display: -webkit-box;">
            
                        <input type="email" class="form-control" name="email" placeholder="{!! Lang::get('lang.email') !!}" value="{{ old('email') }}">

                         <span class="far fa-envelope text-muted  form-control-feedback" style="top: 9px;left: -25px;color: #6c757d;"></span>
                    </div>
                
                    <div class="row">

                        <div class="col-sm-6">

                            <a href="{{url('auth/login')}}" class="text-center">{!! Lang::get('lang.i_know_my_password') !!}</a>    
                        </div>

                        <div class="col-sm-6">
                            
                             <span class="input-group-btn" style="width: 65% ;margin-left: 35%">
                                <button type="submit" class="btn btn-primary btn-block btn-flat" style="width: 100%; color: white">{!! Lang::get('lang.send') !!}</button>
                            </span>
                            <br/>
                        </div>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</div>


<!-- /.login-page -->
@stop