<?php

use Illuminate\Support\Str;

function loging($context, $message, $level = 'error', $array = [])
{
    \Log::$level($message.':-:-:-'.$context, $array);
}

function checkArray($key, $array)
{
    $value = '';
    if (array_key_exists($key, $array)) {
        $value = $array[$key];
    }

    return $value;
}

function mime($type)
{
    if ($type == 'jpg' ||
            $type == 'png' ||
            $type == 'PNG' ||
            $type == 'JPG' ||
            $type == 'jpeg' ||
            $type == 'JPEG' ||
            $type == 'gif' ||
            $type == 'GIF' ||
            $type == 'image/jpeg' ||
            $type == 'image/jpg' ||
            $type == 'image/gif' ||
           // $type == "application/octet-stream" ||
            $type == 'image/png' ||
            Str::startsWith($type, 'image')) {
        return 'image';
    }
}

function removeUnderscore($string)
{
    if (Str::contains($string, '_') === true) {
        $string = str_replace('_', ' ', $string);
    }

    return ucfirst($string);
}

function isItil()
{
    $check = false;
    if (\Schema::hasTable('sd_releases') && \Schema::hasTable('sd_changes') && \Schema::hasTable('sd_problem')) {
        $check = true;
    }

    return $check;
}

function isAsset()
{
    $check = false;
    if (\Schema::hasTable('sd_assets')) {
        $check = true;
    }

    return $check;
}

function itilEnabled()
{
    $check = false;
    if (\Schema::hasTable('common_settings')) {
        $settings = \DB::table('common_settings')->where('option_name', 'itil')->first();
        if ($settings && $settings->status == 1) {
            $check = true;
        }
    }

    return $check;
}

function isBill()
{
    $check = false;
    if (\Schema::hasTable('common_settings')) {
        $settings = \DB::table('common_settings')->where('option_name', 'bill')->first();
        if ($settings && $settings->status == 1) {
            $check = true;
        }
    }

    return $check;
}

function deletePopUp($id, $url, $title = 'Delete', $class = 'btn btn-sm btn-danger', $btn_name = 'Delete', $button_check = true)
{
    $button = '';
    if ($button_check == true) {
        $button = '<a href="#delete" class="'.$class.'" data-toggle="modal" data-target="#delete'.$id.'">'.$btn_name.'</a>';
    }

    return $button.'<div class="modal fade" id="delete'.$id.'">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">'.$title.'</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                <div class="col-md-12">
                                <p>Are you sure ?</p>
                                </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="close" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                <a href="'.$url.'" class="btn btn-danger">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>';
}

function isInstall()
{
    $check = false;
    $env = base_path('.env');
    if (\File::exists($env) && env('DB_INSTALL') == 1) {
        $check = true;
    }

    return $check;
}

function faveotime($date, $hour = 0, $min = 0, $sec = 0)
{
    if (is_bool($hour) && $hour == true) {
        $hour = $date->hour;
    }
    if (is_bool($min) && $min == true) {
        $min = $date->minute;
    }
    if (is_bool($sec) && $sec == true) {
        $sec = $date->second;
    }
    $date1 = \Carbon\Carbon::create($date->year, $date->month, $date->day, $hour, $min, $sec);

    return $date1->hour($hour)->minute($min)->second($sec);
}

/**
 * @category function to return array values if status id
 *
 * @param string purpose of status
 *
 * @return array ids of status with purpose passed as string
 */
function getStatusArray($status)
{
    $type = new App\Model\helpdesk\Ticket\Ticket_Status();
    $values = $type->where('state', '=', $status)->pluck('id')->toArray();

    return $values;
}

/**
 * @category function to UTF encoding
 *
 * @param string name
 *
 * @return string name
 */
function utfEncoding($name)
{
    $title = '';
    $array = imap_mime_header_decode($name);
    if (is_array($array) && count($array) > 0) {
        foreach ($array as $text) {
            $title .= $text->text;
        }
        $name = $title;
    }

    return $name;
}

function faveoDate($date = '', $format = '', $tz = '')
{
    if (!$date) {
        $date = \Carbon\Carbon::now();
    }
    if (!is_object($date)) {
        $date = carbon($date);
    }

    if (!$format || !$tz) {
        $system = App\Model\helpdesk\Settings\System::select('time_zone', 'date_time_format')->first();
    }
    if (!$format) {
        $format = is_numeric($system->date_time_format) ? DB::table('date_time_format')->where('id', $system->date_time_format)->value('format') : $system->date_time_format;
    }
    if (!$tz) {
        $tz = is_numeric($system->time_zone) ? DB::table('timezone')->where('id', $system->time_zone)->value('name') : $system->time_zone;
    }

    try {
        if ($format == 'human-read') {
            return $date->tz($tz)->diffForHumans();
        }

        return $date->tz($tz)->format($format);
    } catch (\Exception $ex) {
        return 'invalid';
    }
}

function timezone()
{
    $system = App\Model\helpdesk\Settings\System::select('time_zone')->first();
    $tz = 'UTC';
    if ($system) {
        $tz = App\Model\helpdesk\Utility\Timezones::where('id', $system->time_zone)->first()->name;
    }

    return $tz;
}

// For API response
/**
 * formats the error message into json error response.
 *
 * @param string/array $errorMsg     errorMsg can be an array of errors or string
 * @param int $responseCode
 *
 * @return json
 */
function errorResponse($errorMsg, $responseCode = 400)
{
    $response = ['success' => false, 'message' => $errorMsg];

    return response()->json($response, $responseCode);
}

/**
 * formats success message/data into json success response.
 *
 * @param string $successMsg
 * @param array/string $data         data of the response
 * @param int $responseCode
 *
 * @return json
 */
function successResponse($successMsg = '', $data = '', $responseCode = 200)
{
    $response = !$successMsg ? ['success' => true, 'data' => $data] : (!$data ? ['success' => true, 'message' => $successMsg] : ['success' => true, 'message' => $successMsg, 'data' => $data]);

    return response()->json($response);
}

/**
 * formats exception response by giving enough information for debugginh.
 *
 * @param \Exception $exception exception object
 *
 * @return Response with json response content
 */
function exceptionResponse(Exception $exception)
{
    return errorResponse([
        'file'        => $exception->getFile(),
        'line_number' => $exception->getLine(),
        'exception'   => $exception->getMessage(),
    ], 500);
}

/**
 * Creates an empty DB with given name.
 *
 * @param string $dbName name of the DB
 *
 * @return null
 */
function createDB(string $dbName)
{
    \DB::purge('mysql');
    // removing old db
    \DB::connection('mysql')->getPdo()->exec("DROP DATABASE IF EXISTS `{$dbName}`");

    // Creating testing_db
    \DB::connection('mysql')->getPdo()->exec("CREATE DATABASE `{$dbName}`");
    //disconnecting it will remove database config from the memory so that new database name can be
    // populated
    \DB::disconnect('mysql');
}

/**
 * parse the carbon.
 *
 * @param string $date
 *
 * @return \Carbon\Carbon
 */
function carbon($date)
{
    return \Carbon\Carbon::parse($date);
}
