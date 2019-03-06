<!-- User Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('user_id', 'User Id:') !!}
    {!! Form::number('user_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Levels Field -->
<div class="form-group col-sm-6">
    {!! Form::label('levels', 'Levels:') !!}
    {!! Form::number('levels', null, ['class' => 'form-control']) !!}
</div>

<!-- Points Field -->
<div class="form-group col-sm-6">
    {!! Form::label('points', 'Points:') !!}
    {!! Form::number('points', null, ['class' => 'form-control']) !!}
</div>

<!-- Credits Field -->
<div class="form-group col-sm-6">
    {!! Form::label('credits', 'Credits:') !!}
    {!! Form::number('credits', null, ['class' => 'form-control']) !!}
</div>

<!-- Init Points Field -->
<div class="form-group col-sm-6">
    {!! Form::label('init_points', 'Init Points:') !!}
    {!! Form::number('init_points', null, ['class' => 'form-control']) !!}
</div>

<!-- Max Points Field -->
<div class="form-group col-sm-6">
    {!! Form::label('max_points', 'Max Points:') !!}
    {!! Form::number('max_points', null, ['class' => 'form-control']) !!}
</div>

<!-- Level Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('level_id', 'Level Id:') !!}
    {!! Form::number('level_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaUserLevels.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
