<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Requests\CreateGaUserAchievementsRequest;
use App\Plugins\Gamification\Requests\UpdateGaUserAchievementsRequest;
use App\Plugins\Gamification\Controllers\BaseGamificationController;
use Illuminate\Http\Request;
use App\Plugins\Gamification\Model\GaUser;
use App\Plugins\Gamification\Model\GaType;
use Exception;

class GaUserAchievementsController extends BaseGamificationController
{

	/**
	 * Display a listing of the GaUserAchievements.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function index(Request $request)
	{
		$this->gaUserAchievementsRepository->pushCriteria(new RequestCriteria($request));
		$gaUserAchievements = $this->gaUserAchievementsRepository->all();

		return view('gamification::ga_user_achievements.index')
			->with('gaUserAchievements', $gaUserAchievements);
	}

	/**
	 * Show the form for creating a new GaUserAchievements.
	 *
	 * @return Response
	 */
	public function create()
	{        
		try {
			return view('gamification::ga_user_achievements.create');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	/**
	 * Store a newly created GaUserAchievements in storage.
	 *
	 * @param CreateGaUserAchievementsRequest $request
	 *
	 * @return Response
	 */
	public function store(CreateGaUserAchievementsRequest $request)
	{
		$input = $request->all();

		$gaUserAchievements = $this->gaUserAchievementsRepository->create($input);

		Flash::success('Ga User Achievements saved successfully.');

		return redirect(route('gaUserAchievements.index'));
	}

	/**
	 * Display the specified GaUserAchievements.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function show($id)
	{
		$gaUserAchievements = $this->gaUserAchievementsRepository->findWithoutFail($id);

		if (empty($gaUserAchievements)) {
			Flash::error('Ga User Achievements not found');

			return redirect(route('gaUserAchievements.index'));
		}

		return view('gamification::ga_user_achievements.show')->with('gaUserAchievements', $gaUserAchievements);
	}

	/**
	 * Show the form for editing the specified GaUserAchievements.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function edit($id)
	{
		try {
			$gaUserAchievements = GaUserAchievements::find($id);
			if (empty($gaUserAchievements)) {
				return \Redirect::route('gamification.gaUserAchievements.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_user_achievements.edit')->with('gaUserAchievements', $gaUserAchievements);

		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaUserAchievements.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}
	}

	/**
	 * Update the specified GaUserAchievements in storage.
	 *
	 * @param  int              $id
	 * @param UpdateGaUserAchievementsRequest $request
	 *
	 * @return Response
	 */
	public function update($id, UpdateGaUserAchievementsRequest $request)
	{
		try {
			$gaUserAchievements = GaUserAchievements::find($id);
			if (empty($gaUserAchievements)) {
				return \Redirect::route('gamification.gaUserAchievements.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$gaUserAchievements->fill($request->input())->save();
			return redirect(route('gamification.gaUserAchievements.index'))->with('success', Lang::get('gamification::lang.success_on_update'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaUserAchievements.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}

	/**
	 * Remove the specified GaUserAchievements from storage.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function destroy($id)
	{
		try {
			$gaUserAchievements = GaUserAchievements::find($id);
			if (empty($gaUserAchievements)) {
				return \Redirect::route('gamification.gaUserAchievements.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}	
			$gaUserAchievements->delete();
			return redirect(route('gamification.gaUserAchievements.index'))->with('success', Lang::get('gamification::lang.success_on_delete'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaUserAchievements.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}
}
