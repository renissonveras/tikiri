@extends('themes.default1.admin.layout.admin')

@section('content')
    <section class="content-heading-anchor" id="heading">
        <h2>
            {{Lang::get('gamification::lang.events')}}  
        </h2>
    </section>
    <div class="content">
        <div class="clearfix"></div>
        @include('gamification::interface.messages')        
        <div class="box box-primary">

            <div class="box-body">
                <div class="row">
                    {!! Form::open(['route' => 'gamification.gaEvents.store']) !!}

                        @include('gamification::ga_events.fields')

                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
