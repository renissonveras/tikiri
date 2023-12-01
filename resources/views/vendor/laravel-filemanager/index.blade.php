<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{{ Lang::get('laravel-filemanager::lfm.title-page') }}</title>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <!--<link rel="stylesheet" href="/FaveoHELPDESK+KBenvatoLite/vendor/laravel-filemanager/css/cropper.min.css">-->
    <link rel="stylesheet" href="{{asset('vendor/laravel-filemanager/css/cropper.min.css')}}">
    <!--<link rel="stylesheet" href="/FaveoHELPDESK+KBenvatoLite/vendor/laravel-filemanager/css/lfm.css">-->
    <link rel="stylesheet" href="{{asset('vendor/laravel-filemanager/css/lfm.css')}}">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.css">
</head>
<body>
<div class="container">
    <div class="row fill">
        <div class="panel panel-primary fill">
            <div class="panel-heading">
                <h3 class="panel-title">Faveo File Manager</h3>
            </div>
            <div class="panel-body fill">
                <div class="row fill">
                    <div class="wrapper fill">
                        <div class="col-md-2 col-lg-2 col-sm-2 col-xs-2 left-nav fill" id="lfm-leftcol">
                            <div id="tree1">
                            </div>
                        </div>
                        <div class="col-md-10 col-lg-10 col-sm-10 col-xs-10 right-nav" id="right-nav">
                            <nav class="navbar navbar-default">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                    </div>
                                    <div class="collapse navbar-collapse">
                                        <ul class="nav navbar-nav" id="nav-buttons">
                                            <li>
                                                <a href="#!" id="upload" data-toggle="modal" data-target="#uploadModal"><i class="fa fa-upload"></i> Upload</a>
                                            </li>
                                            <li>
                                                <a href="#!" class="thumbnail-display" id="thumbnail-display"><i class="fa fa-picture-o"></i> Thumbnails</a>
                                            </li>
                                            <li>
                                                <a href="#!" class="list-display" id="list-display"><i class="fa fa-list"></i> List</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>

                            @if ($errors->any())
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="alert alert-danger" role="alert">
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <ul>
                                                @foreach($errors->all() as $error)
                                                    <li>{{ $error }}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endif

                            <div id="content" class="row fill">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aia-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">{{ Lang::get('laravel-filemanager::lfm.title-upload') }}</h4>
            </div>
            <div class="modal-body">
                <form action="{{url('/laravel-filemanager/upload')}}" role='form' id='uploadForm' name='uploadForm' method='post' enctype='multipart/form-data'>
                    <div class="form-group" id="attachment">
                        <label for='upload' class='control-label'>{{ Lang::get('laravel-filemanager::lfm.message-choose') }}</label>
                        <div class="controls">
                            <div class="input-group" style="width: 100%">
                                <input type="file" id="upload" name="upload">
                            </div>
                        </div>
                    </div>
                    <input type='hidden' name='working_dir' id='working_dir' value='{{$working_dir}}'>
                    <input type='hidden' name='show_list' id='show_list' value='0'>
                    <input type='hidden' name='_token' value='{{csrf_token()}}'>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">{{ Lang::get('laravel-filemanager::lfm.btn-close') }}</button>
                <button type="button" class="btn btn-primary" id="upload-btn">{{ Lang::get('laravel-filemanager::lfm.btn-upload') }}</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="fileViewModal" tabindex="-1" role="dialog" aria-labelledby="fileLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="fileLabel">{{ Lang::get('laravel-filemanager::lfm.title-view') }}</h4>
            </div>
            <div class="modal-body" id="fileview_body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">{{ Lang::get('laravel-filemanager::lfm.btn-close') }}</button>
            </div>
        </div>
    </div>
</div>

<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.3.0/bootbox.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<!--<script src="/FaveoHELPDESK+KBenvatoLite/vendor/laravel-filemanager/js/cropper.min.js"></script>-->
<script src="{{asset('vendor/laravel-filemanager/js/cropper.min.js')}}"></script>

<!--<script src="/FaveoHELPDESK+KBenvatoLite/vendor/laravel-filemanager/js/jquery.form.min.js"></script>-->
<script src="{{asset('vendor/laravel-filemanager/js/jquery.form.min.js')}}"></script>
<script>
    var shared_folder = "{{ Config::get('lfm.shared_folder_name') }}";
    var image_url     = "{{ Config::get('lfm.images_url') }}";
    var file_url      = "{{ Config::get('lfm.files_url') }}";

    $(document).ready(function () {
        bootbox.setDefaults({locale:"{{ Lang::get('laravel-filemanager::lfm.locale-bootbox') }}"});
        // load folders
        $.ajax({
            type: 'GET',
            dataType: 'text',
            url: '{{url('/laravel-filemanager/folders')}}',
            
            data: 'working_dir={{ $working_dir }}',
            cache: false
        }).done(function (data) {
            $('#tree1').html(data);
        });
        loadItems();
        refreshFolders();
    });

    $('#upload-btn').click(function () {
        var options = {
            beforeSubmit:  showRequest,
            success:       showResponse
        };

        function showRequest(formData, jqForm, options) {
            $('#upload-btn').html('<i class="fa fa-refresh fa-spin"></i> {{ Lang::get("laravel-filemanager::lfm.btn-uploading") }}');
            return true;
        }

        function showResponse(responseText, statusText, xhr, $form)  {
            $('#uploadModal').modal('hide');
            $('#upload-btn').html('{{ Lang::get("laravel-filemanager::lfm.btn-upload") }}');
            if (responseText != 'OK'){
                notify(responseText);
            }
            $('#upload').val('');
            loadItems();
        }

        $('#uploadForm').ajaxSubmit(options);
        return false;
    });

    function clickRoot() {
        $('.folder-item').removeClass('fa-folder-open').addClass('fa-folder');
        $('#folder_shared > i').removeClass('fa-folder-open').addClass('fa-folder');
        $('#folder_root > i').addClass('fa-folder-open').removeClass('fa-folder');
        $('#working_dir').val("{{ (Config::get('lfm.allow_multi_user')) ? Auth::user()->user_field : '/'}}");
        loadItems();
    }

    function clickShared() {
        $('.folder-item').removeClass('fa-folder-open').addClass('fa-folder');
        $('#folder_root > i').removeClass('fa-folder-open').addClass('fa-folder');
        $('#folder_shared > i').addClass('fa-folder-open').removeClass('fa-folder');
        $('#working_dir').val(shared_folder);
        loadItems();
    }

    function clickFolder(x, y) {
        $('.folder-item').addClass('fa-folder');
        $('#folder_shared > i').removeClass('fa-folder-open').addClass('fa-folder');
        $('#folder_root > i').addClass('fa-folder-open').removeClass('fa-folder');
        $('.folder-item').not('#folder_root > i').removeClass('fa-folder-open');
        if (y == 0) {
            if ($('#' + x + ' > i').hasClass('fa-folder')) {
                $('#' + x + ' > i').not('#folder_root > i').removeClass('fa-folder');
                $('#' + x + ' > i').not('#folder_root > i').addClass('fa-folder-open');
            } else {
                $('#' + x + ' > i').removeClass('fa-folder-open');
                $('#' + x + ' > i').addClass('fa-folder');
            }
        }
        $('#working_dir').val("{{ (Config::get('lfm.allow_multi_user')) ? Auth::user()->user_field.'/' : '' }}" + $('#' + x).data('id'));
        loadItems();
    }

    function clickSharedFolder(x, y) {
        $('.folder-item').addClass('fa-folder');
        $('#folder_root > i').removeClass('fa-folder-open').addClass('fa-folder');
        $('#folder_shared > i').addClass('fa-folder-open').removeClass('fa-folder');
        $('.folder-item').not('#folder_shared > i').removeClass('fa-folder-open');
        if (y == 0) {
            if ($('#' + x + ' > i').hasClass('fa-folder')) {
                $('#' + x + ' > i').not('#folder_shared > i').removeClass('fa-folder');
                $('#' + x + ' > i').not('#folder_shared > i').addClass('fa-folder-open');
            } else {
                $('#' + x + ' > i').removeClass('fa-folder-open');
                $('#' + x + ' > i').addClass('fa-folder');
            }
        }
        $('#working_dir').val(shared_folder + '/' + $('#' + x).data('id'));
        loadItems();
    }

    function download(x) {
        location.href = '{{url('/laravel-filemanager/download?')}}'
            + 'working_dir='
            + $('#working_dir').val()
            + '&file='
            + x;
    }

    function loadItems() {
        var type = 'Images';

        @if ((Session::has('lfm_type')) && (Session::get('lfm_type') == 'Files'))
            type = 'Files';
        @endif

        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '{{url('/laravel-filemanager/jsonitems')}}',
            
            data: {
                working_dir: $('#working_dir').val(),
                show_list: $('#show_list').val(),
                type: type
            },
            cache: false
        }).done(function (data) {
            $('#content').html(data);
            $('#nav-buttons').removeClass('hidden');
            $('.dropdown-toggle').dropdown();
            refreshFolders();
        });
    }

    function trash(x) {
        bootbox.confirm("{{ Lang::get('laravel-filemanager::lfm.message-delete') }}", function (result) {
            if (result == true) {
                $.ajax({
                    type: 'GET',
                    dataType: 'text',
                    url: '{{url('/laravel-filemanager/delete')}}',
                    
                    data: {
                        working_dir: $('#working_dir').val(),
                        items: x
                    },
                    cache: false
                }).done(function (data) {
                    if (data != 'OK') {
                        notify(data);
                    } else {
                        if ($('#working_dir').val() == '{{ Auth::user()->user_field }}') {
                            loadFolders();
                        }
                        loadItems();
                    }
                });
            }
        });
    }

    function loadFolders() {
        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '{{url('/laravel-filemanager/folders')}}',
            
            data: {
                working_dir: $('#working_dir').val(),
                show_list: $('#show_list').val()
            },
            cache: false
        }).done(function (data) {
            $('#tree1').html(data);
        });
    }

    function refreshFolders() {
        var wd = $('#working_dir').val();
        if (wd != '/') {
            try {
                $('#' + wd + '-folder').removeClass('fa-folder');
                $('#' + wd + '-folder').addClass('fa-folder-open');
            } catch (e) {}
        }
    }

    function cropImage(x) {
        $.ajax({
            type: 'GET',
            dataType: 'text',
            url: '{{url('/laravel-filemanager/crop')}}',
            
            data: {
                img: x,
                working_dir: $('#working_dir').val()
            },
            cache: false
        }).done(function (data) {
            $('#nav-buttons').addClass('hidden');
            $('#content').html(data);
        });
    }

    function notImp() {
        bootbox.alert('Not yet implemented!');;
    }

    $('body').on('click', '#add-folder', function () {
        bootbox.prompt("{{ Lang::get('laravel-filemanager::lfm.message-name') }}", function (result) {
            if (result === null) {
            } else {
                $.ajax({
                    type: 'GET',
                    dataType: 'text',
                    url: '{{url('/laravel-filemanager/newfolder')}}',
                    
                    data: {
                        name: result,
                        working_dir: $('#working_dir').val()
                    },
                    cache: false
                }).done(function (data) {
                    if (data == 'OK') {
                        loadFolders();
                        loadItems();
                        refreshFolders();
                    } else {
                        notify(data);
                    }
                });
            }
        });
    });

    function useFile(file) {
        var path = $('#working_dir').val();

        var item_url = image_url;

        @if ((Session::has('lfm_type')) && (Session::get('lfm_type') != "Images"))
            item_url = file_url;
        @endif

        if (path != '/') {
            item_url = item_url + path + '/';
        }

        function getUrlParam(paramName) {
            var reParam = new RegExp('(?:[\?&]|&)' + paramName + '=([^&]+)', 'i');
            var match = window.location.search.match(reParam);
            return ( match && match.length > 1 ) ? match[1] : null;
        }

        var funcNum = getUrlParam('CKEditorFuncNum');
        
        window.opener.CKEDITOR.tools.callFunction(funcNum, path + '/' + file);

        window.opener.CKEDITOR.tools.callFunction(funcNum, item_url + file);

        window.close();
    }

    function rename(x) {
        bootbox.prompt({
            title: "{{ Lang::get('laravel-filemanager::lfm.message-rename') }}",
            value: x,
            callback: function (result) {
                if (result !== null) {
                    $.ajax({
                        type: 'GET',
                        dataType: 'text',
                        url: '{{url('/laravel-filemanager/rename')}}',
                        
                        data: {
                            file: x,
                            working_dir: $('#working_dir').val(),
                            new_name: result
                        },
                        cache: false
                    }).done(function (data) {
                        if (data == 'OK') {
                            loadItems();
                            loadFolders();
                        } else {
                            notify(data);
                        }
                    });
                }
            }
        });
    }

    function notify(x) {
        bootbox.alert(x);
    }

    function resizeImage(x) {
        $.ajax({
            type: 'GET',
            dataType: 'text',
            url: '{{url('/laravel-filemanager/resize')}}',
            
            data: {
                img: x,
                working_dir: $('#working_dir').val()
            },
            cache: false
        }).done(function (data) {
            $('#nav-buttons').addClass('hidden');
            $('#content').html(data);
        });
    }

    $('#thumbnail-display').click(function () {
        $('#show_list').val(0);
        loadItems();
    });

    $('#list-display').click(function () {
        $('#show_list').val(1);
        loadItems();
    });

    function fileView(x) {
        var rnd = makeRandom();
        var img_src = image_url + $('#working_dir').val() + '/' + x;
        var img = "<img class='img img-responsive center-block' src='" + img_src + "'>";
        $('#fileview_body').html(img);
        $('#fileViewModal').modal();
    }

    function makeRandom() {
        var text = '';
        var possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

        for( var i=0; i < 20; i++ )
            text += possible.charAt(Math.floor(Math.random() * possible.length));
        return text;
    }
</script>
</body>
</html>
