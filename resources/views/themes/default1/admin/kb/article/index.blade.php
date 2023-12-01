@extends('themes.default1.admin.layout.admin')
@section('article')
    active
@stop
@section('all-article')
    class="active"
@stop
@section('content')
    <link href="{{asset('lb-faveo/dist/css/dataTables.bootstrap.css')}}" rel="stylesheet">
<div class="box box-primary">
<div class="box-header">
    <h2 class="box-title">{{Lang::get('lang.articles')}}</h2></div>

<div class="box-body table-responsive no-padding">

<!-- check whether success or not -->

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
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{Session::get('fails')}}
    </div>
    @endif

<section class="content">
<div class="row">
<div class="col-xs-12">

<div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
<div class="row">
<div class="col-sm-12">
    <table id="allBlogs"  class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
        <thead>
            <tr>
                <th>{{Lang::get('lang.name')}}</th>
                <th>{{Lang::get('lang.create')}}</th>
                <th>{{Lang::get('lang.action')}}</th>
            </tr>
        </thead>
    </table>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    </div>

    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
    <script src="{{asset('lb-faveo/dist/js/blogs.js')}}"></script>
    <script src="{{asset('lb-faveo/dist/js/delete.js')}}"></script>

@stop