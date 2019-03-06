<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', Lang::get('gamification::lang.title')) !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>

<!-- Event Key Field -->
<div class="form-group col-sm-6">
    {!! Form::label('event_key', Lang::get('gamification::lang.key')) !!}
    {!! Form::text('event_key', null, ['class' => 'form-control']) !!}
</div>

<!-- Description Field -->
<div class="form-group col-sm-12 col-lg-12">
    {!! Form::label('description', Lang::get('gamification::lang.description')) !!}
    {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaEvents.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
