<?php
namespace App\Plugins\Gamification\Controllers;

use App\Http\Controllers\Controller;

class BaseGamificationController extends Controller{
    
    public function __construct() {
        \Event::fire('gamification.activate', array());
    }
    
}