@extends('themes.default1.client.layout.client')
@section('breadcrumb')

    <style>
    .words {
    margin-right: 10px; /* Adjust the value to increase or decrease the gap between list items */
    }
    </style>

    <ol class="breadcrumb float-sm-right ">
        <li class="breadcrumb-item "> <i class="fas fa-home"> </i> {!! Lang::get('lang.you_are_here') !!} : &nbsp;</li>
        <li><a class="words" href="{!! URL::route('ticket') !!}">{!! Lang::get('lang.my_tickets') !!}</a></li>
        <li class="words"> > </li>
        <li><a  class="words" href="{{url('#')}}">{!! Lang::get('lang.check_ticket') !!}</a></li>
    </ol>

@stop
@section('content')
<?php
$tickets = App\Model\helpdesk\Ticket\Tickets::where('id', '=', \Crypt::decrypt($id))->first();
$thread = App\Model\helpdesk\Ticket\Ticket_Thread::where('ticket_id', '=', \Crypt::decrypt($id))->first();
//$user = App\User::where('id','=',$id1)->first();
?>
<!-- Main content -->


<div id="alert11" class="alert alert-dismissable alert-success" style="display: none;" role="aler">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <span id="message-success1" ></span>
</div>


<style type="text/css">
    .caret {
        border-left: 4px solid transparent;
        border-right: 4px solid transparent;
        border-top: 4px solid;
        display: inline-block;
        height: 0;
        margin-left: 2px;
        vertical-align: middle;
        width: 0;
    }

    .mailbox-attachments li{float:left;width:200px;border:1px solid #eee;margin-bottom:10px;margin-right:10px}

    .mailbox-attachment-name{font-weight:bold;color:#666;word-break: break-word;}

    .mailbox-attachment-icon,.mailbox-attachment-info,.mailbox-attachment-size{display:block}

    .mailbox-attachment-info{padding:10px;background:#f4f4f4;height: auto;}

    .mailbox-attachment-size{color:#999;font-size:12px}

    .mailbox-attachment-icon{text-align:center;font-size:65px;color:#666;padding:20px 10px}

    .mailbox-attachment-icon.has-img{padding:0}

    .mailbox-attachment-icon.has-img>img{max-width:100%;height:auto}

    #clearfix {display: inline-block!important;list-style-type: none!important;}

    .ml40 {margin-left: -40px!important;}
</style>

<div id="content" class="site-content col-sm-12">

    <article class="hentry">

        <header class="entry-header">

            <div class="row">

                <div class="col-sm-9">

                    <h3 class="entry-title"><i class="fas fa-ticket-alt"> </i> {{$thread->title}}

                        <small> ( {{$tickets->ticket_number}} ) </small>
                    </h3>
                </div>

                <div class="col-sm-3 text-right">

                    @if( $common_setting->status == '1')

                    <div>

                        <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false" style="background-color: whitesmoke">

                            <i class="fas fa-exchange-alt" style="color:teal;"> </i>

                            {!! Lang::get('lang.change_status') !!}

                            <span class="caret"></span>
                        </button>

                        <?php $statuses = \App\Model\helpdesk\Ticket\Ticket_Status::all(); ?>

                        <div class="dropdown-menu">

                            <a class="dropdown-item" href="#" id="open">
                                <i class="fas fa-folder-open" style="color:#FFD600;"> </i> {!! Lang::get('lang.open') !!}
                            </a>

                            <a class="dropdown-item" href="#" id="close">
                                <i class="fas fa-check" style="color:#15F109;"> </i> {!! Lang::get('lang.close') !!}
                            </a>

                            <a class="dropdown-item" href="#" id="resolved">
                                <i class="fas fa-check-circle " style="color:#0EF1BE;"> </i> {!! Lang::get('lang.resolved') !!}
                            </a>
                        </div>
                    </div>
                    @endif
                {!! Form::close() !!}
                </div>
            </div>

            <div class="row">

                <div class="col-md-12 mb-1">

                    <div class="ticketratings float-right">

                        <table>

                            <tbody>
                            <?php $ratings = App\Model\helpdesk\Ratings\Rating::orderby('display_order')->get(); ?>
                                <form id="foo">
                                    {!! csrf_field() !!}
                                    @foreach($ratings as $rating)

                                    @if($rating->rating_area == 'Helpdesk Area')
                                    <?php
                                    $rating_value = App\Model\helpdesk\Ratings\RatingRef::where('rating_id', '=', $rating->id)->where('ticket_id', '=', $tickets->id)->first();
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
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </header>

        <div class="entry-content clearfix">

            <div class="col-md-12 offset-md-5" id="loader" style="display:none;">

                <img src="{{asset("lb-faveo/media/images/gifloader.gif")}}"><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            </div>

            <div  id="refresh">
                <div>
                    <?php
                    $priority = App\Model\helpdesk\Ticket\Ticket_Priority::where('priority_id', '=', $tickets->priority_id)->first();
                    ?>
                    <div class="alert alert-secondary">
                        <div class="row">
                            <div class="col-md-3">
                                <?php
                                $sla = $tickets->sla;
                                $SlaPlan = App\Model\helpdesk\Manage\Sla_plan::where('id', '=', $sla)->first();
                                ?>
                                <b>{!! Lang::get('lang.sla_plan') !!}: {{$SlaPlan->grace_period}} </b>
                            </div>
                            <div class="col-md-3">
                                <b>{!! Lang::get('lang.created_date') !!}: </b> {{ UTC::usertimezone($tickets->created_at) }}
                            </div>
                            <div class="col-md-3">
                                <b>{!! Lang::get('lang.due_date') !!}: </b>
                                <?php
                                $time = $tickets->created_at;
                                $time = date_create($time);
                                date_add($time, date_interval_create_from_date_string($SlaPlan->grace_period));
                                echo UTC::usertimezone(date_format($time, 'Y-m-d H:i:s'));
                                ?>
                            </div>
                            <div class="col-md-3">
                                <?php $response = App\Model\helpdesk\Ticket\Ticket_Thread::where('ticket_id', '=', $tickets->id)->where('is_internal', '=', 0)->get(); ?>
                                @foreach($response as $last)
                                <?php $ResponseDate = $last->created_at; ?>
                                @endforeach
                                <b>{!! Lang::get('lang.last_response') !!}: </b> {{ UTC::usertimezone($ResponseDate)}}
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">

                     <div class="col-md-6">

                        <table class="table">

                            <tr>

                                <td><b>{!! Lang::get('lang.status') !!}:</b></td>

                                <?php $status = App\Model\helpdesk\Ticket\Ticket_Status::where('id', '=', $tickets->status)->first(); ?>

                                @if($status->id == 1)

                                <td title="{{$status->properties}}" style="color:orange">{{$status->name}}</td>

                                @elseif($status->id == 2)

                                <td title="{{$status->properties}}" style="color:green">{{$status->name}}</td>

                                @elseif($status->id == 3)

                                <td title="{{$status->properties}}" style="color:green">{{$status->name}}</td>

                                @endif
                            </tr>

                            <tr>

                                <td><b>{!! Lang::get('lang.priority') !!}:</b></td>

                                <?php $priority = App\Model\helpdesk\Ticket\Ticket_Priority::where('priority_id', '=', $tickets->priority_id)->first(); ?>

                                @if($priority->priority_id == 1)

                                <td title="{{$priority->priority_desc}}" style="color:green">{{$priority->priority_desc}}</td>

                                @elseif($priority->priority_id == 2)

                                <td title="{{$priority->priority_desc}}" style="color:orange">{{$priority->priority_desc}}</td>

                                @elseif($priority->priority_id == 3)

                                <td title="{{$priority->priority_desc}}" style="color:red">{{$priority->priority_desc}}</td>

                                @endif
                            </tr>

                            <tr>

                                <td><b>{!! Lang::get('lang.department') !!}:</b></td>
                                <?php
                                $help_topic = App\Model\helpdesk\Manage\Help_topic::where('id', '=', $tickets->help_topic_id)->first();
                                $department = App\Model\helpdesk\Agent\Department::where('id', '=', $help_topic->department)->first();
                                ?>
                                <td title="{{ $department->name }}">{!! $department->name !!}</td>
                            </tr>
                        </table>
                    </div>

                    <div class="col-md-6">

                        <table class="table">

                            <tr>

                                <td><b>{!! Lang::get('lang.help_topic') !!}:</b></td>

                                <?php $help_topic = App\Model\helpdesk\Manage\Help_topic::where('id', '=', $tickets->help_topic_id)->first(); ?>

                                <td title="{{$help_topic->topic}}">{{$help_topic->topic}}</td>
                            </tr>

                            <tr>

                                <td><b>{!! Lang::get('lang.last_message') !!}:</b></td>

                                <td>{{ucwords($last->poster)}}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="comments-area mb-0" id="comments">

                <?php
                $conversations = App\Model\helpdesk\Ticket\Ticket_Thread::where('ticket_id', '=', $tickets->id)->where('is_internal', '=', 0)->paginate(10);
                $ij = App\Model\helpdesk\Ticket\Ticket_Thread::where('ticket_id', '=', $tickets->id)->first();
                $user = App\User::where('id', '=', $tickets->user_id)->first();
                foreach ($conversations as $conversation) {
                $role = $conversation->user;
                $body = $conversation->thread($conversation->body);
                ?>

                <ol class="comment-list" >

                    <li class="comment">

                        <article class="comment-body">

                            <footer class="comment-meta"
                            <?php if ($role->role == "user") { ?> style="background-color: hsla(100, 100%, 51%, 0.15)" <?php } else { ?> style="background-color:#FFFCB3" <?php } ?>
                            >
                                <div class="comment-author">

                                    <img src="{{$role->profile_pic}}"alt="" height="50" width="50" class="avatar"
                                    <?php if ($role->role == "user") { ?>style="box-shadow: 0 1px 3px #00FF26;" <?php } else { ?> style="box-shadow: 0 1px 3px #FFEC00;" <?php } ?>
                                    >
                                    @if($role->role == "user")
                                    <b class="fn"><a href="#" rel="external" class="url">{{$role->user_name}}</a></b>
                                    @else
                                    <b class="fn"><a href="#" rel="external" class="url">{{$role->first_name." ".$role->last_name}}</a></b>

                                    <div class="ticketratings float-right" style="margin-top: -12px;">

                                        <table>

                                            <tbody>
                                            @foreach($ratings as $rating)
                                            @if($rating->rating_area == 'Comment Area')
                                            <?php
                                            $rating_value = App\Model\helpdesk\Ratings\RatingRef::where('rating_id', '=', $rating->id)->where('thread_id', '=', $conversation->id)->first();
                                            if ($rating_value == null) {
                                                $ratingval = '0';
                                            } else {
                                                $ratingval = $rating_value->rating_value;
                                            }
                                            ?>
                                                <form class="foo2">
                                                {{ csrf_field() }}
                                                    <tr>
                                                        <th><div class="ticketratingtitle">{!! $rating->name !!} &nbsp;</div></th>&nbsp;

                                                        <td>
                                                        <?php for ($i = 1; $i <= $rating->rating_scale; $i++) { ?>
                                                            <input type="radio" class="star" id="star5" name="{!! $rating->name !!},{!! $conversation->id !!}" value="{!! $i !!}"<?php echo ($ratingval == $i) ? 'checked' : '' ?> />
                                                        <?php } ?>
                                                        </td>
                                                    </tr>
                                                </form>
                                            @endif
                                            @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                    @endif
                                </div><!-- .comment-author -->

                                <div class="comment-metadata">

                                    <small class="date text-muted">

                                        <time datetime="2013-10-23T01:50:50+00:00"><i class="fa fa-clock-o"> </i> {{ UTC::usertimezone($conversation->created_at) }}</time>
                                    </small>
                                </div><!-- .comment-metadata -->
                            </footer><!-- .comment-meta -->

                            <div class="comment-content">

                                @if($conversation->firstContent()=='yes')
                                    <div class="embed-responsive{{$conversation->id}} embed-responsive-16by9">
                                        <div class="reply">{!! $conversation->purify(true) !!}</div>
                                    </div>
                                    <script>
                                        setTimeout(function(){
                                            var $iframe = "Id{{$conversation->id}}";
                                            $('<iframe src="about:blank" id='+$iframe+' class="iframe" frameborder="0" scrolling="no" width="100%" style="height:1px"></iframe>').appendTo(".embed-responsive{{$conversation->id}}");
                                            setTimeout(function(){
                                                $('#'+$iframe).contents().find('body').append('<style>body{display:inline-block;}</style>');
                                            }, 100);
                                            setTimeout(function(){
                                                var frameid = document.getElementById($iframe);
                                                if(parseInt($("#"+$iframe).contents().find('img').css('width'))>700){
                                                    $("#"+$iframe).contents().find('img').css('width','96%');
                                                }
                                                frameid.contentWindow.document.body.style.width="100%";
                                                var iframe_height = frameid.contentWindow.document.body.scrollHeight;
                                                frameid.style.height = iframe_height + "px";
                                            }, 1000);
                                        }, 0);
                                    </script>
                                @else
                                    <div class="reply">{!! $conversation->purify(true) !!}</div>
                                @endif


                                @if($conversation->id == $ij->id)
                                <?php $ticket_form_datas = App\Model\helpdesk\Ticket\Ticket_Form_Data::where('ticket_id', '=', $tickets->id)->get(); ?>
                                @if(isset($ticket_form_datas))

                                <br/>
                                <table class="table">

                                    <tbody>
                                        @foreach($ticket_form_datas as $ticket_form_data)
                                        <tr>
                                            <td style="width: 30%">{!! $ticket_form_data->getFieldKeyLabel() !!}</td>
                                            <td>{!! removeUnderscore($ticket_form_data->content) !!}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                @endif
                                @endif
                            </div><!-- .comment-content -->
                            <br/><br/>

                            <div class="timeline-footer">

                                @if(!$conversation->is_internal)
                                @if($conversation->user_id != null)
                                <?php \Illuminate\Support\Facades\Event::dispatch(new App\Events\Timeline($conversation, $role, $user)); ?>
                                @endif
                                @endif
                                <?php
                                $attachments = App\Model\helpdesk\Ticket\Ticket_attachments::where('thread_id', '=', $conversation->id)->get();
                                $i = 0;
                                foreach ($attachments as $attachment) {
                                    if ($attachment->poster == 'ATTACHMENT') {
                                        $i++;
                                    }
                                }
                                if ($i > 0) {
                                    echo "<hr style='border-top: 1px dotted #FFFFFF;margin-top:0px;margin-bottom:0px;background-color:#8B8C90;'><br><h5 class='entry-title'><b>" . $i . " </b> Attachments</h5>";
                                }
                                ?>

                                <ul id="clearfix" class="mailbox-attachments clearfix ml40">

                                    <?php
                                    foreach ($attachments as $attachment) {
                                        $size = $attachment->size;
                                        $units = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
                                        $power = $size > 0 ? floor(log($size, 1024)) : 0;
                                        $value = number_format($size / pow(1024, $power), 2, '.', ',') . ' ' . $units[$power];
                                        if ($attachment->poster == 'ATTACHMENT') {
                                            if (mime($attachment->type) == true) {
                                                $var = '<a href="' . URL::route('image', ['image_id' => $attachment->id]) . '" target="_blank"><img style="width:200px;height:120px;" src="data:image/jpg;base64,' . $attachment->file . '"/></a>';

                                                echo '<li><span class="mailbox-attachment-icon has-img">' . $var . '</span><div class="mailbox-attachment-info"><a class="mailbox-attachment-name">' . $attachment->name . '</a><span class="mailbox-attachment-size">' . $value . '</span></div></li>';
                                            } else {
                                                //$var = '<a href="' . URL::route('image', array('image_id' => $attachment->id)) . '" target="_blank"><img style="max-width:200px;height:133px;" src="data:'.$attachment->type.';base64,' . base64_encode($data) . '"/></a>';
                                                $var = '<a style="width:200px;height:120px;text-decoration: none;" href="' . URL::route('image', ['image_id' => $attachment->id]) . '" target="_blank"><span class="mailbox-attachment-icon" style="background:#fff;height:120px;font-size:16px;">' . strtoupper($attachment->type) . '</span></a><div class="mailbox-attachment-info">' . $attachment->name . '<span class="mailbox-attachment-size">' . $value . '</span></div>';

                                                echo '<li style="background-color:#f4f4f4;">' . $var . '</li>';
                                            }
                                        }
                                    }
                                    ?>
                                </ul>
                            </div>
                        </article><!-- .comment-body -->
                    </li><!-- .comment -->
                </ol>
                <?php
                ?>

            <?php }
            ?>

            <div class="float-right" style="margin-top:-25px;margin-bottom:-30px">
                <?php echo $conversations->setPath(route('check_ticket', ['id' => $id]))->render(); ?>
            </div>
            <br/><br/>
            </div>

            @if(Session::has('success1'))
            <div class="alert alert-success alert-dismissable" id='formabc'>
                <i class="fa  fa-check-circle"></i>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{Session::get('success1')}}
            </div>
            @endif
            <!-- failure message -->
            @if(Session::has('fails1'))
            <div class="alert alert-danger alert-dismissable" id='formabc'>
                <i class="fa fa-ban"></i>
                <b>{!! Lang::get('lang.alert') !!}!</b>
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                {{Session::get('fails1')}}
            </div>
            @endif

            <?php $id2 = Crypt::decrypt($id); ?>

            <div id="respond" class="comment-respond form-border">

                <h3 id="reply-title" class="comment-reply-title section-title"><i class="line"></i>{!! Lang::get('lang.leave_a_reply') !!}</h3>
                @if(Auth::user())
                {!! Form::open(['url'=>'post/reply/'.$id2.'#formabc']) !!}
                @else
                {!! Form::open(['url'=>'post-ticket-reply/'.$id.'#formabc']) !!}
                @endif
                <div class="row">
                        <div class="col-md-12">
                            <div class="form-group " style="background-color: white">
                                <textarea class="form-control" id="reply-input" name="comment" cols="30" rows="8" ></textarea>
                            </div>
                        </div>
                </div>

                <div class="text-right">

                    <button type="submit" onClick="return checkFunction();" class="btn btn-custom btn-lg" style="background-color: #009aba; hov: #00c0ef; color: #fff">{!! Lang::get('lang.post_comment') !!}</button>
                </div>
            {!! Form::close() !!}
            </div>
        </div>
    </article>
</div>

<script type="text/javascript">
    function checkFunction() {
        var x;
        x = document.getElementById("reply-input").value;
        if (x == "") {
            alert("{{Lang::get('lang.reply-can-not-be-empty')}}");
            return false;
        };
    }

    $("#cc_page").on('click', '.search_r', function () {
        var search_r = $('a', this).attr('id');
        $.ajax({
            type: "GET",
            url: "../ticket/status/{{$tickets->id}}/" + search_r,
            beforeSend: function () {
                $("#refresh").hide();
                $("#loader").show();
            },
            success: function (response) {
                $("#refresh").load("../check_ticket/{!! $id !!}  #refresh");
                $("#refresh").show();
                $("#loader").hide();
                var message = response;
                $("#alert11").show();
                $('#message-success1').html(message);
                setInterval(function () {
                    $("#alert11").hide();
                }, 4000);
            }
        });
        return false;
    });

    $(document).ready(function () {
        var Data = $('input[name="rating"]:checked').val();
        var Data2 = $('input[name="rating2"]:checked').val();
        if (Data) {
            $('input[name=rating]').rating('readOnly');
            jQuery('.star').attr('disabled', true);
        }
        $('.star').change(function () {
            $('#foo').submit();
            $('.foo2').submit();
        });
        // process the form
        $('#foo').submit(function (event) {
            // get the form data
            // there are many ways to get this data using jQuery (you can use the class or id also)
            var formData = $(this).serialize();
            //$('#foo').serialize();
            // process the form
            $.ajax({
                type: 'POST', // define the type of HTTP verb we want to use (POST for our form)
                url: '../rating/' +<?php echo $tickets->id ?>, // the url where we want to POST
                data: formData, // our data object
                dataType: 'json', // what type of data do we expect back from the server
                success: function () {
                }
            });
            // using the done promise callback
            // stop the form from submitting the normal way and refreshing the page
            event.preventDefault();
        });
        // process the form
        $('.foo2').submit(function (event) {
            // get the form data
            // there are many ways to get this data using jQuery (you can use the class or id also)
            var formData = $(this).serialize();
            //$('#foo').serialize();
            // process the form
            $.ajax({
                type: 'POST', // define the type of HTTP verb we want to use (POST for our form)
                url: '../rating2/' +<?php echo $tickets->id ?>, // the url where we want to POST
                data: formData, // our data object
                dataType: 'json', // what type of data do we expect back from the server
                success: function () {
                }
            });
            // using the done promise callback
            // stop the form from submitting the normal way and refreshing the page
            event.preventDefault();
        });
    });

    $(function() {
//Add text editor
    $("textarea").summernote({
        height: 300,
        tabsize: 2,
        toolbar: [
        ['style', ['bold', 'italic', 'underline', 'clear']],
        ['font', ['strikethrough', 'superscript', 'subscript']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']]
      ]
      });
});

    jQuery(document).ready(function () {
        // Close a ticket
        $('#close').on('click', function (e) {
            $.ajax({
                type: "POST",
                url: "../ticket/close/{{$tickets->id}}",
                data:{"_token": "{{ csrf_token() }}"},
                beforeSend: function () {
                    $("#refresh").hide();
                    $("#loader").show();
                },
                success: function (response) {
                    $("#refresh").load("../check_ticket/{!! $id !!}  #refresh");
                    $("#refresh").show();
                    $("#loader").hide();
                    $("#d1").trigger("click");
                    var message = "Successo! Your Ticket have been Closed";
                    $("#alert11").show();
                    $('#message-success1').html(message);
                    setInterval(function(){
                        $("#alert11").hide();
                        setTimeout(function() {
                            var link = document.querySelector('#load-inbox');
                            if(link) {
                                link.click();
                            }
                        }, 500);
                    },2000);
                }
            })
            return false;
        });

        // Resolved  a ticket
        $('#resolved').on('click', function (e) {
            $.ajax({
                type: "POST",
                url: "../ticket/resolve/{{$tickets->id}}",
                data:{"_token": "{{ csrf_token() }}"},
                beforeSend: function () {
                    $("#refresh").hide();
                    $("#loader").show();
                },
                success: function (response) {
                    $("#refresh").load("../check_ticket/{!! $id !!}  #refresh");
                    $("#refresh").show();
                    $("#loader").hide();
                    var message = "Successo! Your Ticket have been Resolved";
                    $("#alert11").show();
                    $('#message-success1').html(message);
                    setInterval(function () {
                        $("#alert11").hide();
                        setTimeout(function () {
                            var link = document.querySelector('#load-inbox');
                            if (link) {
                                link.click();
                            }
                        }, 500);
                    }, 2000);
                }
            })
            return false;
        });

        // Open a ticket
        $('#open').on('click', function (e) {
            $.ajax({
                type: "POST",
                url: "../ticket/open/{{$tickets->id}}",
                data:{"_token": "{{ csrf_token() }}"},
                beforeSend: function () {
                    $("#refresh").hide();
                    $("#loader").show();
                },
                success: function (response) {
                    $("#refresh").load("../check_ticket/{!! $id !!}  #refresh");
                    $("#refresh").show();
                    $("#loader").hide();

                    var message = "Successo! Your Ticket have been Opened";
                    $("#alert11").show();
                    $('#message-success1').html(message);
                    setInterval(function () {
                        $("#alert11").hide();
                    }, 4000);
                }
            })
            return false;
        });
    });
</script>
@stop