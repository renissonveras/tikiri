<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Requests\CreateGaCategoryRequest;
use App\Plugins\Gamification\Requests\UpdateGaCategoryRequest;
use App\Plugins\Gamification\Controllers\BaseGamificationController;
use Illuminate\Http\Request;
use App\Plugins\Gamification\Model\GaType;
use App\Plugins\Gamification\Model\GaCategory;
use Carbon\Carbon;
use Lang;
use Exception;

class GaCategoryController extends BaseGamificationController
{
	/**
	 * Display a listing of the GaCategory.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function index(Request $request)
	{
		try {
			return view('gamification::ga_categories.index');
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}		
	}


	public function getCategories() {
		try {
			$category = new GaCategory();
			$categories = $category->select('id', 'title', 'type_id', 'updated_at')->get();
			return \Datatable::Collection($categories)
							->showColumns('title')
							->addColumn('updated_at', function ($model) {
								return $model->updated_at ? with(new Carbon($model->updated_at))->format('d/m/Y') : '';
							})
							->addColumn('type', function($model) {
								$type = new GaType;
								$type_name = $type->where('id', $model->type_id)->first()->title;
								return $type_name;
							})                        
							->addColumn('action', function($model) {
								return "<a href=" . url('gamification/gaCategories/' . $model->id . '/edit') . ' class="btn btn-warning btn-sm"><i class="fa fa-pencil-square-o"> </i></a>';
							})
							->searchColumns('title', 'updated_at')
							->orderColumns('type_id', 'title')
							->make();
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	} 

	/**
	 * Show the form for creating a new GaCategory.
	 *
	 * @return Response
	 */
	public function create()
	{
		try {
			$types = GaType::lists('title', 'id')->toArray();
			return view('gamification::ga_categories.create',compact('types'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}			
	}

	/**
	 * Store a newly created GaCategory in storage.
	 *
	 * @param CreateGaCategoryRequest $request
	 *
	 * @return Response
	 */
	public function store(CreateGaCategoryRequest $request)	{
		try {
			$gaCategories = new GaCategory;
			$gaCategories->fill($request->input())->save();
			return \Redirect::route('gamification.gaCategories.index')->with('success', Lang::get('gamification::lang.success_on_save'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	/**
	 * Show the form for editing the specified GaCategory.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function edit($id)
	{
		try {
			$gaCategory = GaCategory::find($id);
			$types = GaType::lists('title', 'id')->toArray();
			if (empty($gaCategory)) {
				return \Redirect::route('gamification.gaCategories.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}

			return view('gamification::ga_categories.edit',compact('types'))->with('gaCategory', $gaCategory);

		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaCategories.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}

	public function update($id, UpdateGaCategoryRequest $request)
	{
		try {
			$gaCategory = GaCategory::find($id);
			if (empty($gaCategory)) {
				return \Redirect::route('gamification.gaCategories.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$gaCategory->fill($request->input())->save();
			return \Redirect::route('gamification.gaCategories.index')->with('success', Lang::get('gamification::lang.success_on_update'));

		} catch (Exception $ex) {
			return \Redirect::route('gamification.gaCategories.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}

	public function destroy($id)
	{
		try {
			$gaCategory = GaCategory::find($id);
			if (empty($gaCategory)) {
				return \Redirect::route('gamification.gaCategories.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}	
			$gaCategory->delete();
			return redirect(route('gamification.gaCategories.index'))->with('success', Lang::get('gamification::lang.success_on_delete'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.gaCategories.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}
	} 
}
