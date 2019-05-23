<?php

namespace App\Plugins\Gamification;

class ServiceProvider extends \App\Plugins\ServiceProvider {

    public function register() {
        parent::register('Gamification');
    }

    public function boot() {
        /**
         * Migrations
         */
        $path = __DIR__ . '/database/migrations';
        $this->publishes([
            $path => database_path('/migrations/test')
                ], 'migrations');
        
        
        /**
         * Views
         */
        
         $view_path = app_path().DIRECTORY_SEPARATOR.'Plugins'.DIRECTORY_SEPARATOR.'Gamification'.DIRECTORY_SEPARATOR.'views';
         $this->loadViewsFrom($view_path, 'gamification');
        
        /**
         * Translation
         */
        $trans = app_path().DIRECTORY_SEPARATOR.'Plugins'.DIRECTORY_SEPARATOR.'Gamification'.DIRECTORY_SEPARATOR.'lang';
        $this->loadTranslationsFrom($trans, 'gamification');
        $controller = new \App\Plugins\Gamification\Controllers\ActivateController();
        $a = $controller->activate();
        
        $controller = new Controllers\ActivateController();
        $controller->activate();
        
        /*if (class_exists('Breadcrumbs')){
            require __DIR__ . '/breadcrumbs.php';
        } */  
        
        parent::boot('Gamification');

    }

}
