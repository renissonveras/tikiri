<?php

namespace App\Plugins\Gamification\Controllers;

use App\Plugins\Gamification\Controllers\BaseGamificationController;
use Exception;
use Illuminate\Http\Request;

class InterfaceController extends BaseGamificationController {

   public function agentSidebar() {
		$path = app_path() . '/Plugins/Gamification/views/interface';
		\View::addNamespace('game', $path);
		return view('game::agent.sidebar');
	}

	public function adminSidebar() {
		$path = app_path() . '/Plugins/Gamification/views/interface';
		\View::addNamespace('game', $path);
		return view('game::admin.sidebar');
	}

	public function adminSettings() {
		$path = app_path() . '/Plugins/Gamification/views/interface';
		\View::addNamespace('game', $path);
		return view('game::admin.settings');
	}

    public function clientMenu() {
        $path = app_path() . '/Plugins/Gamification/views/interface';
        \View::addNamespace('game', $path);
        return view('game::client.menu');
    }	

}