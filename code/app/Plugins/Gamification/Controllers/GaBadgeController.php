<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Requests\CreateGaBadgeRequest;
use App\Plugins\Gamification\Requests\UpdateGaBadgeRequest;
use App\Plugins\Gamification\Controllers\BaseGamificationController;
use Illuminate\Http\Request;
use Exception;
use App\Plugins\Gamification\Model\GaBadge;
use App\Plugins\Gamification\Model\GaType;
use App\Plugins\Gamification\Model\GaCategory;
use Carbon\Carbon;
use Lang;

class GaBadgeController extends BaseGamificationController
{

	public function __construct()
	{
		
	}

	/**
	 * Display a listing of the GaBadge.
	 *
	 * @param Request $request
	 * @return Response
	 */
	public function index(Request $request, $type_id=1)
	{
		$type = new GaType;
		$title = $type->where('id', $type_id)->first()->title;
		//$title=Lang::get('lang.badges');
		try {
		   return view('gamification::ga_badges.index',compact('title','type_id'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	public function getBadges($type_id=1) {
		try {
			$badge = new GaBadge();
			$badges = $badge->select('id', 'title', 'type_id', 'category_id', 'created_at', 'updated_at')->where('type_id', $type_id)->get();
			return \Datatable::Collection($badges)
							->showColumns('title')
							->addColumn('created_at', function ($model) {
								return $model->created_at ? with(new Carbon($model->created_at))->format('d/m/Y') : '';
							})
							->addColumn('type', function($model) {
								$type = new GaType;
								$type_name = $type->where('id', $model->type_id)->first()->title;
								return $type_name;
							})
							->addColumn('category', function($model) {
								$category = new GaCategory;
								$category_name = $category->where('id', $model->category_id)->first()->title;
								return $category_name;
							})                            
							->addColumn('action', function($model) {
								return "<a href=" . url('gamification/gaBadges/' . $model->id . '/edit') . ' class="btn btn-warning btn-sm"><i class="fa fa-pencil-square-o"> </i></a> ';
							})
							->searchColumns('title', 'created_at', 'updated_at')
							->orderColumns('title', 'created_at', 'updated_at')
							->make();
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}    

	/**
	 * Show the form for creating a new GaBadge.
	 *
	 * @return Response
	 */
	public function create($type_id=1)
	{
		try {
			$type = new GaType;
			$title = $type->where('id', $type_id)->first()->title;
			$categories = GaCategory::where('type_id', $type_id)->lists('title', 'id')->toArray();
			return view('gamification::ga_badges.create',compact('type_id','categories','title'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}
	}

	/**
	 * Store a newly created GaBadge in storage.
	 *
	 * @param CreateGaBadgeRequest $request
	 *
	 * @return Response
	 */
	public function store(CreateGaBadgeRequest $request)
	{
		try {
			$gaBadge = new GaBadge;
			$gaBadge->fill($request->input())->save();
			return \Redirect::route('gamification.badges.index.types',[$request->input('type_id')])->with('success', Lang::get('gamification::lang.success_on_save'));
		} catch (Exception $ex) {
			return redirect()->back()->with('fails', $ex->getMessage());
		}        
	}

	/**
	 * Display the specified GaBadge.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function show($id)	{
		try {
			$gaBadge = GaBadge::find($id);
			if (empty($gaBadge)) {
				return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			return view('gamification::ga_badges.show')->with('gaBadge', $gaBadge);
		} catch (Exception $e) {
			return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}

	/**
	 * Show the form for editing the specified GaBadge.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function edit($id)	{
		try {
			$gaBadge = GaBadge::find($id);
			$categories = GaCategory::lists('title', 'id')->toArray();
			if (empty($gaBadge)) {
				return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$type_id = $gaBadge->type_id;
			return view('gamification::ga_badges.edit',compact('type_id','categories'))->with('gaBadge', $gaBadge);
		} catch (Exception $e) {
			return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}
	}

	/**
	 * Update the specified GaBadge in storage.
	 *
	 * @param  int              $id
	 * @param UpdateGaBadgeRequest $request
	 *
	 * @return Response
	 */
	public function update($id, UpdateGaBadgeRequest $request)
	{
		try {
			$gaBadge = GaBadge::find($id);
			if (empty($gaBadge)) {
				return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}
			$gaBadge->fill($request->input())->save();
			return redirect(route('gamification.badges.index.types',[$request->input('type_id')]))->with('success', Lang::get('gamification::lang.success_on_update'));

		} catch (Exception $e) {
			return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}

	/**
	 * Remove the specified GaBadge from storage.
	 *
	 * @param  int $id
	 *
	 * @return Response
	 */
	public function destroy($id) {
		try {		
			$gaBadge = GaBadge::find($id);
			if (empty($gaBadge)) {
				return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.item_not_found'));
			}	
			$gaBadge->delete();
			return redirect(route('gamification.badges.index'))->with('success', Lang::get('gamification::lang.success_on_delete'));
		} catch (Exception $e) {
			return \Redirect::route('gamification.badges.index')->with('fails', Lang::get('gamification::lang.error_on_save').'<li>'.$e->getMessage().'</li>');
		}		
	}
}
