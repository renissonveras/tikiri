<?php

Route::group(['prefix' => 'gamification', 'middleware' => ['web', 'auth']], function() {

	\Event::listen('gamification.activate', function() {
		$controller = new App\Plugins\Gamification\Controllers\ActivateController();
		echo $controller->activate();
	});

	\Event::listen('service.desk.agent.sidebar.replace', function() {
		return 0;
	});

	\Event::listen('service.desk.admin.sidebar.replace', function() {
		return 0;
	});

	\Event::listen('service.desk.agent.sidebar', function() {
		$controller = new App\Plugins\Gamification\Controllers\InterfaceController();
		echo $controller->agentSidebar();
	});

	\Event::listen('service.desk.admin.sidebar', function() {
		$controller = new App\Plugins\Gamification\Controllers\InterfaceController();
		echo $controller->adminSidebar();
	});

	\Event::listen('service.desk.admin.settings', function() {
		$controller = new App\Plugins\Gamification\Controllers\InterfaceController();
		echo $controller->adminSettings();
	});

	\Event::listen('service.desk.client.profile.menu', function() {
		$controller = new App\Plugins\Gamification\Controllers\InterfaceController();
		echo $controller->clientMenu();
	});

	\Event::listen('Create-Ticket', function($data) {
		$controller = new App\Plugins\Gamification\Controllers\GaUserBadgesController();
		$badgeData = [
			'user_id'      => Auth::user()->id,
			'badge_id'     => 19,
			'added_user_id' => Auth::user()->id,
		];        
		$controller->storePoints($badgeData);
		//dd($data);
	});	

	\Event::listen('Ticket-Rating', function($data) {
		$controller = new App\Plugins\Gamification\Controllers\GaUserBadgesController();
		$badgeId = 0;
		switch ($data["rating_value"]) {
			case 1:
				$badgeId = 14;
				break;
			case 2:
				$badgeId = 15;
				break;
			case 3:
				$badgeId = 16;
				break;
			case 4:
				$badgeId = 17;
				break;
			case 5:
				$badgeId = 18;
				break;
			default:
				$badgeId = 0;
				break;
		}
		$badgeData = [
			'user_id'		=> $data["assigned_to"],
			'badge_id'		=> $badgeId,
			'added_user_id' => Auth::user()->id,
			'rating_value'	=> $data["rating_value"],
		];
		if ($badgeId > 0) {
			$controller->storePoints($badgeData);
		}
		//dd($data);
	});	
	
	\Event::listen('Article-Create', function() {
		$controller = new App\Plugins\Gamification\Controllers\GaUserBadgesController();
		$badgeData = [
			'user_id'      => Auth::user()->id,
			'badge_id'     => 20,
			'added_user_id' => Auth::user()->id,
		];        
		$controller->storePoints($badgeData);
		//dd($data);
	});	

	\Event::listen('Article-Rating', function($data) {
		$controller = new App\Plugins\Gamification\Controllers\GaUserBadgesController();
		$badgeId = 0;
		switch ($data["rating_value"]) {
			case 1:
				$badgeId = 25;
				break;
			case 2:
				$badgeId = 26;
				break;
			case 3:
				$badgeId = 27;
				break;
			case 4:
				$badgeId = 28;
				break;
			case 5:
				$badgeId = 29;
				break;
			default:
				$badgeId = 0;
				break;
		}
		$badgeData = [
			'user_id'		=> $data["assigned_to"],
			'badge_id'		=> $badgeId,
			'added_user_id' => Auth::user()->id,
			'rating_value'	=> $data["rating_value"],
		];
		if ($badgeId > 0) {
			$controller->storePoints($badgeData);
		}
		//dd($data);
	});	

	/**
	 * Admin module
	 */
	Route::group(['middleware' => 'roles'], function() {


		Route::resource('gaBadges', 'App\Plugins\Gamification\Controllers\GaBadgeController');
		Route::resource('gaCategories', 'App\Plugins\Gamification\Controllers\GaCategoryController');
		Route::resource('gaUsers', 'App\Plugins\Gamification\Controllers\GaUserController');
		Route::resource('gaEvents', 'App\Plugins\Gamification\Controllers\GaEventController');
		Route::resource('gaUserBadges', 'App\Plugins\Gamification\Controllers\GaUserBadgesController');
		Route::resource('gaLevelAssociates', 'App\Plugins\Gamification\Controllers\GaLevelAssociateController');
		Route::resource('gaUserLevels', 'App\Plugins\Gamification\Controllers\GaUserLevelsController');
		Route::resource('gaTypes', 'App\Plugins\Gamification\Controllers\GaTypeController');
		Route::resource('gaBagdeEvents', 'App\Plugins\Gamification\Controllers\GaBagdeEventsController');

		Route::get('get-badges/{type_id}', ['as' => 'gamification.badges.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaBadgeController@getBadges']);
		Route::get('badges', ['as' => 'gamification.badges.index', 'uses' => 'App\Plugins\Gamification\Controllers\GaBadgeController@index']);
		Route::get('badges/{type_id}', ['as' => 'gamification.badges.index.types', 'uses' => 'App\Plugins\Gamification\Controllers\GaBadgeController@index']);

		Route::get('storePoints2', ['as' => 'gamification.userbadges.teste', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@storeCredits2']);
		Route::get('badges/create/{type_id}', ['as' => 'gamification.badges.create', 'uses' => 'App\Plugins\Gamification\Controllers\GaBadgeController@create']);
		Route::get('get-categories', ['as' => 'gamification.categories.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaCategoryController@getCategories']);
		Route::get('get-level-associates', ['as' => 'gamification.level.associates.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaLevelAssociateController@getLevelAssociates']);
		Route::get('get-types', ['as' => 'gamification.types.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaTypeController@getTypes']);
		Route::get('user-badges/{user_id}', ['as' => 'gamification.badges.index.users', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@index']);
	  	Route::get('get-users-list', ['as' => 'gamification.users.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@usersList']);
		Route::get('get-users-detail/{user_id}', ['as' => 'gamification.user.detail', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@adminUserDetail']);
		Route::get('users-detail/{user_id}', ['as' => 'gamification.user.detail', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@adminUserDetail']);
		Route::get('get-users-detail/{user_id}', ['as' => 'gamification.user.details.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@adminGetUserBadges']);
		Route::post('get-credits', ['as' => 'gamification.get.credits', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@getCreditsDetails']);
		Route::post('store-credits', ['as' => 'gamification.store.credits', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@storeCredits']);

	});

	/**
	 * Agent module
	 */
	Route::group(['middleware' => 'role.agent', 'middleware' => 'auth', 'middleware' => 'install', 'middleware' => 'update'], function () {
		Route::get('game-notifications', ['as' => 'gamification.userbadges.agentsNotifications', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@agentsNotifications']);
		Route::get('get-user-badges', ['as' => 'gamification.user.badges.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@getUserBadges']);
	});

    /**
     * Client module
     */
	Route::group(['middleware' => 'role.user', 'middleware' => 'auth'], function () {
		Route::get('client-notifications', ['as' => 'gamification.userbadges.clients', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@clientNotifications']);
		Route::get('get-user-badges', ['as' => 'gamification.user.badges.get', 'uses' => 'App\Plugins\Gamification\Controllers\GaUserBadgesController@getUserBadges']);		
	});

});
