<!-- Title Field -->
<div class="form-group col-sm-6">
    {!! Form::label('title', Lang::get('gamification::lang.title')) !!}
    {!! Form::text('title', null, ['class' => 'form-control']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit(Lang::get('gamification::lang.save'), ['class' => 'btn btn-primary']) !!}
    <a href="{!! route('gamification.gaTypes.index') !!}" class="btn btn-default">{{ Lang::get('gamification::lang.cancel') }}</a>
</div>
