@extends('themes.default1.client.layout.client')

@section('title')
Category List -
@stop

@section('kb')
class = "active"
@stop

@section('content')
<div id="content" class="site-content col-md-12">
    <!-- Start of Page Container -->
    <div class="row home-listing-area">
        <div class="span8">
            <h2>{!! Lang::get('lang.categories') !!}</h2>
        </div>
    </div>
    <div class="row separator">
        @foreach($categorys as $category)
        <div class="col-xs-6">
            {{-- get the article_id where category_id == current category --}}
            <?php
            $all = App\Model\kb\Relationship::where('category_id', $category->id)->get();
            /* from whole attribute pick the article_id */
            $article_id = $all->lists('article_id');
            ?>
            <section class="articles-list">
                <h3><i class="fa fa-folder-open-o fa-fw text-muted"></i> <a href="{{url('category-list/'.$category->slug)}}">{{$category->name}}</a> <span>({{count($all)}})</span></h3>
                <ul class="articles">
                    <hr>
                    <?php foreach ($article_id as $id) {
                        ?>
                        <?php
                        $article = App\Model\kb\Article::where('id', $id);
                        if (!Auth::user() || Auth::user()->role == 'user') {
                            $article = $article->where('status', 1);
                            $article = $article->where('type', 1);
                        }
                        $article = $article->orderBy('publish_time', 'desc');
                        $article = $article->get();
                        //dd($article);
                        ?>
                        @forelse($article as $arti)
                        <li class="article-entry image" style="margin-left: 50px;">
                            <h4><a href="{{url('show/'.$arti->slug)}}">{{$arti->name}}</a></h4>
                            <span class="article-meta">
                                <?php $str = $arti->description; ?>
                                <?php $excerpt = App\Http\Controllers\Client\kb\UserController::getExcerpt($str, $startPos = 0, $maxLength = 55); ?>
                                <p><span class="badge badge-info" title="Autor" ><small> <i class="fa fa-user-o fa-fw"></i>  {{$arti->user->first_name}} {{$arti->user->last_name}}</small></span><span class="badge badge-secondary"><small><i class="fa fa-clock-o fa-fw"></i> <time datetime="2013-10-22T20:01:58+00:00">{{$arti->created_at->format('d/m/Y')}}</time></small></span> {!!$excerpt!!} <a class="readmore-link" href="{{url('show/'.$arti->slug)}}">{!! Lang::get('lang.read_more') !!}</a>

                                </p>
                        </li>
                        @empty 
                        <li>Nenhum artigo disponível</li>
                        @endforelse
                    <?php }
                    ?>
                </ul>
            </section>
        </div>
        @endforeach
    </div>
</div>
<!-- end of page content -->
@stop

