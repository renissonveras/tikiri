@extends('themes.default1.admin.layout.admin')

@section('Manage')
class="nav-link active"
@stop

@section('manage-menu-parent')
class="nav-item menu-open"
@stop

@section('manage-menu-open')
class="nav nav-treeview menu-open"
@stop

@section('help')
class="nav-link active"
@stop

@section('HeadInclude')
@stop
<!-- header -->
@section('PageHeader')
<h1>{{Lang::get('lang.manage')}}</h1>
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
    <b>{!! Lang::get('lang.alert') !!} !</b>
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    {!! Session::get('fails') !!}
</div>
@endif
<div class="card card-light">
    <div class="card-header">
        <h3 class="card-title">{{Lang::get('lang.help_topic')}}</h3>
        <div class="card-tools">
            <a href="{{route('helptopic.create')}}" class="btn btn-default btn-tool">
                <span class="fas fa-plus"></span>&nbsp;{{Lang::get('lang.create_help_topic')}}
            </a>        
        </div>
    </div>
    <div class="card-body">
        
        <table class="table table-bordered dataTable">
            <tr>
                <th width="100px">{{Lang::get('lang.topic')}}</th>
                <th width="100px">{{Lang::get('lang.status')}}</th>
                <th width="100px">{{Lang::get('lang.type')}}</th>
                <th width="100px">{{Lang::get('lang.priority')}}</th>
                <th width="100px">{{Lang::get('lang.department')}}</th>
                <th width="100px">{{Lang::get('lang.last_updated')}}</th>
                <th width="100px">{{Lang::get('lang.action')}}</th>
            </tr>
            <?php
            $default_helptopic = App\Model\helpdesk\Settings\Ticket::where('id', '=', '1')->first();
            $default_helptopic = $default_helptopic->help_topic;
            ?>
            <!-- Foreach @var$topics as @var topic -->
            @foreach($topics as $topic)
            <tr style="padding-bottom:-30px">
                <!-- topic Name with Link to Edit page along Id -->
                <td><a href="{{route('helptopic.edit',$topic->id)}}">{!! $topic->topic !!}
                        @if($topic->id == $default_helptopic)
                        ( Default )
                        <?php
                        $disable = 'disabled';
                        ?>
                        @else
                        <?php
                        $disable = '';
                        ?>
                        @endif
                    </a></td>

                <!-- topic Status : if status==1 active -->
                <td>
                    @if($topic->status=='1')
                    <span style="color:green">{!! Lang::get('lang.active') !!}</span>
                    @else
                    <span style="color:red">{!! Lang::get('lang.disable') !!}</span>
                    @endif
                </td>

                <!-- Type -->

                <td>
                    @if($topic->type=='1')
                    <span style="color:green">{!! Lang::get('lang.public') !!}</span>
                    @else
                    <span style="color:red">{!! Lang::get('lang.private') !!}</span>
                    @endif
                </td>
                <!-- Priority -->
                <?php $priority = App\Model\helpdesk\Ticket\Ticket_Priority::where('priority_id', '=', $topic->priority)->first(); ?>
                <td>{!! $priority->priority_desc !!}</td>
                <!-- Department -->
                @if($topic->department != null)
                <?php
                $dept = App\Model\helpdesk\Agent\Department::where('id', '=', $topic->department)->first();
                $dept = $dept->name;
                ?>
                @elseif($topic->department == null)
                <?php $dept = ""; ?>
                @endif
                <td> {!! $dept !!} </td>
                <!-- Last Updated -->
                <td> {!! UTC::usertimezone($topic->updated_at) !!} </td>
                <!-- Deleting Fields -->
                <td>
                    {!! Form::open(['route'=>['helptopic.destroy', $topic->id],'method'=>'DELETE']) !!}
                    <a href="{{route('helptopic.edit',$topic->id)}}" class="btn btn-primary btn-xs"><i class="fas fa-edit"> </i> {!! Lang::get('lang.edit') !!}</a>
                    <!-- To pop up a confirm Message -->
                    @if($topic->id == $default_helptopic)
                        {!! Form::button('<i class="fas fa-trash"> </i> '.Lang::get('lang.delete'),
                        ['class'=> 'btn btn-danger btn-xs '.$disable])
                        !!}
                    @else
                        {!! Form::button('<i class="fas fa-trash"> </i> '.Lang::get('lang.delete'),
                        ['type' => 'submit',
                        'class'=> 'btn btn-danger btn-xs',
                        'onclick'=>'return confirm("Are you sure?")'])
                        !!}
                    @endif
                    </div>
                    {!! Form::close() !!}
                </td>
                @endforeach
            </tr>
            <!-- Set a link to Create Page -->

        </table>
    </div>
</div>
@stop