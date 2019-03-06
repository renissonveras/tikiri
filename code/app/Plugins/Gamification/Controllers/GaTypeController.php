<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Requests\CreateGaTypeRequest;
use App\Plugins\Gamification\Requests\UpdateGaTypeRequest;
use App\Plugins\Gamification\Controllers\BaseGamificationController;
use Illuminate\Http\Request;
use App\Plugins\Gamification\Model\GaType;
use Carbon\Carbon;
use Lang;
use Exception;

class GaTypeController extends BaseGamificationController
{
	/**
	 * Display a listing of the GaType.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function index(Request $request)
	{
		try {
			return view('gamification::ga_types.index');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	public function getTypes() {
		try {
			$type = new GaType();
			$types = $type->select('id', 'title', 'updated_at')->get();
			return \Datatable::Collection($types)
							->showColumns('title')
							->addColumn('updated_at', function ($model) {
								return $model->updated_at ? with(new Carbon($model->updated_at))->format('d/m/Y') : '';
							})                  
							->addColumn('action', function($model) {
								return "<a href=" . url('gamification/gaTypes/' . $model->id . '/edit') . ' class="btn btn-warning btn-sm"><i class="fa fa-pencil-square-o"> </i></a> ';
							})
							->searchColumns('title', 'updated_at')
							->orderColumns('title','updated_at')
							->make();
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}  
	/**
	 * Show the form for creating a new GaType.
	 *
	 * @return Response
	 */
	public function create()
	{
		try {
			return view('gamification::ga_types.create');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	/**
	 * Store a newly created GaType in storage.
	 *
	 * @param CreateGaTypeRequest $request
	 *
	 * @return Response
	 */
	public function store(CreateGaTypeRequest $request)
	{
		try {
			$gaType = new GaType;
			$gaType->fill($request->input())->save();
			return \Redirect::route('gamification.gaTypes.index')->with('success', Lang::get('gamification::lang.success_on_save'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}                    
	}


	/**
	 * Show the form for editing the specified GaType.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function edit($id)
	{
		try {
			$gaType = GaType::find($id);
			if (empty($gaType)) {
				return \Redirect::route('gamification.gaTypes.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_types.edit')->with('gaType', $gaType);

		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaTypes.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}

	/**
	 * Update the specified GaType in storage.
	 *
	 * @param  int              $id
	 * @param UpdateGaTypeRequest $request
	 *
	 * @return Response
	 */
	public function update($id, UpdateGaTypeRequest $request)
	{
		try {
			$gaType = GaType::find($id);
			if (empty($gaType)) {
				return \Redirect::route('gamification.gaTypes.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$gaType->fill($request->input())->save();
			return redirect(route('gamification.gaTypes.index'))->with('success', Lang::get('gamification::lang.success_on_update'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaTypes.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}			
	}

	/*public function destroy($id)
	{
		try {
			$gaType = GaType::find($id);
			if (empty($gaType)) {
				return \Redirect::route('gamification.gaType.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}	
			$gaType->delete();
			return redirect(route('gamification.gaType.index'))->with('success', Lang::get('gamification::lang.success_on_delete'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaType.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}				
	}*/
}
