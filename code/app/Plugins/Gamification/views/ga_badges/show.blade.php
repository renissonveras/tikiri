@extends('themes.default1.admin.layout.admin')

@section('content')
    <section class="content-header">
        <h1>
            Ga Badge
        </h1>
    </section>
    <div class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row" style="padding-left: 20px">
                    @include('gamification::ga_badges.show_fields')
                    <a href="{!! route('gamification.gaBadges.index') !!}" class="btn btn-default">Back</a>
                </div>
            </div>
        </div>
    </div>
@endsection
