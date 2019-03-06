<!-- Level Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('level_id', Lang::get('gamification::lang.level')) !!}
     {!! Form::select('level_id',$levels,null,['class'=>'form-control']) !!}
</div>

<!-- Reward Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('reward_id', Lang::get('gamification::lang.reward')) !!}
     {!! Form::select('reward_id',$rewards,null,['class'=>'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', Lang::get('gamification::lang.description')) !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaLevelAssociates.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
