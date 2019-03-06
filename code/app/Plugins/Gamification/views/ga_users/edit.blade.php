@extends('themes.default1.admin.layout.admin')

@section('content')
    <section class="content-header">
        <h1>
            Ga User
        </h1>
   </section>
   <div class="content">
    <div class="clearfix"></div>
    @include('gamification::interface.messages')       
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($gaUser, ['route' => ['gamification.gaUsers.update', $gaUser->id], 'method' => 'patch']) !!}

                        @include('gamification::ga_users.fields')

                   {!! Form::close() !!}
               </div>
           </div>
       </div>
   </div>
@endsection