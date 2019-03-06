@extends('themes.default1.admin.layout.admin')

@section('content')
    <section class="content-header">
        <h1>
            {{Lang::get('gamification::lang.users')}} 
        </h1>
    </section>
    <div class="content">
        <div class="clearfix"></div>
        @include('gamification::interface.messages')        
        <div class="box box-primary">

            <div class="box-body">
                <div class="row">
                    {!! Form::open(['route' => 'gamification.gaUsers.store']) !!}

                        @include('gamification::ga_users.fields')

                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
