@extends('themes.default1.client.layout.client')
@section('breadcrumb')

<?php
//dd($arti);
$all = App\Model\kb\Relationship::where('article_id','=', $arti->id)->get();
//dd($all);
/* from whole attribute pick the article_id */
$category_id = $all->lists('category_id')->toArray();
?>

<div class="site-hero clearfix">
	<ol class="breadcrumb breadcrumb-custom">
		<li class="text">{!! Lang::get('lang.you_are_here') !!}: </li>
		<?php $category = App\Model\kb\Category::where('id', $category_id)->first(); ?>
		<li><a href="{{url('/')}}">{!! Lang::get('lang.home') !!}</a></li>
		<li><a href="{{url('/knowledgebase')}}">{!! Lang::get('lang.knowledge_base') !!}</a></li>
		<li><a href="{{url('category-list/'.$category->slug)}}">{{$category->name}}</a></li>
		<li class="active">{{$arti->name}}</li>
	</ol>
</div>
@stop	
@section('title')
	{!! $arti->name !!} -
@stop	
@section('content')
<div id="content" class="site-content pre-hentry col-md-9">
	<!--
	<article class=" type-post format-standard hentry clearfix">
					<h1 class="post-title"><a href="#">{{$arti->name}}</a></h1>
	
									<div class="post-meta clearfix">
									<span class="date">{{$arti->created_at}}</span>
									<span class="category"><a href="#" title="View all posts in Server &amp; Database">{{$category->name}}</a></span>
					</div> end of post meta 
					{!!$arti->description!!}
	</article>-->
	<article class="hentry">
		<header class="entry-header">
			<h1 class="entry-title">{{$arti->name}}</h1>
			<div class="row">
				<div class="col-md-6">
					<div class="entry-meta text-muted">
						<span class="date"><i class="fa fa-calendar fa-fw"></i> <time datetime="2013-09-19T20:01:58+00:00">{{$arti->created_at->format('d/m/Y')}}</time></span>
						<span class="category"><i class="fa fa-folder-open-o fa-fw"></i> <a href="{{url('/')}}/category-list/{{$category->slug}}">{{$category->name}}</a></span>
					</div><!-- .entry-meta -->
				</div>
				<div class="col-md-6 text-center">
					@if( Auth::check() )
					<div class="ticketratings pull-right">    
						<table><tbody>
								<?php $ratings = App\Model\helpdesk\Ratings\Rating::orderby('display_order')->get(); ?>
							<form id="foo">
								{!! csrf_field() !!}
								@foreach($ratings as $rating) 

								@if($rating->rating_area == 'Article')
								<?php
								$rating_value = App\Model\helpdesk\Ratings\RatingRef::where('rating_id', '=', $rating->id)->where('article_id', '=', $arti->id)->first();
								if ($rating_value == null) {
									$ratingval = '0';
								} else {
									$ratingval = $rating_value->rating_value;
								}
								?>

								<tr>
									<th><div class="ticketratingtitle">{!! $rating->name !!} &nbsp;</div></th>&nbsp

								<td>
									<?php for ($i = 1; $i <= $rating->rating_scale; $i++) { ?>
										<input type="radio" class="star" id="star5" name="{!! $rating->name !!}" value="{!! $i !!}"<?php echo ($ratingval == $i) ? 'checked' : '' ?> />
									<?php } ?>
								</td> 
								</tr>

								@endif
								@endforeach
							</form>
						</tbody> </table> 
					</div>
					@endif
				</div>
			</div>
			
		</header><!-- .entry-header -->

		<div class="entry-content clearfix">

			<p>{!!$arti->description!!}</p>

		</div><!-- .entry-content -->
        <footer>
            <div class="entry-meta text-muted">
                <span class="badge badge-info" title="Autor" ><small> <i class="fa fa-user-o fa-fw"></i>  {{$arti->user->first_name}} {{$arti->user->last_name}}</small></span><span class="badge badge-secondary"><small><i class="fa fa-clock-o fa-fw"></i> <time datetime="2013-10-22T20:01:58+00:00">{{$arti->created_at->format('d/m/Y H:i:s')}}</time></small></span>
                <hr>
            </div><!-- .entry-meta -->
        </footer><!-- .entry-footer -->		

	</article><!-- .hentry -->
	<?php $comments = App\Model\kb\Comment::where('article_id', $arti->id)->where('status', '1')->get(); ?>

	<div id="comments" class="comments-area">
		@foreach($comments as $comment)
		<ol class="comment-list">
			<li class="comment">
				<article class="comment-body">
					<footer class="comment-meta">
						<div class="comment-author">
							<img src="{{asset("lb-faveo/media/images/avatar_1.png")}}" alt="" height="50" width="50" class="avatar" />
							<b class="fn"><a href="#" rel="external" class="url">{!! $comment->name !!}</a></b>
						</div><!-- .comment-author -->

						<div class="comment-metadata">
							<small class="date text-muted">
								<time datetime="2013-10-23T01:50:50+00:00">{!! $comment->created_at->format('d/m/Y') !!}</time>
							</small>
						</div><!-- .comment-metadata -->
					</footer><!-- .comment-meta -->

					<div class="comment-content">

						<p>{!! $comment->comment !!}</p>
					</div><!-- .comment-content -->

					<div class="comment-reply text-right">
						{{-- <a class="btn btn-custom btn-sm" href="#">Reply</a> --}}
					</div><!-- .comment-reply -->
				</article><!-- .comment-body -->
			</li><!-- .comment -->
		</ol><!-- .comment-list -->
		@endforeach
		<div id="respond" class="comment-respond form-border">
			<h3 id="reply-title" class="comment-reply-title section-title">{!! Lang::get('lang.leave_a_reply') !!}</h3>
			{!! Form::open(['method'=>'post','url'=>'postcomment/'.$arti->slug]) !!}
			<div class="row">
				<div class="form-group">
					<div class="col-md-6">
						<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
							{!! Form::label('name',Lang::get('lang.name')) !!}
							{!! $errors->first('name', '<spam class="help-block" style="red">:message</spam>') !!}
							{!! Form::text('name',null,['class' => 'form-control']) !!}
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
							{!! Form::label('email',Lang::get('lang.email')) !!}
							{!! $errors->first('email', '<spam class="help-block">:message</spam>') !!}
							{!! Form::text('email',null,['class' => 'form-control']) !!}
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group {{ $errors->has('comment') ? 'has-   error' : '' }}">
							{!! Form::label('comment',Lang::get('lang.message')) !!}
							{!! $errors->first('comment', '<spam class="help-block">:message</spam>') !!}
							{!! Form::textarea('comment',null,['class' => 'texteditor','size' => '30x8','id'=>'comment']) !!}
						</div>
					</div>
					<div class="col-md-12 text-right">
						<button type="submit" class="btn btn-custom btn-lg">{!! Lang::get('lang.post_message') !!}</button>
					</div>
					{{--
						<div class="form-group {{ $errors->has('website') ? 'has-error' : '' }}">
							{!! Form::label('website',Lang::get('lang.website')) !!}
							{!! $errors->first('website', '<spam class="help-block">:message</spam>') !!}
							{!! Form::text('website',null,['class' => 'form-control']) !!}
						</div>
					--}}
				</div>
			</div>
		  

			{!! Form::close() !!}
		</div><!-- #respond -->
	</div>
</div>						

<script type="text/javascript">
	$(document).ready(function () {
			var Data = $('input[name="rating"]:checked').val();
			if (Data) {
				$('input[name=rating]').rating('readOnly');
				jQuery('.star').attr('disabled', true);
			}
			$('.star').change(function () {
				$('#foo').submit();
			});
			// process the form
			$('#foo').submit(function (event) {
				// get the form data
				// there are many ways to get this data using jQuery (you can use the class or id also)
				var formData = $(this).serialize();
				//$('#foo').serialize();
				// process the form
				$.ajax({
					headers: { 'X-CSRF-TOKEN' : '{{ csrf_token() }}' },
					type: 'POST', // define the type of HTTP verb we want to use (POST for our form)
					url: '../ratingArticle/' +{{ $arti->id }}, // the url where we want to POST
					data: formData, // our data object
					dataType: 'json', // what type of data do we expect back from the server	
					contentType: 'application/x-www-form-urlencoded',
					success: function (response) {
						alert('Avaliação enviada!');
					 },
					error: function (response) {
						console.log(response.message);
					}
				});
				// using the done promise callback
				// stop the form from submitting the normal way and refreshing the page
				event.preventDefault();
			});
	});		
	$(function () {
		$("textarea").wysihtml5();
	});
</script>

@stop

@section('title')
	@if(isset($category->name))
		{!! $category->name !!} -
	@endif
@stop

@section('category')
<h2 class="section-title h4 clearfix">{!! Lang::get('lang.categories') !!}<small class="pull-right"><i class="fa fa-hdd-o fa-fw"></i></small></h2>
<ul class="nav nav-pills nav-stacked nav-categories">

<?php $categorys = App\Model\kb\Category::all(); ?>
	@foreach($categorys as $category)
<?php
$num = \App\Model\kb\Relationship::where('category_id','=', $category->id)->get();
$article_id = $num->lists('article_id');
$numcount = count($article_id);
?>
	<li><a href="{{url('category-list/'.$category->slug)}}"><span class="badge pull-right">{{$numcount}}</span>{{$category->name}}</a></li>
	@endforeach
</ul>
@stop