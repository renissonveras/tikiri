<table class="table table-responsive" id="gaUserAchievements-table">
    <thead>
        <th>User Id</th>
        <th>Description</th>
        <th>Added Date</th>
        <th>Type Id</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($gaUserAchievements as $gaUserAchievements)
        <tr>
            <td>{!! $gaUserAchievements->user_id !!}</td>
            <td>{!! $gaUserAchievements->description !!}</td>
            <td>{!! $gaUserAchievements->added_date !!}</td>
            <td>{!! $gaUserAchievements->type_id !!}</td>
            <td>
                {!! Form::open(['route' => ['gamification.gaUserAchievements.destroy', $gaUserAchievements->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('gamification.gaUserAchievements.show', [$gaUserAchievements->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('gamification.gaUserAchievements.edit', [$gaUserAchievements->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>