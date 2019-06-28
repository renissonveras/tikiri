<?php 
 $status = NULL;
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <?php
        $title = App\Model\helpdesk\Settings\System::where('id', '=', '1')->first();
        if (isset($title->name)) {
            $title_name = $title->name;
        } else {
            $title_name = "CENTRO DE SUPORTE";
        }
        ?>
        <title> @yield('title') {!! strip_tags($title_name) !!} </title>
        <!-- faveo favicon -->
        <link href="{{asset("lb-faveo/media/images/favicon.ico")}}"  rel="shortcut icon" >
        
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="{{asset("lb-faveo/css/bootstrap.min.css")}}" rel="stylesheet" type="text/css" />
        <!-- MaterialKit -->
        <link href="{{asset("lb-faveo/css/materialkit/material-kit.css")}}" rel="stylesheet" type="text/css" />
        <!--     Fonts and icons     -->
        <link rel="stylesheet" href="{{asset("lb-faveo/css/materialkit/icon.css")}}" />
        <link rel="stylesheet" type="text/css" href="{{asset("lb-faveo/css/materialkit/roboto.css")}}" />
        <link rel="stylesheet" href="{{asset("lb-faveo/css/materialkit/font-awesome.min.css")}}" />

        <!-- Ionicons -->
        <link href="{{asset("lb-faveo/css/ionicons.min.css")}}" rel="stylesheet" type="text/css" />
        <!-- fullCalendar 2.2.5-->
        <link href="{{asset("lb-faveo/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css")}}" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="{{asset("lb-faveo/css/jquery.rating.css")}}" rel="stylesheet" type="text/css" />
        
        <link href="{{asset("lb-faveo/css/tikiri.css")}}" rel="stylesheet" type="text/css" />
        
        <link href="{{asset("lb-faveo/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css")}}" rel="stylesheet" type="text/css" />

        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <script src="{{asset("lb-faveo/js/jquery2.1.1.min.js")}}" type="text/javascript"></script>
        <script src="{{asset("lb-faveo/js/datepicker-pt-BR.js")}}" type="text/javascript"></script>
        @yield('HeadInclude')
    </head>
    <body class="signup-page">
        <nav class="navbar navbar-transparent navbar-absolute">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
                    <span class="sr-only">Trocar</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <?php
                $company = App\Model\helpdesk\Settings\Company::where('id', '=', '1')->first();
                $system = App\Model\helpdesk\Settings\System::where('id', '=', '1')->first();
                ?>
                    @if($system->url)
                    <a class="navbar-brand" href="{!! $system->url !!}" rel="home">
                    @else
                    <a class="navbar-brand" href="{{url('/')}}" rel="home">
                    @endif
                    @if($company->use_logo == 1)
                    <div class="logo">
                        <img src="{{asset('uploads/company')}}{{'/'}}{{$company->logo}}" width="100px" alt="Tikiri Logo" rel="tooltip" title="<b>Tikiri</b> é um software livre para a gestão de atendimentos" data-placement="bottom" data-html="true"/>
                    </div>
                    @else
                        @if($system->name)
                        {!! $system->name !!}
                        @else
                            <div class="navbar-brand">
                                CENTRO DE <b>SUPORTE</b>
                            </div>
                        @endif
                    @endif
                    </a>
            </div>

            <div class="collapse navbar-collapse" id="navigation-example">
                <?php $socials = App\Model\helpdesk\Theme\Widgets::all(); ?>
                <ul class="nav navbar-nav navbar-right">
                    @foreach($socials as $social)
                    @if($social->name == 'facebook')
                    @if($social->value)
                    <li><a href="{!! $social->value !!}" class="btn btn-simple btn-white btn-just-icon btn-facebook" target="_blank"><i class="fa fa-facebook fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "twitter")
                    @if($social->value)
                    <li><a href="{{ $social->value }}" class="btn btn-simple btn-white btn-just-icon btn-twitter" target="_blank"><i class="fa fa-twitter fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "google")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-google-plus" target="_blank"><i class="fa fa-google-plus fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "linkedin")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-linkedin" target="_blank"><i class="fa fa-linkedin fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "vimeo")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-vimeo" target="_blank"><i class="fa fa-vimeo-square fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "youtube")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-youtube" target="_blank"><i class="fa fa-youtube-play fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "pinterest")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-pinterest" target="_blank"><i class="fa fa-pinterest fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "dribbble")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-dribbble" target="_blank"><i class="fa fa-dribbble fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "flickr")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-flickr" target="_blank"><i class="fa fa-flickr fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "instagram")
                    @if($social->value)
                    <li><a href="{{$social->value }}" class="btn btn-simple btn-white btn-just-icon btn-instagram" target="_blank"><i class="fa fa-instagram fa-fw"></i></a></li>
                    @endif
                    @endif
                    @if($social->name == "rss")
                    @if($social->value)
                    <li><a href="{{$social->value}}" class="btn btn-simple btn-white btn-just-icon btn-rss" target="_blank"><i class="fa fa-rss fa-fw"></i></a></li>
                    @endif
                    @endif
                    @endforeach
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper">
        <div class="header header-filter" style="background-image: url('{{ asset('lb-faveo/media/images/tikiri-1.jpg')}}'); background-size: cover; background-position: top center;">
            <div class="container">
                <div class="row">
                    @if(Session::has('success'))
                    <div style="height: 100px;"></div>
                   <div class="alert alert-success">
                        <div class="container-fluid">
                          <div class="alert-icon">
                            <i class="material-icons">check</i>
                          </div>
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="material-icons">clear</i></span>
                          </button>
                          {{Session::get('success')}}
                        </div>
                    </div>
                    @endif
                    @if(Session::has('warning'))
                    <div style="height: 100px;"></div>
                    <div class="alert alert-danger">
                        <div class="container-fluid">
                          <div class="alert-icon">
                            <i class="material-icons">error_outline</i>
                          </div>
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="material-icons">clear</i></span>
                          </button>
                           {!! Session::get('warning') !!}
                        </div>
                    </div>
                    @endif
                    <!-- failure message -->
                    @if(Session::has('fails'))
                    @if(Session::has('check'))
                    <?php goto a; ?>
                    @endif
                    <div style="height: 100px;"></div>
                    <div class="alert alert-danger">
                        <div class="container-fluid">
                          <div class="alert-icon">
                            <i class="material-icons">error_outline</i>
                          </div>
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="material-icons">clear</i></span>
                          </button>
                            <b>{!! Lang::get('lang.alert') !!} !</b>
                            {{Session::get('fails')}}
                        </div>
                    </div>
                    <?php a: ?>
                    @endif
                    @yield('content')
                    <div id="sidebar" class="site-sidebar col-md-3">
                        <div class="widget-area">
                            <section id="section-banner" class="section">
                                @yield('check')
                            </section><!-- #section-banner -->
                            <section id="section-categories" class="section">
                                @yield('category')
                            </section><!-- #section-categories -->
                        </div>
                    </div><!-- #sidebar -->
                </div>
            </div>
            <footer class="footer">
                <div class="container">
                    <div class="pull-left">
                        {!! Breadcrumbs::render() !!}
                    </div>
                    <div class="copyright pull-right">
                         <p class="text-muted">{!! Lang::get('lang.copyright') !!} &copy; {!! date('Y') !!}  <a href="{!! $company->website !!}" target="_blank">{!! $company->company_name !!}</a>. {!! Lang::get('lang.all_rights_reserved') !!}. {!! Lang::get('lang.powered_by') !!} <a href="http://www.tikiri.com.br/"  target="_blank">Tikiri</a></p>
                    </div>
                </div>
            </footer>

        </div>

    </div>
            <!-- /.content-wrapper -->
            <!-- jQuery 2.1.1 -->

            <script src="{{asset("lb-faveo/js/jquery2.1.1.min.js")}}" type="text/javascript"></script>
            <!-- Bootstrap 3.3.2 JS -->
            <script src="{{asset("lb-faveo/js/bootstrap.min.js")}}" type="text/javascript"></script>
            <!-- Slimscroll -->
            <script src="{{asset("lb-faveo/js/superfish.js")}}" type="text/javascript"></script>
            
            <script src="{{asset("lb-faveo/js/mobilemenu.js")}}" type="text/javascript"></script>
            
            <script src="{{asset("lb-faveo/js/know.js")}}" type="text/javascript"></script>
            
            <script src="{{asset("lb-faveo/js/jquery.rating.pack.js")}}" type="text/javascript"></script>
            
            <script src="{{asset("lb-faveo/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js")}}" type="text/javascript"></script>
            
            <script src="{{asset("lb-faveo/plugins/iCheck/icheck.min.js")}}" type="text/javascript"></script>

            <!--   Core JS Files   -->
            <script src="{{asset("lb-faveo/js/materialkit/material.min.js")}}"></script>
            <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
            <script src="{{asset("lb-faveo/js/materialkit/nouislider.min.js")}}" type="text/javascript"></script>
            <!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
            <script src="{{asset("lb-faveo/js/materialkit/bootstrap-datepicker.js")}}" type="text/javascript"></script>
            <!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
            <script src="{{asset("lb-faveo/js/materialkit/material-kit.js")}}" type="text/javascript"></script>       
            
            <script>
$(function () {
//Enable check and uncheck all functionality
    $(".checkbox-toggle").click(function () {
        var clicks = $(this).data('clicks');
        if (clicks) {
            //Uncheck all checkboxes
            $("input[type='checkbox']", ".mailbox-messages").iCheck("uncheck");
        } else {
            //Check all checkboxes
            $("input[type='checkbox']", ".mailbox-messages").iCheck("check");
        }
        $(this).data("clicks", !clicks);
    });
//Handle starring for glyphicon and font awesome
    $(".mailbox-star").click(function (e) {
        e.preventDefault();
//detect type
        var $this = $(this).find("a > i");
        var glyph = $this.hasClass("glyphicon");
        var fa = $this.hasClass("fa");
//Switch states
        if (glyph) {
            $this.toggleClass("glyphicon-star");
            $this.toggleClass("glyphicon-star-empty");
        }
        if (fa) {
            $this.toggleClass("fa-star");
            $this.toggleClass("fa-star-o");
        }
    });
});
            </script>

    </body>
</html>