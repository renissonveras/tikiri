@extends('themes.default1.agent.layout.agent')
@section('content')
<section class="content-header">
    
</section>
<div class="box box-primary">
    <div class="box-header">
        <h3 class="box-title">
            {{str_limit(ucfirst($release->subject),20)}}  

        </h3>
        <div class="pull-right">
            <!-- <button type="button" class="btn btn-default"><i class="fa fa-edit" style="color:green;"> </i> Edit</button> -->

            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" ><i class="fa fa-spinner fa-spin" style="color:teal; display:none;" id="spin"></i>
                    Atualizar <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="#build-plan"  data-toggle="modal" data-target="#build-plan{{$release->id}}">Plano de Execução</a></li>
                    <li><a href="#test-plan"  data-toggle="modal" data-target="#test-plan{{$release->id}}">Plano de Testes</a></li>

                </ul>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" ><i class="fa fa-spinner fa-spin" style="color:teal; display:none;" ></i>

                    Mais <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="{{url('service-desk/releases/'.$release->id.'/edit')}}">{{Lang::get('service::lang.edit')}}</a></li>
                    <li><a href="#delete" data-toggle="modal" data-target="#delete{{$release->id}}">Excluir</a></li>
                    @if($release->status_id=='1')
                    <li><a href="{{url('service-desk/release/'.$release->id.'/complete')}}">Completado</a></li>
                    @endif

                </ul>
            </div>


        </div>
    </div>
    <!-- ticket details Table -->
    <div class="box-body">
        <div class="row">
            <div class="col-md-12">
                @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <strong>Ooops!</strong> Houveram alguns problemas com a sua entrada de dados.<br><br>
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif

                @if(Session::has('success'))
                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    {{Session::get('success')}}
                </div>
                @endif
                <!-- fail message -->
                @if(Session::has('fails'))
                <div class="alert alert-danger alert-dismissable">
                    <i class="fa fa-ban"></i>
                    <b>{{Lang::get('message.alert')}}!</b> {{Lang::get('message.failed')}}.
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    {{Session::get('fails')}}
                </div>
                @endif

                @include('service::releases.popup.build-plan')
                @include('service::releases.popup.test-plan')
                <?php
                $delete_changeid = "$release->id";
                $delete_change_url = url('service-desk/releases/' . $release->id . '/delete');
                $delete_change_title = "Delete " . str_limit($release->subject, 5);
                $delete_pop = \App\Plugins\ServiceDesk\Controllers\Library\UtilityController::deletePopUp($delete_changeid, $delete_change_url, $delete_change_title, " ", " ", false);
                echo $delete_pop;
                ?>
                

            </div>
        </div>

        <div class="row">
            <section class="content">
                <div class="col-md-12">
                    <div class="callout callout-info">
                        <div class="row">

                            <div class="col-md-3">
                                <b>Criado em: </b> 
                                {!! $release->created_at->format('d-m-Y') !!}
                            </div>
                            <div class="col-md-3">
                                <b>Status: </b>
                                {!!$release->statuses()!!} 
                            </div>
                            <div class="col-md-3">
                                <b>{{Lang::get('service::lang.planed_start_date')}}: </b>
                                {!! $release->planned_start_date->format('d-m-Y') !!}
                            </div>
                            <div class="col-md-3">
                                <b>{{Lang::get('service::lang.planed_end_date') }}: </b>
                                {!! $release->planned_end_date!!}
                            </div>


                        </div>
                    </div>
                </div>

                <div id="hide2">
                    <div class="col-md-6">
                        <table class="table table-hover">
                            <tbody>

                                <tr>
                                    <td><b>Prioridade:</b></td>   
                                    <td>{!!$release->priorities()!!}</td>
                                </tr>
                                <tr>
                                    <td><b>{{Lang::get('service::lang.release_type')}}</b></td>
                                    <td>
                                        {!!$release->releaseTypes()!!}
                                    </td>
                                </tr>

                                


                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-6">

                        <table class="table table-hover">
                            <tbody>    
                                <tr>
                                    <td><b>{{Lang::get('service::lang.location')}}:</b></td>
                                    <td>
                                        {!!$release->locations()!!}
                                    </td>
                                </tr>

                               <tr>
                                    <td><b>{{Lang::get('service::lang.asset')}}</b></td>
                                    <td>
                                        {!!$release->getAssets()!!}
                                    </td>
                                </tr>



                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
@include('service::releases.timeline')


@stop