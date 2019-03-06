@extends('themes.default1.admin.layout.admin')

@section('content')
    <section class="content-heading-anchor" id="heading">
        <h2>
            {{Lang::get('gamification::lang.user_levels')}}  
        </h2>
    </section>
    <div class="content">
        
        <div class="box box-primary">
        <div class="clearfix"></div>
        @include('gamification::interface.messages')
            <div class="box-body">
                <div class="row">
                    {!! Form::open(['route' => 'gamification.gaUserLevels.store']) !!}

                        @include('gamification::ga_user_levels.fields')

                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
