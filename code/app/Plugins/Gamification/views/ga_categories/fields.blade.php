<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', Lang::get('gamification::lang.title')) !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>

<!-- Shorttitle Field -->
<div class="form-group col-sm-6">
    {!! Form::label('shorttitle', Lang::get('gamification::lang.shorttitle')) !!}
    {!! Form::text('shorttitle', null, ['class' => 'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', Lang::get('gamification::lang.description')) !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

<!-- Type Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('type_id', Lang::get('gamification::lang.type')) !!}
    {!! Form::select('type_id',$types,null,['class'=>'form-control']) !!}
    <p class="help-block">Tipo de categoria</p>
</div>

<!-- Priority Field -->
<div class="form-group col-sm-6">
    {!! Form::label('priority', Lang::get('gamification::lang.priority')) !!}
    {!! Form::input('number','priority', null, ['class' => 'form-control']) !!}
    <p class="help-block">Utilize para priorizar este item nas listagens</p>    
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaCategories.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
