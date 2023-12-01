<?php

namespace App\Http\Controllers\Admin\helpdesk;

// controller
use App\Http\Controllers\Controller;
// request
use App\Http\Requests\helpdesk\BanlistRequest;
use App\Http\Requests\helpdesk\BanRequest;
// model
use App\User;
//classes
use Exception;
use Lang;

/**
 * BanlistController
 * In this controller in the CRUD function for all the banned emails.
 *
 * @author      Ladybird <info@ladybirdweb.com>
 */
class BanlistController extends Controller
{
    /**
     * Create a new controller instance.
     * constructor to check
     * 1. authentication
     * 2. user roles
     * 3. roles must be agent.
     *
     * @return void
     */
    public function __construct()
    {
        // checking authentication
        $this->middleware('auth');
        // checking admin roles
        $this->middleware('roles');
    }

    /**
     * Display a listing of all the banned users.
     *
     * @return type
     */
    public function index()
    {
        try {
            $bans = User::where('ban', '=', 1)->get();

            return view('themes.default1.admin.helpdesk.emails.banlist.index', compact('bans'));
        } catch (Exception $e) {
            return redirect()->back()->with('fails', $e->getMessage());
        }
    }

    /**
     * Show the form for creating a banned user.
     *
     * @return type Response
     */
    public function create()
    {
        try {
            return view('themes.default1.admin.helpdesk.emails.banlist.create');
        } catch (Exception $e) {
            return redirect()->back()->with('fails', $e->getMessage());
        }
    }

    /**
     * Store a new banned user credentials.
     *
     * @param BanRequest $request
     * @param User       $user
     *
     * @return type Response
     */
    public function store(BanRequest $request, User $user)
    {
        // dd($request);
        try {
            //adding field to user whether it is banned or not
            $adban = $request->input('email');
            $use = $user->where('email', $adban)->first();
            if ($use != null) {
                $use->ban = $request->input('ban');
                $use->internal_note = $request->input('internal_note');
                $use->save();
                // $user->create($request->input())->save();
                return redirect('banlist')->with('success', Lang::get('lang.email_banned_sucessfully'));
            } else {
                $user = new User();
                $user->email = $adban;
                $user->ban = $request->input('ban');
                $user->internal_note = $request->input('internal_note');
                $user->save();

                return redirect('banlist')->with('success', Lang::get('lang.email_banned_sucessfully'));
            }
        } catch (Exception $e) {
            return redirect('banlist')->with('fails', Lang::get('lang.email_can_not_ban'));
        }
    }

    /**
     * Editing the details of the banned users.
     *
     * @param type $id
     * @param User $ban
     *
     * @return type Response
     */
    public function edit($id, User $ban)
    {
        try {
            $bans = $ban->whereId($id)->first();

            return view('themes.default1.admin.helpdesk.emails.banlist.edit', compact('bans'));
        } catch (Exception $e) {
            return redirect()->back()->with('fails', $e->getMessage());
        }
    }

    /**
     * Update the banned users.
     *
     * @param type           $id
     * @param User           $ban
     * @param BanlistRequest $request
     *
     * @return type Response
     */
    public function update($id, User $ban, BanlistRequest $request)
    {
        try {
            $bans = $ban->whereId($id)->first();
            $bans->internal_note = $request->input('internal_note');
            $bans->ban = $request->input('ban');
            if ($bans->save()) {
                return redirect('banlist')->with('success', Lang::get('lang.banned_email_updated_sucessfully'));
            } else {
                return redirect('banlist')->with('fails', Lang::get('lang.banned_email_not_updated'));
            }
        } catch (Exception $e) {
            return redirect('banlist')->with('fails', Lang::get('lang.banned_email_not_updated'));
        }
    }

    /**
     * delete the banned users.
     *
     * @param type      $id
     * @param \App\User $ban
     *
     * @return type view
     */
    public function delete($id, User $ban)
    {
        try {
            $ban_user = $ban->where('id', '=', $id)->first();
            $ban_user->ban = 0;
            $ban_user->save();

            return redirect('banlist')->with('success', Lang::get('lang.banned_removed_sucessfully'));
        } catch (Exception $ex) {
            return redirect('banlist')->with('fails', $ex->getMessage());
        }
    }
}
