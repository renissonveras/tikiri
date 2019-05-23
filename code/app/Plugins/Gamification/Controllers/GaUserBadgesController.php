<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Requests\CreateGaUserBadgesRequest;
use App\Plugins\Gamification\Requests\UpdateGaUserBadgesRequest;
use App\Plugins\Gamification\Controllers\BaseGamificationController;
use App\Http\Controllers\Agent\helpdesk\TicketController;
use App\Http\Controllers\Common\NotificationController as Notify;
use Illuminate\Http\Request;
use App\Plugins\Gamification\Model\GaBadge;
use App\Plugins\Gamification\Model\GaType;
use App\Plugins\Gamification\Model\GaUserBadges;
use App\User;
use Carbon\Carbon;
use Lang;
use Exception;
use Auth;
use DB;

class GaUserBadgesController extends BaseGamificationController
{
	
	/*public function __construct() {
		$this->middleware('auth');
	}*/

	/**
	 * Display a listing of the GaUserBadges.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function index($user_id=1)
	{
		try {
			$maxXp= GaUserBadges::where([['type_id', 3],['user_id',Auth::user()->id]])->max('total_xp_in_moment');
			$maxCredit = GaUserBadges::where([['type_id', 4],['user_id',Auth::user()->id]])->max('total_credits_in_moment');
			return view('gamification::ga_user_badges.index',compact('user_id','maxXp','maxCredit'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}


	public function adminUserDetail($user_id=0)
	{
		try {
			$gaUserBadges = GaUserBadges::where('user_id',$user_id);
			if (empty($gaUserBadges) || $user_id==0) {
				return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}			
			$maxXp= GaUserBadges::where([['type_id', 3],['user_id',$user_id]])->max('total_xp_in_moment');
			$maxCredit = GaUserBadges::where([['type_id', 4],['user_id',$user_id]])->max('total_credits_in_moment');
			return view('gamification::ga_user_badges.detail',compact('user_id','maxXp','maxCredit'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	public function adminGetUserBadges($user_id=0) {
		try {
			$userBadge = new GaUserBadges;
			$userBadges = $userBadge->select('id', 'type_id', 'acumulated_xp', 'acumulated_credits', 'badge_id', 'updated_at')->where('user_id', $user_id)->orderBy('updated_at', 'desc')->get();
			return \Datatable::Collection($userBadges)
							->addColumn('updated_at', function ($model) {
								return $model->updated_at ? with(new Carbon($model->updated_at))->format('d/m/Y') : '';
							})
							->addColumn('type', function($model) {
								$type = new GaType;
								$type_name = $type->where('id', $model->type_id)->first()->title;
								return $type_name;
							})
							->addColumn('badge', function($model) {
								$badge = new GaBadge;
								$badge_name = $badge->where('id', $model->badge_id)->first()->title;
								return $badge_name;
							})
							->showColumns('acumulated_xp','acumulated_credits')
							->searchColumns('title', 'created_at', 'updated_at')
							->orderColumns('updated_at desc','title', 'created_at')
							->make();
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}    


	public function usersList(Request $request)
	{
		$type = $request->input('profiletype');
		$search = $request->input('searchTerm');

		if ($type === 'agents') {
			$users = User::where('role', '=', 'agent')->where('is_delete', '=', 0);
		} elseif ($type === 'users') {
			$users = User::where('role', '=', 'user')->where('is_delete', '=', 0);
		} elseif ($type === 'active-users') {
			$users = User::where('role', '!=', 'admin')->where('active', '=', 1);
		} elseif ($type === 'inactive') {
			$users = User::where('role', '!=', 'admin')->where('active', '=', 0);
		} elseif ($type === 'deleted') {
			$users = User::where('role', '!=', 'admin')->where('is_delete', '=', 1);
		} elseif ($type === 'banned') {
			$users = User::where('role', '!=', 'admin')->where('ban', '=', 1);
		} else {
			$users = User::where('role', '!=', 'admin')->where('is_delete', '=', 0);
		}

		$users = $users->select('user_name', 'active', 'updated_at', 'role', 'id', 'last_name');

		if ($search !== '') {
			$users = $users->where(function ($query) use ($search) {
				$query->where('user_name', 'LIKE', '%'.$search.'%');
				$query->orWhere('first_name', 'LIKE', '%'.$search.'%');
				$query->orWhere('last_name', 'LIKE', '%'.$search.'%');
				$query->orWhere('updated_at', 'LIKE', '%'.$search.'%');
			});
		}
		// displaying list of users with chumper datatables
		// return \Datatable::collection(User::where('role', "!=", "admin")->get())
	   return \Datatables::of($users)
						/* column username */
						->removeColumn('id', 'last_name')
						->addColumn('user_name', function ($model) {
							if ($model->first_name) {
								$string = strip_tags($model->first_name.' '.$model->last_name);
							} else {
								$string = strip_tags($model->user_name);
							}
							if (strlen($string) > 30) {
								// truncate string
								$stringCut = mb_substr($string, 0, 30, 'UTF-8').'...';
							} else {
								$stringCut = $string;
							}

							return "<a href='".route('gamification.user.detail', $model->id)."' title='".$string."''>".$stringCut.'</a>';
						})
						/* column account status */
						->addColumn('active', function ($model) {
							$status = $model->active;
							if ($status == 1) {
								$stat = '<button class="btn btn-success btn-xs">Ativo</button>';
							} else {
								$stat = '<button class="btn btn-danger btn-xs">Inativo</button>';
							}

							return $stat;
						})
						/* column last login date */
						->addColumn('updated_at', function ($model) {
							$t = $model->updated_at;

							return TicketController::usertimezone($t);
						})
						/* column Role */
						->addColumn('role', function ($model) {
							$role = $model->role;

							return $role;
						})
						->addColumn('totalXp', function ($model) {
							$maxXp= GaUserBadges::where([['type_id', 3],['user_id',$model->id]])->max('total_xp_in_moment');
							return $maxXp;
						})
						->addColumn('totalCredits', function ($model) {
							$maxCredit = GaUserBadges::where([['type_id', 4],['user_id',$model->id]])->max('total_credits_in_moment');
							return $maxCredit;
						})
						->addColumn('total', function ($model) {
							$maxCredit = GaUserBadges::where([['type_id', 4],['user_id',$model->id]])->max('total_credits_in_moment');
							$maxXp= GaUserBadges::where([['type_id', 3],['user_id',$model->id]])->max('total_xp_in_moment');
							$total = $maxCredit + $maxXp;
							return $total;
						})
						->make();
	}


 public function getCreditsDetails(Request $request)
	{
		$user = $request->input('user_id');
		$creditsIdByUser = GaUserBadges::where([['type_id', 4],['user_id',$user]])->select('badge_id')->distinct()->get()->toArray();
		$credits = DB::table('ga_badges')
		->where('ga_badges.type_id', '=', 4)
		->where(function ($query) use($creditsIdByUser) {
				$query->whereNotIn('ga_badges.id', $creditsIdByUser)
					  ->orWhere('ga_badges.ismultiple','=',1);
		})
		->get();

		foreach ($credits as $credit) {
			echo "<option value='$credit->id'>".$credit->title.'</option>';
		}
	}

	public function agentsNotifications()
	{
		try {
			$maxXp= GaUserBadges::where([['type_id', 3],['user_id',Auth::user()->id]])->max('total_xp_in_moment');
			$maxCredit = GaUserBadges::where([['type_id', 4],['user_id',Auth::user()->id]])->max('total_credits_in_moment');
			return view('gamification::ga_user_badges.agent',compact('maxXp','maxCredit'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}	

	public function clientNotifications(Request $request)
	{
		try {
			$maxXp= GaUserBadges::where([['type_id', 3],['user_id',Auth::user()->id]])->max('total_xp_in_moment');
			$maxCredit = GaUserBadges::where([['type_id', 4],['user_id',Auth::user()->id]])->max('total_credits_in_moment');
			return view('gamification::ga_user_badges.client',compact('maxXp','maxCredit'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}	

	public function getUserBadges() {
		try {
			$userBadge = new GaUserBadges;
			$userBadges = $userBadge->select('id', 'type_id', 'acumulated_xp', 'acumulated_credits', 'badge_id', 'updated_at')->where('user_id', Auth::user()->id)->orderBy('updated_at', 'desc')->get();
			return \Datatable::Collection($userBadges)
							->addColumn('updated_at', function ($model) {
								return $model->updated_at ? with(new Carbon($model->updated_at))->format('d/m/Y') : '';
							})
							->addColumn('type', function($model) {
								$type = new GaType;
								$type_name = $type->where('id', $model->type_id)->first()->title;
								return $type_name;
							})
							->addColumn('badge', function($model) {
								$badge = new GaBadge;
								$badge_name = $badge->where('id', $model->badge_id)->first()->title;
								return $badge_name;
							})
							->showColumns('acumulated_xp','acumulated_credits')
							/*->addColumn('action', function($model) {
								return "<a href=" . url('gamification/gaUserBadges/' . $model->id . '/edit') . ' class="btn btn-warning btn-sm"><i class="fa fa-pencil-square-o"> </i></a> ';
							})*/
							->searchColumns('title', 'created_at', 'updated_at')
							->orderColumns('updated_at desc','title', 'created_at')
							->make();
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}    
	/**
	 * Show the form for creating a new GaUserBadges.
	 *
	 * @return Response
	 */
	public function create()
	{
		try {
			return view('gamification::ga_user_badges.create');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	/**
	 * Store a newly created GaUserBadges in storage.
	 *
	 * @param CreateGaUserBadgesRequest $request
	 *
	 * @return Response
	 */
	public function store(CreateGaUserBadgesRequest $request)
	{
		try {
			$gaUserBadges = new GaUserBadges;
			$gaUserBadges->fill($request->input())->save();
			return \Redirect::route('gamification.gaUserBadges.index')->with('success', Lang::get('gamification::lang.success_on_save'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	public function storeCredits(Request $request)
	{
		try {
			$user = $request->input('user_id');
			$badgeId = $request->input('assign_to');
			$badgeData = [
			'user_id'		=> $user,
			'badge_id'		=> $badgeId,
			'added_user_id' => Auth::user()->id,
			];
			$this->storePoints($badgeData);
			return "1";
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}		
	}

	public function storePoints($data)
	{
		try {
			$gaUserBadges = new GaUserBadges;
			$gaUserBadges->user_id = Auth::user()->id;
			$gaUserBadges->badge_id = $data["badge_id"];
			$badge = GaBadge::where([['id', $data["badge_id"]],['isactive', 1]])->first();
			if (!empty($badge) & !empty($gaUserBadges->user_id)) {
				$gaUserBadges->added_date = date('Y-m-d H:i:s');
				$gaUserBadges->added_user_id = Auth::user()->id;
				$maxXp= GaUserBadges::where([['type_id', 3],['user_id',Auth::user()->id]])->max('total_xp_in_moment');
				$maxCredit = GaUserBadges::where([['type_id', 4],['user_id',Auth::user()->id]])->max('total_credits_in_moment');
				$gaUserBadges->type_id = $badge->type_id;
				if ($badge->isdeduct==1) {
					$gaUserBadges->deducted_xp = $badge->xp;
					$gaUserBadges->deducted_credits = $badge->credits;
					$gaUserBadges->acumulated_xp = 0;
					$gaUserBadges->acumulated_credits = 0;
					if ($badge->type_id==3) // point
					{
						$gaUserBadges->total_xp_in_moment = $maxXp - $badge->xp;
					} elseif ($badge->type_id==4) // credits
					{	
						$gaUserBadges->total_credits_in_moment = $maxCredit-$badge->credits;
					}				
				} else {
					$gaUserBadges->deducted_xp = 0;
					$gaUserBadges->deducted_credits = 0;
					$gaUserBadges->acumulated_xp = $badge->xp;
					$gaUserBadges->acumulated_credits = $badge->credits;
					if ($badge->type_id==3) // point
					{
						$gaUserBadges->total_xp_in_moment = $maxXp + $badge->xp;
					} elseif ($badge->type_id==4) // credits
					{	
						$gaUserBadges->total_credits_in_moment = $maxCredit + $badge->credits;
					}				
				}
				$gaUserBadges->save();
				$notificationController = new Notify;
				$user = User::where('id', '=', $data["user_id"])->get();
				$notificationController->create($gaUserBadges->id, $data["user_id"], '4',$user);
			}
			return "1";
		} catch (Exception $ex) {
			return $ex->getMessage();
		}
	}


	/**
	 * Display the specified GaUserBadges.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function show($id)
	{
		try {
			$gaUserBadges = GaUserBadges::find($id);
			if (empty($gaUserBadges)) {
				return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_user_badges.show')->with('gaUserBadges', $gaUserBadges);
		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}
	}

	/**
	 * Show the form for editing the specified GaUserBadges.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function edit($id)
	{
		try {
			$gaUserBadges = GaUserBadges::find($id);
			if (empty($gaUserBadges)) {
				return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_user_badges.edit')->with('gaUserBadges', $gaUserBadges);

		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}

	
	public function update($id, UpdateGaUserBadgesRequest $request)	{

		try {
			$gaUserBadges = GaUserBadges::find($id);
			if (empty($gaUserBadges)) {
				return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$gaUserBadges->fill($request->input())->save();
			return redirect(route('gamification.gaUserBadges.index'))->with('success', Lang::get('gamification::lang.success_on_update'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}


	public function destroy($id)
	{
		try {
			$gaUserBadges = GaUserBadges::find($id);
			if (empty($gaUserBadges)) {
				return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}	
			$gaUserBadges->delete();
			return redirect(route('gamification.gaUserBadges.index'))->with('success', Lang::get('gamification::lang.success_on_delete'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaUserBadges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}
	}
}
