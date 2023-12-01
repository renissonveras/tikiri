@extends('themes.default1.agent.layout.agent')
@section('Users')
class="active"
@stop
@section('HeadInclude')
<style>
    h1 {
        color: #f2f2f2;
        font-family: Arial;
        font-size: 14px;
        margin: 0 0 20px;
        padding: 0;
        text-align: center;
    }
    input[type="checkbox"]:not(old) {
        width   : 28px;
        margin  : 0;
        padding : 0;
        opacity : 0;
    }
    input[type="checkbox"]:not(old) + label {
        color: #f2f2f2;
        font-family: Arial,sans-serif;
        font-size: 14px;
    }
    input[type="checkbox"]:not(old) + label span {
        background: rgba(0, 0, 0, 0) url("lb-faveo/media/images/check_radio_sheet.png") no-repeat scroll left top;
        cursor: pointer;
        display: inline-block;
        height: 19px;
        margin-left  : -28px;
        vertical-align: middle;
        width: 19px;
    }
    input[type="checkbox"]:checked + label span {
        background: rgba(0, 0, 0, 0) url("lb-faveo/media/images/check_radio_sheet.png") no-repeat scroll -19px top;
    }
</style>
@stop
@section('user-bar')
active
@stop

@section('user')
class="active"
@stop
@section('PageHeader')
<h3>{!! Lang::get('lang.notifications') !!}</h3>
@stop

<!-- /breadcrumbs -->
<!-- content -->
@section('content')
    @if(Session::has('success'))
    <div class="alert alert-success alert-dismissable">
        <i class="fa fa-ban"></i>
        <b>Alert!</b> Success.
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{Session::get('success')}}
    </div>
    @endif
    <!-- fail message -->
    @if(Session::has('fails'))
    <div class="alert alert-danger alert-dismissable">
        <i class="fa fa-ban"></i>
        <b>Alert!</b> Failed.
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {{Session::get('fails')}}
    </div>
    @endif
    <div id="alert21" class="alert alert-success alert-dismissable" style="display:none;">
        <button id="dismiss11" type="button" class="close" data-dismiss="alert" aria-hidden="true">�</button>
        <h4><i class="icon fa fa-check"></i>Alert!</h4>
        <div id="message-success2"></div>
    </div>
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">{!! Lang::get('lang.view_all_notifications')!!}</h3>
                    <div class="pull-right">
                        <a href="{{url('notifications-list/delete')}}" class="btn btn-danger">Delete all</a>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="row">
                    <!-- Left col -->
                    <section class="col-lg-12">
                        <!-- Custom tabs (Charts with tabs)-->




                        <!-- TO DO List -->
                        <div class="box box-default">
                            <!--
<div class="box-header">
<i class="ion ion-clipboard"></i>
<h3 class="box-title">Task</h3>
<div class="box-tools pull-right">
<ul class="pagination pagination-sm inline">
<li><a href="#">&laquo;</a>
</li>
<li><a href="#">1</a>
</li>
<li><a href="#">2</a>
</li>
<li><a href="#">3</a>
</li>
<li><a href="#">&raquo;</a>
</li>
</ul>
</div>
</div>
                            -->
                            
                            <!-- /.box-header -->
                            <div class="box-body">
                                <ul class="todo-list">
                                    @if($notifications)
                           
                                    @foreach($notifications->orderBy('created_at', 'desc')->simplePaginate() as $notification)
                                    @if($notification->notification && $notification->notification->type && $notification->notification->type->type == 'registration')
                                    @if($notification->is_read == 1)
                                    <li class="task">
                                        <!-- drag handle -->

                                        <!-- checkbox -->
                                        <input type="checkbox" value="" name="cc" class="noti_User clickfun" id="{{$notification -> notification_id}}">
                                        <label for='cl'  data-toggle="tooltip"  data-placement="top" title="Mark Read"><span></span>&nbsp<img src="{{$notification->users-> profile_pic}}" class="img-circle" style="width:25px;height: 25px" alt="User Image" />
                                            <!-- todo text -->
                                            <h6 class="textcontent marginzero"><a href="{!! route('user.show', $notification -> notification_id) !!}" id="{{$notification -> notification_id}}" class='noti_User'>{!! $notification->notification->type->message !!}</a></h6>
                                            <small class="label label-danger"><i class="fa fa-clock-o"></i> {{ $notification -> created_at }}</small></label> <!-- Emphasis label -->

                                        <!-- General tools such as edit or delete-->
                                        <div class="tools">
                                            <a href="{!! route('user.show', $notification -> notification_id) !!}"  data-toggle="tooltip"  data-placement="top" title="View" id="{{$notification -> notification_id}}" class='noti_User'><i class="fa fa-eye"></i></a>
                                            <a href="#" id='{{ $notification -> notification_id }}' data-toggle="tooltip"  data-placement="top" title="Delete" class='notification-delete clickfun'><i class="fa fa-trash-o"></i></a>
                                        </div>
                                    </li>
                                    @else
                                    <li>
                                        <!-- drag handle -->

                                        <!-- checkbox -->
                                        <input type="checkbox" value="" name="cc" class="noti_User clickfun" id="{{$notification -> notification_id}}">
                                        <label for='cl'  data-toggle="tooltip"  data-placement="top" title="Mark Read"><span></span>&nbsp<img src="{{$notification->users-> profile_pic}}" class="img-circle"  style="width:25px;height: 25px"  alt="User Image" />
                                            <!-- todo text -->
                                            <h6 class="textcontent marginzero"><a href="{!! route('user.show', $notification -> notification_id) !!}" id="{{$notification -> notification_id}}" class='noti_User'>{!! $notification->notification->type->message !!}</a></h6>
                                            <small class="label label-danger"><i class="fa fa-clock-o"></i> {{ $notification123-> created_at }}</small></label> <!-- Emphasis label -->

                                        <!-- General tools such as edit or delete-->
                                        <div class="tools">
                                            <a href="{!! route('user.show', $notification -> notification_id) !!}"  data-toggle="tooltip"  data-placement="top" title="View" id="{{$notification -> notification_id}}" class='noti_User'><i class="fa fa-eye"></i></a>
                                            <a href="#" id='{{ $notification -> notification_id }}' data-toggle="tooltip"  data-placement="top" title="Delete" class='notification-delete clickfun'><i class="fa fa-trash-o"></i></a>
                                        </div>
                                    </li>
                                    @endif
                                    @else
                                           @if($notification && $notification->notification && $notification->notification->type && $notification->is_read == 1)
                                    <li class="task">
                                        <input type="checkbox" value="" name="cc"  data-toggle="tooltip"  data-placement="top" title="Mark Read" class="noti_User clickfun" id="{{$notification -> notification_id}}">
                                        <label for='cl'><span></span>&nbsp<img src="{{$notification->users-> profile_pic}}" class="img-circle"  style="width:25px;height: 25px" alt="User Image" />
                                            <h6 class="textcontent marginzero"><a href="{!! route('ticket.thread', $notification->notification->model_id) !!}" id='{{ $notification -> notification_id }}' class='noti_User'>{!! $notification->notification->type->message !!} with id "{!!$notification->notification->model->ticket_number!!}"</a></h6>
                                            <small class="label label-info"><i class="fa fa-clock-o"></i> {{ $notification -> created_at }}</small>
                                        </label><div class="tools">
                                            <a href="{!! route('ticket.thread', $notification->notification->model_id) !!}" id='{{ $notification -> notification_id }}'  data-toggle="tooltip"  data-placement="top" title="View" class='noti_User'><i class="fa fa-eye"></i></a>
                                            <a href="#" id='{{ $notification -> notification_id }}' data-toggle="tooltip"  data-placement="top" title="Delete" class='notification-delete clickfun'><i class="fa fa-trash-o"></i></a>
                                        </div>
                                    </li>
                                    @elseif($notification->notification && $notification->notification->model)
                                                                        <li>
                                        <input type="checkbox" value="" name="cc"  data-toggle="tooltip"  data-placement="top" title="Mark Read" class="noti_User clickfun" id="{{$notification -> notification_id}}">
                                        <label for='cl'><span></span>&nbsp<img src="{{$notification->users-> profile_pic}}" class="img-circle"  style="width:25px;height: 25px"  alt="User Image" />
                                            <h6 class="textcontent marginzero"><a href="{!! route('ticket.thread', $notification->notification->model_id) !!}" id='{{ $notification -> notification_id }}' class='noti_User'>{!! $notification->notification->type->message !!} with id "{!!$notification->notification->model->ticket_number!!}"</a></h6>
                                            <small class="label label-info"><i class="fa fa-clock-o"></i> {{ $notification -> created_at }}</small>
                                        </label><div class="tools">
                                            <a href="{!! route('ticket.thread', $notification->notification->model_id) !!}" id='{{ $notification -> notification_id }}'  data-toggle="tooltip"  data-placement="top" title="View" class='noti_User'><i class="fa fa-eye"></i></a>
                                            <a href="#" id='{{ $notification -> notification_id }}' data-toggle="tooltip"  data-placement="top" title="Delete" class='notification-delete clickfun'><i class="fa fa-trash-o"></i></a>
                                        </div>
                                    </li>
                                    @endif
                                    @endif
                                    @endforeach

                                    @else
                                    <li>

                                        <h6 class="textcontent marginzero">{!! Lang::get('lang.no_notification_available') !!}</h6>
                                        <small class="label label-warning" ><i class="fa fa-bell-slash-o"></i></small>

                                    </li>
                                    @endif
{!!$notifications->Simplepaginate(10)!!}
                                </ul>
                            </div>

                        </div>
                        <!-- /.box -->


                    </section>
                </div>

                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        
<script>
    $(document).ready(function() {
        $(".clickfun").click(function() {
            $(this).closest("li").toggleClass("task");
        });
    });
</script>
<script>
    $(document).ready(function() {

        $('.notification-delete').click(function() {
            var id = this.id;
            var dataString = 'id=' + id;
            $.ajax
                    ({
                        type: "POST",
                        url: "{{url('notification-delete')}}" + "/" + id,
                        data: dataString,
                        cache: false,
                        success: function(response)
                        {
                            if (response == 1)
                            {

                                var message = "Success! You have deleted this notification successfully!";
                                $("#alert21").show();
                                $('#message-success2').html(message);
                            }
                        }
                    });
        });
    });
</script>
@stop