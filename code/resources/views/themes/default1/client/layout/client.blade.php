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
		<title> @yield('title') {!! strip_tags($title_name) !!}</title>
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


		<link href="{{asset("lb-faveo/plugins/datatables/dataTables.bootstrap.css")}}" rel="stylesheet"  type="text/css"/>

		<!-- Ionicons -->
		<link href="{{asset("lb-faveo/css/ionicons.min.css")}}" rel="stylesheet" type="text/css" />
		<!-- fullCalendar 2.2.5-->
		<link href="{{asset("lb-faveo/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css")}}" rel="stylesheet" type="text/css" />
		<!-- Theme style -->
		<link href="{{asset("lb-faveo/css/jquery.rating.css")}}" rel="stylesheet" type="text/css" />

		<link href="{{asset("lb-faveo/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css")}}" rel="stylesheet" type="text/css" />

		<link href="{{asset("lb-faveo/css/tikiri.css")}}" rel="stylesheet" type="text/css" />        

		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->

		<script src="{{asset("lb-faveo/js/jquery2.1.1.min.js")}}" type="text/javascript"></script>
		<script src="{{asset("lb-faveo/js/datepicker-pt-BR.js")}}" type="text/javascript"></script>
		@yield('HeadInclude')
	</head>
	<body class="index-page">
		<!-- Navbar -->
		<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-index">
						<span class="sr-only">Trocar</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
						<div class="logo-container">
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
									<img src="{{asset('uploads/company')}}{{'/'}}{{$company->logo}}" width="100px" alt="Tikiri Logo" rel="tooltip" title="<b>Tikiri</b> é um software livre para  gestão de atendimentos" data-placement="bottom" data-html="true"/>
								</div>
								@else
									@if($system->name)
									{!! $system->name !!}
									@else
										<div class="brand">
											CENTRO DE <b>SUPORTE</b>
										</div>
									@endif
								@endif
								</a>
						</div>
				</div>
				<div class="collapse navbar-collapse" id="navigation-index">
					<ul class="nav navbar-nav navbar-right">
						<li @yield('home')>
							<a href="{{url('/')}}" class="btn btn-white btn-simple">
								<i class="material-icons">home</i> {!! Lang::get('lang.home') !!}
							</a>
						</li>
						@if($system->first()->status == 1)
						<li @yield('submit')>
							<a href="{{URL::route('form')}}">
								<i class="material-icons">send</i> {!! Lang::get('lang.submit_a_ticket') !!}
							</a>
						</li>
						@endif
						<li class="dropdown" @yield('kb')>
							<a class="dropdown-toggle"  data-toggle="dropdown" href="{!! url('knowledgebase') !!}">
								<i class="material-icons">library_books</i> {!! Lang::get('lang.knowledge_base') !!}
								<b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									<li><a href="{!! url('knowledgebase') !!}">{!! Lang::get('lang.knowledge_base') !!}</a></li>
									<li><a href="{{route('category-list')}}">{!! Lang::get('lang.categories') !!}</a></li>
									<li><a href="{{route('article-list')}}">{!! Lang::get('lang.articles') !!}</a></li>
								</ul>
						</li>
						<?php $pages = App\Model\kb\Page::where('status', '1')->where('visibility', '1')->get();
						?>
						@foreach($pages as $page)
							<li><a href="{{route('pages',$page->slug)}}">{{$page->name}}</a></li>
						@endforeach
						@if(Auth::user())
						<li @yield('myticket')>
							<a href="{{url('mytickets')}}">
								<i class="material-icons">inbox</i> {!! Lang::get('lang.my_tickets') !!}
							</a>
						</li>
						<li class="dropdown" @yield('profile')>
							<a class="dropdown-toggle"  data-toggle="dropdown" href="#" >
								<i class="material-icons">perm_identity</i> {!! Lang::get('lang.my_profile') !!}
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu dropdown-menu-right">
								<li>
									<a class="uppercase" href="{{url('auth/logout')}}">
										<i class="material-icons">highlight_off</i> {!! Lang::get('lang.log_out') !!}
									</a>
								</li>
						@if(Auth::user())
							@if(Auth::user()->role != 'user')
								<li>       
									<a class="uppercase" href="{{url('dashboard')}}">
										<i class="material-icons">dashboard</i> {!! Lang::get('lang.dashboard') !!}
									</a>
								</li>
							@endif
						@endif
						@if(Auth::user())
							@if(Auth::user()->role == 'user')
								<li>
									<a class="uppercase" href="{{url('client-profile')}}">
										<i class="material-icons">account_box</i> {!! Lang::get('lang.profile') !!}
									</a>
								</li>
								<?php \Event::fire('service.desk.client.profile.menu', array()); ?>
							@endif
						@endif                  
								<li class="divider"></li>                                
								<li class="dropdown-header text-center">{{Auth::user()->first_name." ".Auth::user()->last_name}}</li>
								<li class="text-center">
									<img src="{{Auth::user()->profile_pic}}" alt="Imagem de perfil" height="80" width="80" class="img-circle img-raised margin-bottom-extra" />
								</li>
							</ul>
						</li>
						@else 
							@if(isset($errors))
						<li>
							<a href="{{url('auth/login')}}">
								<i class="material-icons">perm_identity</i> {!! Lang::get('lang.login') !!} 
							</a>
						</li>
							@endif
						@endif 
					</ul>
				</div>
			</div>
		</nav>
	<div id="page" class="wrapper hfeed site">
		<div class="header header-filter" style="background-image: url('{{ asset('lb-faveo/media/materialkit/bg2.jpeg')}}');">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="brand">
							<div id="header-search" class="site-search clearfix" style="padding-bottom:5px"><!-- #header-search -->
								{!!Form::open(['method'=>'get','action'=>'Client\kb\UserController@search','class'=>'search-form clearfix'])!!}
								<div class="row">
									<div class="col-lg-10 col-md-10 col-sm-9">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="material-icons white">live_help</i>
											</span>
											<input type="text" name="s" class="white form-control search-field form-control input-lg" title="Entre com os termos da busca" placeholder="{!! Lang::get('lang.have_a_question?_type_your_search_term_here') !!}" required/>
										</div>
									</div>
									<div class="col-lg-2 col-md-2 col-sm-3">
										<button type="submit" class="search-submit btn btn-white btn-round btn-kb">{!! Lang::get('lang.search') !!}</button>
									</div>
								</div>
								{!! Form::close() !!}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- Main content -->
		<div id="main" class="main main-raised bg-client">
			<div class="section section-basic">
				<div class="container">
					<div class="content-area">
						{!! Breadcrumbs::render() !!}
						@yield('BodyInitInclude')
						<div class="row">
							@if(Session::has('success'))
							<div class="alert alert-success alert-dismissable">
								<i class="fa  fa-check-circle"></i>
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								{{Session::get('success')}}
							</div>
							@endif
							@if(Session::has('warning'))
							<div class="alert alert-warning alert-dismissable">
								<i class="fa  fa-check-circle"></i>
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								{!! Session::get('warning') !!}
							</div>
							@endif
							<!-- failure message -->
							@if(Session::has('fails'))
							@if(Session::has('check'))
							<?php goto a; ?>
							@endif
							<div class="alert alert-danger alert-dismissable">
								<i class="fa fa-ban"></i>
								<b>{!! Lang::get('lang.alert') !!} !</b>
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								{{Session::get('fails')}}
							</div>
							<?php a: ?>
							@endif
							@yield('content')
							<div id="sidebar" class="site-sidebar col-md-3">
								<div class="widget-area">
									<section id="section-banner">
										@yield('check')
									</section><!-- #section-banner -->
									<section id="section-categories">
										@yield('category')
									</section><!-- #section-categories -->
								</div>
							</div><!-- #sidebar -->
						</div>
					</div>
				</div>
				</div> <!-- section -->
			</div>
			<!-- /.content-wrapper -->
			<?php
			$footer1 = App\Model\helpdesk\Theme\Widgets::where('name', '=', 'footer1')->first();
			$footer2 = App\Model\helpdesk\Theme\Widgets::where('name', '=', 'footer2')->first();
			$footer3 = App\Model\helpdesk\Theme\Widgets::where('name', '=', 'footer3')->first();
			$footer4 = App\Model\helpdesk\Theme\Widgets::where('name', '=', 'footer4')->first();
			?>
			<div class="container">
				<div class="row col-md-12">
					@if($footer1->title == null)
					@else
					<div class="col-md-3">
						<div class="widget-area">
							<section id="section-about" class="section">
								<h2 class="section-title h4 clearfix">{!!$footer1->title!!}</h2>
								<div class="textwidget">
									<p>{!!$footer1->value!!}</p>
								</div>
							</section><!-- #section-about -->
						</div>
					</div>
					@endif
					@if($footer2->title == null)
					@else
					<div class="col-md-3">
						<div class="widget-area">
							<section id="section-latest-news" class="section">
								<h2 class="section-title h4 clearfix">{!!$footer2->title!!}</h2>
								<div class="textwidget">
									<p>{!! $footer2->value !!}</p>
								</div>
							</section><!-- #section-latest-news -->
						</div>
					</div>
					@endif
					@if($footer3->title == null)
					@else
					<div class="col-md-3">
						<div class="widget-area">
							<section id="section-newsletter" class="section">
								<h2 class="section-title h4 clearfix">{!!$footer3->title!!}</h2>
								<div class="textwidget">
									<p>{!! $footer3->value !!}</p>
								</div>
							</section><!-- #section-newsletter -->
						</div>
					</div>
					@endif
					@if($footer4->title == null)
					@else
					<div class="col-md-3">
						<div class="widget-area">
							<section id="section-newsletter" class="section">
								<h2 class="section-title h4 clearfix">{{$footer4->title}}</h2>
								<div class="textwidget">
									<p>{!! $footer4->value !!}</p>
								</div>
							</section>
						</div>
					</div>
					@endif
				</div>
			</div>
			<footer id="colophon" class="site-footer" role="contentinfo">
				<div class="container">
					<div class="clearfix"></div>
					<hr style="color:#E5E5E5"/>
					<div class="row">
						<div class="site-info col-md-6">
							<p class="text-muted">{!! Lang::get('lang.copyright') !!} &copy; {!! date('Y') !!}  <a href="{!! $company->website !!}" target="_blank">{!! $company->company_name !!}</a>. {!! Lang::get('lang.all_rights_reserved') !!}. {!! Lang::get('lang.powered_by') !!} <a href="https://www.tikiri.com.br/"  target="_blank">Tikiri</a></p>
						</div>
						<div class="site-social text-right col-md-6">
							<?php $socials = App\Model\helpdesk\Theme\Widgets::all(); ?>
							<ul class="list-inline hidden-print">
								@foreach($socials as $social)
								@if($social->name == 'facebook')
								@if($social->value)
								<li><a href="{!! $social->value !!}" class="btn btn-social btn-facebook" target="_blank"><i class="fa fa-facebook fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "twitter")
								@if($social->value)
								<li><a href="{{ $social->value }}" class="btn btn-social btn-twitter" target="_blank"><i class="fa fa-twitter fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "google")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-google-plus" target="_blank"><i class="fa fa-google-plus fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "linkedin")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-linkedin" target="_blank"><i class="fa fa-linkedin fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "vimeo")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-vimeo" target="_blank"><i class="fa fa-vimeo-square fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "youtube")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-youtube" target="_blank"><i class="fa fa-youtube-play fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "pinterest")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-pinterest" target="_blank"><i class="fa fa-pinterest fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "dribbble")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-dribbble" target="_blank"><i class="fa fa-dribbble fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "flickr")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-flickr" target="_blank"><i class="fa fa-flickr fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "instagram")
								@if($social->value)
								<li><a href="{{$social->value }}" class="btn btn-social btn-instagram" target="_blank"><i class="fa fa-instagram fa-fw"></i></a></li>
								@endif
								@endif
								@if($social->name == "rss")
								@if($social->value)
								<li><a href="{{$social->value}}" class="btn btn-social btn-rss" target="_blank"><i class="fa fa-rss fa-fw"></i></a></li>
								@endif
								@endif
								@endforeach
							</ul>
						</div>
					</div>
				</div>
			</footer><!-- #colophon -->
		</div>
	</body>
			<!-- jQuery 2.1.1 -->
			<script src="{{asset("lb-faveo/js/jquery2.1.1.min.js")}}" type="text/javascript"></script>
			<!-- Bootstrap 3.3.2 JS -->
			<script src="{{asset("lb-faveo/js/bootstrap.min.js")}}" type="text/javascript"></script>
			<!-- Slimscroll -->
			<script src="{{asset("lb-faveo/js/superfish.js")}}" type="text/javascript"></script>

			<script src="{{asset("lb-faveo/js/mobilemenu.js")}}" type="text/javascript"></script>

			<script src="{{asset("lb-faveo/js/know.js")}}" type="text/javascript"></script>

			<script src="{{asset("lb-faveo/js/jquery.rating.pack.js")}}" type="text/javascript"></script>

			<script src="{{asset("lb-faveo/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.js")}}" type="text/javascript"></script>

			<script src="{{asset("lb-faveo/plugins/iCheck/icheck.min.js")}}" type="text/javascript"></script>

			<script src="{{asset("lb-faveo/plugins/datatables/dataTables.bootstrap.js")}}" type="text/javascript"></script>

			<script src="{{asset("lb-faveo/plugins/datatables/jquery.dataTables.js")}}" type="text/javascript"></script>
			<!-- Page Script -->
			<script src="{{asset("lb-faveo/js/jquery.dataTables1.10.10.min.js")}}" type="text/javascript" ></script>

			<script type="text/javascript" src="{{asset("lb-faveo/plugins/datatables/dataTables.bootstrap.js")}}"  type="text/javascript"></script>

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
	$(window).on('scroll', materialKit.checkScrollForTransparentNavbar);
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

   

$('#btn-register').on('click', function(){
	var valeur = 100;
	$('.progress-bar').css('width', 0+'%').attr('aria-valuenow', 0);
	setTimeout(function(){ 
		$('.progress-bar').css('width', valeur+'%').attr('aria-valuenow', valeur);
	}, 300);
	setTimeout(function(){ 
		window.location.href = '{{url('auth/register')}}';
	}, 600);
});

$('#btn-submit-a-ticket').on('click', function(){
	var valeur = 100;
	$('.progress-bar').css('width', 0+'%').attr('aria-valuenow', 0);
	setTimeout(function(){ 
		$('.progress-bar').css('width', valeur+'%').attr('aria-valuenow', valeur);
	}, 300);
	setTimeout(function(){ 
		window.location.href = '{!! URL::route('form') !!}';
	}, 600);
});

$('#btn-my-tickets').on('click', function(){
	var valeur = 100;
	$('.progress-bar').css('width', 0+'%').attr('aria-valuenow', 0);
	setTimeout(function(){ 
		$('.progress-bar').css('width', valeur+'%').attr('aria-valuenow', valeur);
	}, 300);
	setTimeout(function(){ 
		window.location.href = '{{url('mytickets')}}';
	}, 600);
});

$('#btn-kb').on('click', function(){
	var valeur = 100;
	$('.progress-bar').css('width', 0+'%').attr('aria-valuenow', 0);
	setTimeout(function(){ 
		$('.progress-bar').css('width', valeur+'%').attr('aria-valuenow', valeur);
	}, 300);
	setTimeout(function(){ 
		window.location.href = '{{url('/knowledgebase')}}';
	}, 600);
});



});
</script>
</html>
