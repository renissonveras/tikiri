@extends('themes.default1.admin.layout.admin')

@section('content')
    <section class="content-heading-anchor" id="heading">
        <h2>
            {{Lang::get('gamification::lang.types')}}  
        </h2>
    </section>
    <div class="content">
        <div class="clearfix"></div>
        @include('gamification::interface.messages')        
        <div class="box box-primary">

            <div class="box-body">
                <div class="row">
                    {!! Form::open(['route' => 'gamification.gaTypes.store']) !!}

                        @include('gamification::ga_types.fields')

                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection
