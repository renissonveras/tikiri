<?php

return [
    'rename_file' => true,
    // true : files will be renamed as uniqid
    // false : files will remain original names

    // true : filter filename characters which are not alphanumeric, and replace them with '_'
    'alphanumeric_filename' => true,

    'use_package_routes' => true,
    // set this to false to customize route for file manager

    'middlewares' => ['web', 'auth'],
    // determine middlewares that apply to all file manager routes
    // NOTE: for laravel 5.2, please use ['web', 'auth']

    'allow_multi_user' => true,
    // true : user can upload files to shared folder and their own folder
    // false : all files are put together in shared folder

    'user_field' => 'user_name',
    // determine which column of users table will be used as user's folder name

    'shared_folder_name' => 'shares',
    // the name of shared folder

    'thumb_folder_name' => 'thumbs',
    // the name of thumb folder

    // valid image mimetypes
    'valid_image_mimetypes' => [
        'image/jpeg',
        'image/pjpeg',
        'image/png',
        'image/gif',
    ],

    // valid file mimetypes (only when '/laravel-filemanager?type=Files')
    'valid_file_mimetypes' => [
        'image/jpeg',
        'image/pjpeg',
        'image/png',
        'image/gif',
        'application/pdf',
        'text/plain',
    ],
];
