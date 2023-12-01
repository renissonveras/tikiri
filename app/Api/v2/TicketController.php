<?php

namespace App\Api\v2;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Lang;

class TicketController extends Controller
{
    public function __construct()
    {
        $this->middleware('jwt.authOveride');
    }

    protected function getTickets(Request $request)
    {
        try {
            $user = \JWTAuth::parseToken()->authenticate();
            $input = [];
            if ($request->has('api') && $request->has('show') && $request->has('departments')) {
                if ($request->get('api') != '' || $request->get('show') != '' || $request->get('departments') != '') {
                    if ($request->get('api') == '1') {
                        $tickets = new \App\Http\Controllers\Agent\helpdesk\Filter\FilterController($request);
                        $result = $tickets->getFilter($request);
                        if ($request->has('sort-by') && in_array($request->get('sort-by'), ['id', 'ticket_title', 'updated_at', 'created_at', 'due', 'ticket_number', 'priority'])) {
                            if ($request->has('order') && in_array($request->get('order'), ['asc', 'ASC', 'desc', 'DESC'])) {
                                $result = $result->orderBy($request->get('sort-by'), $request->get('order'));
                            } else {
                                $result = $result->orderBy($request->get('sort-by'), 'ASC');
                            }
                        } else {
                            $result = $result->orderBy('updated_at', 'DESC');
                        }

                        $fetch = 10;
                        if ($request->has('records_per_page') && (int) $request->get('records_per_page') != 0 && ($request->get('records_per_page') >= 0 && $request->get('records_per_page') < 500)) {
                            $fetch = $request->get('records_per_page');
                        } elseif ($request->has('records_per_page') && $request->get('records_per_page') > 500) {
                            $fetch = 500;
                        }
                        if ($request->has('created') ||
                                $request->has('updated') ||
                                $request->has('due-on') ||
                                $request->has('last-response-by')) {
                            $result = $result->simplePaginate($fetch);
                        } else {
                            $result = $result->paginate($fetch);
                        }

                        // $result = json_encode($result[0]);

                        foreach ($result as $value) {
                            if ($value->profile_pic == '') {
                                $value->profile_pic = \Gravatar::src($value->c_email);
                            } else {
                                $value->profile_pic = url('/').'/uploads/profilepic/'.$value->profile_pic;
                            }

                            $value['from'] = ['id' => $value['c_uid'], 'first_name' => $value['c_fname'], 'last_name' => $value['c_lname'], 'user_name' => $value['c_uname'], 'email' => $value['c_email'], 'profile_pic' => $value['profile_pic']];

                            $value['assignee'] = ['id' => $value['a_uid'], 'first_name' => $value['a_fname'], 'last_name' => $value['a_lname'], 'user_name' => $value['a_uname'], 'email' => $value['a_email']];
                            $value['priority'] = ['name' => $value['priority'], 'color' => $value['color']];

                            $value['thread_count'] = $value['countthread'];
                            $value['status'] = $value['ticket_status_name'];
                            $value['title'] = $value['ticket_title'];

                            unset($value['c_uid'], $value['c_fname'], $value['c_lname'], $value['c_uname'], $value['c_email'], $value['a_uid'], $value['a_fname'], $value['a_lname'], $value['a_uname'], $value['a_email']);
                            unset($value['assigned_to'], $value['profile_pic'], $value['created_at2'], $value['updated_at2'], $value['dept_id'], $value['css'], $value['name'], $value['color'], $value['due'], $value['countattachment'], $value['countthread'], $value['ticket_status_name'], $value['ticket_title']);
                        }

                        // $result = json_encode($result);
                        return successResponse('', $result);
                    } else {
                        $error = Lang::get('lang.invalid_value_for_api_in_parameters');
                    }
                } else {
                    $error = Lang::get('lang.required_parameters_can_not_be_empty');
                }
            } else {
                $error = Lang::get('lang.missing_requre_parameters');
            }

            return errorResponse($error, $responseCode = 400);
            // return response()->json(compact('error'));
        } catch (\Exception $ex) {
            $error = $ex->getMessage();
            $line = $ex->getLine();
            $file = $ex->getFile();
            dd($e);

            return errorResponse(compact('error', 'file', 'line'), $responseCode = 400);
        } catch (\TokenExpiredException $e) {
            dd($e);

            return errorResponse($e->getMessage(), $responseCode = 400);
        }
    }
}
