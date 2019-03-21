<option>--- {!! Lang::get('lang.choose_a_help_topic') !!} ---</option>
@if(!empty($helptopics))
  @foreach($helptopics as $key => $value)
    <option value="{{ $key }}">{{ $value }}</option>
  @endforeach
@endif