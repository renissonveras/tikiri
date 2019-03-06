<!-- Event Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('event_id', Lang::get('gamification::lang.event')) !!}
    {!! Form::select('event_id', $events, null, ['class' => 'form-control']) !!}
</div>

<!-- Badge Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('badge_id', Lang::get('gamification::lang.badge')) !!}
    {!! Form::select('badge_id', $badges, null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaBagdeEvents.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
