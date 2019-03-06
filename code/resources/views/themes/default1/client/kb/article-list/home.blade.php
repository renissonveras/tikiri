@extends('themes.default1.client.layout.client')

@section('title')
Base de Conhecimento -
@stop

@section('knowledgebase')
class = "active"
@stop
@section('content')

@if(Session::has('success'))
<div class="alert alert-success alert-dismissable">
    <i class="fa  fa-check-circle"></i>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{Session::get('success')}}
</div>
@endif
<!-- failure message -->
@if(Session::has('fails'))
<div class="alert alert-danger alert-dismissable">
    <i class="fa fa-ban"></i>
    <b>{!! Lang::get('lang.alert') !!}!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {{Session::get('fails')}}
</div>
@endif

<div id="content" class="site-content col-md-9">
    <div class="row">
        <?php $categories = App\Model\kb\Category::all();
        ?>
        @foreach($categorys as $category)
        {{-- get the article_id where category_id == current category --}}
        <?php
        $all = App\Model\kb\Relationship::all();
        /* from whole attribute pick the article_id */
        $page = App\Model\kb\Relationship::where('category_id', '=', $category->id)->paginate('3');
        /* from whole attribute pick the article_id */
        $article_id = $page->lists('article_id');
        $count = count($article_id);
        ?>
        <div class="col-md-6">
            <section class="card" style="margin-top: 15px;">
                <div class="header header-primary">
                    <h4 class="pad-side clearfix">
                        <i class="fa fa-folder-open-o fa-fw white"></i>
                        {{$category->name}}
                    </h4>
                </div>
                <div class="content">
                    <ul class="fa-ul">
                        <?php
                        foreach ($article_id as $id) {
                            //$format = App\Model\helpdesk\Settings\System::where('id','1')->first()->date_time_format;
                            $tz = App\Model\helpdesk\Settings\System::where('id', '1')->first()->time_zone;
                            $tz = \App\Model\helpdesk\Utility\Timezones::where('id', $tz)->first()->name;
                            date_default_timezone_set($tz);
                            $date = \Carbon\Carbon::now()->toDateTimeString();
                            //dd($date);

                            $article = App\Model\kb\Article::where('id', '=', $id);
                            if (Auth::check()) {
                                if (\Auth::user()->role == 'user') {
                                    $article = $article->where('status', '1');
                                }
                            } else {
                                $article = $article->where('status', '1');
                            }
                            $article = $article->where('type', '1');
                            $article = $article->orderBy('publish_time','desc')->get();
                            ?>
                            @forelse($article as $arti)
                            <li>
                                <i class="fa-li fa fa-list-alt fa-fw text-primary"></i>
                                <h3 class="h5"><a href="#"><a href="{{url('show/'.$arti->slug)}}">{{$arti->name}}</a></h3>
                                
                                <?php
                                $str = $arti->description;
                                $len = strlen($str);

                                $excerpt = App\Http\Controllers\Client\kb\UserController::getExcerpt($str, $startPos = 0, $maxLength = 60);
                                ?>
                                {!! strip_tags($excerpt) !!} <br/>
                                <span class="badge badge-info" title="Autor" ><small> <i class="fa fa-user-o fa-fw"></i>  {{$arti->user->first_name}} {{$arti->user->last_name}}</small></span><span class="badge badge-secondary"><small><i class="fa fa-clock-o fa-fw"></i> <time datetime="2013-10-22T20:01:58+00:00">{{$arti->created_at->format('d/m/Y')}}</time></small></span><span class="badge badge-primary"><small><a style="color: #fff;" href="{{url('show/'.$arti->slug)}}">{!! Lang::get('lang.read_more') !!}</a></small></span>
                            </li>
                            @empty
                            <p>{!! Lang::get('lang.no_article') !!}</p>
                            @endforelse
                        <?php } ?>
                    </ul>
                </div>
                <div class="footer text-center">
                    <a href="{{url('category-list/'.$category->slug)}}" class="btn btn-primary btn-sm">{!! Lang::get('lang.view_all') !!}</a>
                </div>
            </section>
        </div>
        @endforeach
    </div>
    <section class="section">
        <div class="card">
            <div class="header header-info text-center">
                <h4 class="pad-side text-center">{!! Lang::get('lang.need_more_support') !!}?</h4>    
            </div>
            <div class="content text-center">
                <p>{!! Lang::get('lang.if_you_did_not_find_an_answer_please_raise_a_ticket_describing_the_issue') !!}.</p>
            </div>
            <div class="footer text-center">
                <a href="{!! URL::route('form') !!}" class="btn btn-info">{!! Lang::get('lang.submit_a_ticket') !!}</a>
            </div>
        </div>
    </section>
</div>
@stop

@section('category')
    <div class="card card-nav-tabs card-plain">
        <div class="header header-primary">
            <h4 class="pad-side clearfix">{!! Lang::get('lang.categories') !!}</h4>
        </div>
        <div class="content">
            <ul class="nav nav-pills nav-stacked nav-categories">
                @foreach($categorys as $category)
                <?php
                $num = \App\Model\kb\Relationship::where('category_id', '=', $category->id)->get();
                $article_id = $num->lists('article_id');
                $numcount = count($article_id);
                ?>
                <li><a href="{{url('category-list/'.$category->slug)}}"><span class="badge pull-right">{{$numcount}}</span>{{$category->name}}</a></li>
                @endforeach
            </ul>        
        </div>
    </div>
@stop
