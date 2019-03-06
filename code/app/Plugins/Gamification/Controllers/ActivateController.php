<?php

namespace App\Plugins\Gamification\Controllers;

use App\Http\Controllers\Controller;
use App\Plugins\Gamification\database\seeds\GamificationSeeder;
use Exception;
use Artisan;
use Schema;

class ActivateController extends Controller {

    public function activate() {
        try {
            if(!Schema::hasTable('ga_badges')){
                //$this->migrate();
                //$this->seed();
            }
        } catch (Exception $ex) {
            dd($ex);
        }
    }

    public function publish() {
        try {
            $publish = 'vendor:publish';
            $provider = 'App\Plugins\Gamification\ServiceProvider';
            $tag = "migrations";
            $r = Artisan::call($publish, ['--provider' => $provider, '--tag' => [$tag]]);
            //dd($r);
        } catch (Exception $ex) {
            dd($ex);
        }
    }
    
    public function migrate(){
        try{
            $path = "app".DIRECTORY_SEPARATOR."Plugins".DIRECTORY_SEPARATOR."Gamification".DIRECTORY_SEPARATOR."database".DIRECTORY_SEPARATOR."migrations";
            Artisan::call('migrate', [
            '--path' => $path,
            '--force'=>true,
            ]);
        } catch (Exception $ex) {
            dd($ex);
        }
    }
    
    public function seed(){
         try{
             $controller = new GamificationSeeder();
             $controller->run();
             return 1;
        } catch (Exception $ex) {
            dd($ex);
        }
    }
    
    

}
