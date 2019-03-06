<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Requests\CreateGaLevelAssociateRequest;
use App\Plugins\Gamification\Requests\UpdateGaLevelAssociateRequest;
use App\Plugins\Gamification\Controllers\BaseGamificationController;
use Illuminate\Http\Request;
use App\Plugins\Gamification\Model\GaBadge;
use App\Plugins\Gamification\Model\GaLevelAssociate;
use Carbon\Carbon;
use Lang;
use Exception;

class GaLevelAssociateController extends BaseGamificationController
{

	public function index(Request $request)
	{
		try {
			return view('gamification::ga_level_associates.index');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	public function getLevelAssociates() {
		try {
			$levelAssociate = new GaLevelAssociate();
			$levelAssociates = $levelAssociate->select('id', 'level_id', 'reward_id', 'updated_at')->get();
			return \Datatable::Collection($levelAssociates)
							->addColumn('level', function($model) {
								$level = new GaBadge;
								$level_name = $level->where('id', $model->level_id)->first()->title;
								return $level_name;
							})
							->addColumn('reward', function($model) {
								$reward = new GaBadge;
								$reward_name = $reward->where('id', $model->reward_id)->first()->title;
								return $reward_name;
							})
							->addColumn('updated_at', function ($model) {
								return $model->updated_at ? with(new Carbon($model->updated_at))->format('d/m/Y') : '';
							})                            
							->addColumn('action', function($model) {
								return "<a href=" . url('gamification/gaLevelAssociates/' . $model->id . '/edit') . ' class="btn btn-warning btn-sm"><i class="fa fa-pencil-square-o"> </i></a> ';
							})
							->searchColumns('level_id', 'updated_at')
							->orderColumns('level_id', 'updated_at')
							->make();
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}    

	public function create()
	{
		try {
			$levels = GaBadge::where('type_id', '2')->lists('title', 'id')->toArray();
			$rewards = GaBadge::where('type_id', '5')->lists('title', 'id')->toArray();
			return view('gamification::ga_level_associates.create',compact('levels','rewards'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}			
	}


	public function store(CreateGaLevelAssociateRequest $request)
	{
		try {
			$gaLevelAssociate = new GaLevelAssociate;
			$gaLevelAssociate->fill($request->input())->save();
			return \Redirect::route('gamification.gaLevelAssociates.index')->with('success', Lang::get('gamification::lang.success_on_save'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}                    
	}

	public function show($id)
	{
		try {
			$gaLevelAssociate = GaLevelAssociate::find($id);
			if (empty($gaLevelAssociate)) {
				return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_level_associates.show')->with('gaLevelAssociate', $gaLevelAssociate);
		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}

	public function edit($id)
	{
		try {
			$gaLevelAssociate = GaLevelAssociate::find($id);
			$levels = GaBadge::where('type_id', '2')->lists('title', 'id')->toArray();
			$rewards = GaBadge::where('type_id', '5')->lists('title', 'id')->toArray();
			if (empty($gaLevelAssociate)) {
				return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_level_associates.edit',compact('levels','rewards'))->with('gaLevelAssociate', $gaLevelAssociate);

		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}

	public function update($id, UpdateGaLevelAssociateRequest $request)
	{
		try {
			$gaLevelAssociate = GaLevelAssociate::find($id);
			if (empty($gaLevelAssociate)) {
				return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$gaLevelAssociate->fill($request->input())->save();
			return redirect(route('gamification.gaLevelAssociates.index'))->with('success', Lang::get('gamification::lang.success_on_update'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}

	public function destroy($id)
	{
		try {
			$gaLevelAssociate = GaLevelAssociate::find($id);
			if (empty($gaLevelAssociate)) {
				return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}	
			$gaLevelAssociate->delete();
			return redirect(route('gamification.gaLevelAssociates.index'))->with('success', Lang::get('gamification::lang.success_on_delete'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaLevelAssociates.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}
}
