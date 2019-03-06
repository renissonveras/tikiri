<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', Lang::get('gamification::lang.title')) !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.title-description') }}</p>
</div>

<!-- Category Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('category_id', Lang::get('gamification::lang.category')) !!}
    {!! Form::select('category_id',$categories,null,['class'=>'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.category-description') }}</p>
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', Lang::get('gamification::lang.description')) !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.description-description') }}</p>
</div>

<!-- Priority Field -->
<div class="form-group col-sm-6">
    {!! Form::label('priority', Lang::get('gamification::lang.priority')) !!}
    {!! Form::input('number','priority', null, ['class' => 'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.priority-description') }}</p>
</div>

@if ($type_id == 4 || $type_id == 2)
<!-- Credits Field -->
<div class="form-group col-sm-6">
    {!! Form::label('credits', Lang::get('gamification::lang.credits')) !!}
    {!! Form::input('number','credits', null, ['class' => 'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.credits-description') }}</p>
</div>
@endif

@if ($type_id == 3)
<!-- Xp Field -->
<div class="form-group col-sm-6">
    {!! Form::label('xp', Lang::get('gamification::lang.points')) !!}
    {!! Form::input('number','xp', null, ['class' => 'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.points-description') }}</p>
</div>
@endif

<!-- Price Field -->
@if ($type_id == 1 || $type_id == 2 || $type_id == 5)
<div class="form-group col-sm-6">
    {!! Form::label('price', Lang::get('gamification::lang.price')) !!}
    {!! Form::input('number','price', null, ['class' => 'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.price-description') }}</p>
</div>
@endif

<!-- Notification Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('notification', Lang::get('gamification::lang.notification')) !!}
    {!! Form::textarea('notification', null, ['class' => 'form-control']) !!}
    <p class="help-block">{{ Lang::get('gamification::lang.notification-description') }}</p>
</div>

<!-- Isdeduct Field -->
<div class="form-group col-sm-3">
    {!! Form::label('isdeduct', Lang::get('gamification::lang.is-deduct')) !!}
    <label class="checkbox-inline">
        {!! Form::hidden('isdeduct', false) !!}
        {!! Form::checkbox('isdeduct', '1', null) !!}  
        <p class="help-block">{{ Lang::get('gamification::lang.is-deduct-description') }}</p>
    </label>
   
</div>

<!-- Ishide Field -->
<div class="form-group col-sm-3">
    {!! Form::label('ishide', Lang::get('gamification::lang.is-hide')) !!}
    <label class="checkbox-inline">
        {!! Form::hidden('ishide', false) !!}
        {!! Form::checkbox('ishide', '1', null) !!}  
        <p class="help-block">{{ Lang::get('gamification::lang.is-hide-description') }}</p>
    </label>
</div>

@if ($type_id == 1 || $type_id == 5)
<!-- Ismultiple Field -->
<div class="form-group col-sm-3">
    {!! Form::label('ismultiple', Lang::get('gamification::lang.is-multiple')) !!}
    <label class="checkbox-inline">
        {!! Form::hidden('ismultiple', false) !!}
        {!! Form::checkbox('ismultiple', '1', null) !!} 
    </label>
    <p class="help-block">{{ Lang::get('gamification::lang.is-multiple-description') }}</p>
</div>
@endif

<!-- Ishide Field -->
<div class="form-group col-sm-3">
    {!! Form::label('isactive', Lang::get('gamification::lang.is-active')) !!}
    <label class="checkbox-inline">
        {!! Form::hidden('isactive', false) !!}
        {!! Form::checkbox('isactive', '1', null) !!}  
    </label>
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::hidden('type_id',$type_id,['class'=>'form-control']) !!}
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaBadges.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
