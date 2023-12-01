@extends('themes.default1.admin.layout.admin')

@section('Staffs')
class="nav-link active"
@stop

@section('staff-menu-parent')
class="nav-item menu-open"
@stop

@section('staff-menu-open')
class="nav nav-treeview menu-open"
@stop

@section('groups')
class="nav-link active"
@stop

@section('HeadInclude')
@stop
<!-- header -->
@section('PageHeader')
<h1>{{Lang::get('lang.groups')}}</h1>
@stop
<!-- /header -->
<!-- breadcrumbs -->
@section('breadcrumbs')
<ol class="breadcrumb">
</ol>
@stop
<!-- /breadcrumbs -->
<!-- content -->
@section('content')

<!-- check whether success or not -->
@if(Session::has('success'))
<div class="alert alert-success alert-dismissable">
    <i class="fa  fa-check-circle"></i>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!! Session::get('success') !!}
</div>
@endif
<!-- failure message -->
@if(Session::has('fails'))
<div class="alert alert-danger alert-dismissable">
    <i class="fa fa-ban"></i>
    <b>Fail!</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!! Session::get('fails') !!}
</div>
@endif

<div class="card card-light">

    <div class="card-header">
        <h3 class="card-title">{!! Lang::get('lang.list_of_groups') !!}</h3>
        <div class="card-tools">
            <a href="{{route('groups.create')}}" class="btn btn-default btn-tool">
                <span class="fas fa-plus"></span>&nbsp;{{Lang::get('lang.create_group')}}
            </a>        
        </div>
    </div>

    <div class="card-body">
        
        <!-- Table -->
        <table class="table table-bordered dataTable" style="overflow:scroll;">
            <tr>
                <th>{{Lang::get('lang.group_name')}}</th>
                <th>{{Lang::get('lang.status')}}</th>
                <th>{{Lang::get('lang.action')}}</th>
            </tr>
            @foreach($groups as $group)
            <tr>
                <td><a href="{{route('groups.edit', $group->id)}}"> {{$group -> name }}</a></td>
                <td>
                    @if($group->group_status=='1')
                    <span style="color:green">{{'Active'}}</span>
                    @else
                    <span style="color:red">{{'Inactive'}}</span>
                    @endif
                <td>
                    {!! Form::open(['route'=>['groups.destroy', $group->id],'method'=>'DELETE']) !!}
                    <a href="{{route('groups.edit', $group->id)}}" class="btn btn-primary btn-xs"><i class="fas fa-edit"> </i> {{trans('lang.edit')}}</a>
                    <!-- To pop up a confirm Message -->
                    {!! Form::button('<i class="fas fa-trash"> </i>'.trans('lang.delete'),
                    ['type' => 'submit',
                    'class'=> 'btn btn-danger btn-xs',
                    'onclick'=>'return confirm("Are you sure?")'])
                    !!}
                    {!! Form::close() !!}
                </td>
            </tr>
            @endforeach
        </table>
    </div>
</div>
@stop
