<div class="container">
    <div class="row">

        @if((sizeof($files) > 0) || (sizeof($directories) > 0))

            @foreach($directories as $key => $dir_name)
                <div class="col-sm-6 col-md-2">
                    <div class="thumbnail text-center" data-id="{{ $dir_name }}">
                        <a id="folder_{{ $key }}" data-id="{{ $dir_name }}" onclick="clickFolder('folder_{{ $key }}',0)" class="folder-icon pointer">
                            <img src="/vendor/laravel-filemanager/img/folder.jpg">
                        </a>
                    </div>
                    <div class="caption text-center">
                        <div class="btn-group">
                            <button type="button" onclick="clickFolder('folder_{{ $key }}',0)" class="btn btn-default btn-xs">
                                {{ Str::limit($dir_name, $limit = 10, $end = '...') }}
                            </button>
                            <button type="button" class="btn btn-default dropdown-toggle btn-xs" data-toggle="dropdown" aria-expanded="false">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="javascript:rename('{{ $dir_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-rename') }}</a></li>
                                <li><a href="javascript:trash('{{ $dir_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-delete') }}</a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            @endforeach

            @foreach($file_info as $key => $file)

                <?php $file_name = $file_info[$key]['name'];?>

                <div class="col-sm-6 col-md-2 img-row">

                    <div class="thumbnail thumbnail-img text-center" data-id="{{ $file_name }}" id="img_thumbnail_{{ $key }}">
                        <i class="fa {{ $file['icon'] }} fa-5x" style="height:200px;cursor:pointer;padding-top:60px;" onclick="useFile('{{ $file_name }}')"></i>
                    </div>

                    <div class="caption text-center">
                        <div class="btn-group ">
                            <button type="button" onclick="useFile('{{ $file_name }}')" class="btn btn-default btn-xs">
                                {{ Str::limit($file_name, $limit = 10, $end = '...') }}
                            </button>
                            <button type="button" class="btn btn-default dropdown-toggle btn-xs" data-toggle="dropdown" aria-expanded="false">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="javascript:rename('{{ $file_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-rename') }}</a></li>
                                <li><a href="javascript:fileView('{{ $file_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-view') }}</a></li>
                                <li><a href="javascript:download('{{ $file_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-download') }}</a></li>
                                <li class="divider"></li>
                                {{--<li><a href="javascript:notImp()">Rotate</a></li>--}}
                                <li><a href="javascript:resizeImage('{{ $file_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-resize') }}</a></li>
                                <li><a href="javascript:cropImage('{{ $file_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-crop') }}</a></li>
                                <li class="divider"></li>
                                <li><a href="javascript:trash('{{ $file_name }}')">{{ Lang::get('laravel-filemanager::lfm.menu-delete') }}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            @endforeach

        @else
            <div class="col-md-12">
                <p>{{ Lang::get('laravel-filemanager::lfm.message-empty') }}</p>
            </div>
        @endif

    </div>
</div>
