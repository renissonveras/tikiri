<table class="table table-responsive" id="gaUserLevels-table">
    <thead>
        <th>User Id</th>
        <th>Levels</th>
        <th>Points</th>
        <th>Credits</th>
        <th>Init Points</th>
        <th>Max Points</th>
        <th>Level Id</th>
        <th colspan="3">Action</th>
    </thead>
    <tbody>
    @foreach($gaUserLevels as $gaUserLevels)
        <tr>
            <td>{!! $gaUserLevels->user_id !!}</td>
            <td>{!! $gaUserLevels->levels !!}</td>
            <td>{!! $gaUserLevels->points !!}</td>
            <td>{!! $gaUserLevels->credits !!}</td>
            <td>{!! $gaUserLevels->init_points !!}</td>
            <td>{!! $gaUserLevels->max_points !!}</td>
            <td>{!! $gaUserLevels->level_id !!}</td>
            <td>
                {!! Form::open(['route' => ['gamification.gaUserLevels.destroy', $gaUserLevels->id], 'method' => 'delete']) !!}
                <div class='btn-group'>
                    <a href="{!! route('gamification.gaUserLevels.show', [$gaUserLevels->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-eye-open"></i></a>
                    <a href="{!! route('gamification.gaUserLevels.edit', [$gaUserLevels->id]) !!}" class='btn btn-default btn-xs'><i class="glyphicon glyphicon-edit"></i></a>
                    {!! Form::button('<i class="glyphicon glyphicon-trash"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                </div>
                {!! Form::close() !!}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>