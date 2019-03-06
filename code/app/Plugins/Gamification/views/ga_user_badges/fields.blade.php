<!-- User Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('user_id', 'User Id:') !!}
    {!! Form::number('user_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Badge Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('badge_id', 'Badge Id:') !!}
    {!! Form::number('badge_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Type Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('type_id', 'Type Id:') !!}
    {!! Form::number('type_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Added Date Field -->
<div class="form-group col-sm-6">
    {!! Form::label('added_date', 'Added Date:') !!}
    {!! Form::date('added_date', null, ['class' => 'form-control']) !!}
</div>

<!-- Added User Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('added_user_id', 'Added User Id:') !!}
    {!! Form::number('added_user_id', null, ['class' => 'form-control']) !!}
</div>

<!-- Acumulated Xp Field -->
<div class="form-group col-sm-6">
    {!! Form::label('acumulated_xp', 'Acumulated Xp:') !!}
    {!! Form::number('acumulated_xp', null, ['class' => 'form-control']) !!}
</div>

<!-- Acumulated Credits Field -->
<div class="form-group col-sm-6">
    {!! Form::label('acumulated_credits', 'Acumulated Credits:') !!}
    {!! Form::number('acumulated_credits', null, ['class' => 'form-control']) !!}
</div>

<!-- Deducted Xp Field -->
<div class="form-group col-sm-6">
    {!! Form::label('deducted_xp', 'Deducted Xp:') !!}
    {!! Form::number('deducted_xp', null, ['class' => 'form-control']) !!}
</div>

<!-- Deducted Credits Field -->
<div class="form-group col-sm-6">
    {!! Form::label('deducted_credits', 'Deducted Credits:') !!}
    {!! Form::number('deducted_credits', null, ['class' => 'form-control']) !!}
</div>

<!-- Total Credits In Moment Field -->
<div class="form-group col-sm-6">
    {!! Form::label('total_credits_in_moment', 'Total Credits In Moment:') !!}
    {!! Form::number('total_credits_in_moment', null, ['class' => 'form-control']) !!}
</div>

<!-- Total Xp In Moment Field -->
<div class="form-group col-sm-6">
    {!! Form::label('total_xp_in_moment', 'Total Xp In Moment:') !!}
    {!! Form::number('total_xp_in_moment', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaUserBadges.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
