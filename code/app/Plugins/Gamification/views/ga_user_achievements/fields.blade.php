<!-- User Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('user_id', Lang::get('gamification::lang.user')) !!}
    {!! Form::number('user_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', Lang::get('gamification::lang.description')) !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

<!-- Added Date Field -->
<div class="form-group col-sm-6">
    {!! Form::label('added_date', Lang::get('gamification::lang.addeddate')) !!}
    {!! Form::date('added_date', null, ['class' => 'form-control']) !!}
</div>

<!-- Type Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('type_id', Lang::get('gamification::lang.type')) !!}
    {!! Form::number('type_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaUserAchievements.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
