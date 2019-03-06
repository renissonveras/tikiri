@extends('themes.default1.admin.layout.admin')

@section('content')
    <section class="content-heading-anchor" id="heading">
        <h2>
            {{Lang::get('gamification::lang.level_associates')}}  
        </h2>
    </section>
   <div class="content">
    <div class="clearfix"></div>
    @include('gamification::interface.messages')       
       <div class="box box-primary">
           <div class="box-body">
               <div class="row">
                   {!! Form::model($gaLevelAssociate, ['route' => ['gamification.gaLevelAssociates.update', $gaLevelAssociate->id], 'method' => 'patch']) !!}

                        @include('gamification::ga_level_associates.fields')

                   {!! Form::close() !!}
               </div>
              <div class="row">
                  {!! Form::open(['route' => ['gamification.gaLevelAssociates.destroy', $gaLevelAssociate->id], 'method' => 'delete']) !!}
                  <div class="form-group col-sm-12">
                    <div class='btn-group pull-right'>
                        {!! Form::button('<i class="fa fa-trash"></i> Excluir', ['type' => 'submit', 'class' => 'btn btn-danger btn-sm', 'onclick' => "return confirm('Tem certeza?')"]) !!}
                    </div>
                  </div>
                  {!! Form::close() !!}
              </div>
           </div>
       </div>
   </div>
@endsection