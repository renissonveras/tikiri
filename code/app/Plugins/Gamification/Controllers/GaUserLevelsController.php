<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Requests\CreateGaUserLevelsRequest;
use App\Plugins\Gamification\Requests\UpdateGaUserLevelsRequest;
use App\Plugins\Gamification\Controllers\BaseGamificationController;
use Illuminate\Http\Request;
use Exception;
use Response;

class GaUserLevelsController extends BaseGamificationController
{

	/**
	 * Display a listing of the GaUserLevels.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function index(Request $request)
	{
		try {
			return view('gamification::ga_user_levels.index');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	/**
	 * Show the form for creating a new GaUserLevels.
	 *
	 * @return Response
	 */
	public function create()
	{
		try {
			return view('gamification::ga_user_levels.create');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	/**
	 * Store a newly created GaUserLevels in storage.
	 *
	 * @param CreateGaUserLevelsRequest $request
	 *
	 * @return Response
	 */
	public function store(CreateGaUserLevelsRequest $request)
	{

		try {
			$gaUserLevels = new GaUserLevels;
			$gaUserLevels->fill($request->input())->save();
			return \Redirect::route('gamification.gaUserLevels.index')->with('success', Lang::get('gamification::lang.success_on_save'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}  		
	}

	/**
	 * Display the specified GaUserLevels.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function show($id)
	{
		$gaUserLevels = $this->gaUserLevelsRepository->findWithoutFail($id);

		if (empty($gaUserLevels)) {
			Flash::error('Ga User Levels not found');

			return redirect(route('gaUserLevels.index'));
		}

		return view('gamification::ga_user_levels.show')->with('gaUserLevels', $gaUserLevels);
	}

	/**
	 * Show the form for editing the specified GaUserLevels.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function edit($id)
	{
		try {
			$gaUserLevels = g=GaUserLevels::find($id);
			if (empty($gaUserLevels)) {
				return \Redirect::route('gamification.gaUserLevels.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_user_levels.edit')->with('gaUserLevels', $gaUserLevels);

		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaUserLevels.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}

	/**
	 * Update the specified GaUserLevels in storage.
	 *
	 * @param  int              $id
	 * @param UpdateGaUserLevelsRequest $request
	 *
	 * @return Response
	 */
	public function update($id, UpdateGaUserLevelsRequest $request)
	{
		try {
			$gaUserLevels = GaUserLevels::find($id);
			if (empty($gaUserLevels)) {
				return \Redirect::route('gamification.gaUserLevels.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$gaUserLevels->fill($request->input())->save();
			return redirect(route('gamification.gaUserLevels.index'))->with('success', Lang::get('gamification::lang.success_on_update'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaUserLevels.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}

	/**
	 * Remove the specified GaUserLevels from storage.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function destroy($id)
	{
		try {
			$gaUserLevels = GaUserLevels::find($id);
			if (empty($gaUserLevels)) {
				return \Redirect::route('gamification.gaUserLevels.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}	
			$gaUserLevels->delete();
			return redirect(route('gamification.gaUserLevels.index'))->with('success', Lang::get('gamification::lang.success_on_delete'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaUserLevels.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}
}
