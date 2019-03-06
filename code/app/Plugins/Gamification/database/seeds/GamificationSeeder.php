<?php
namespace App\Plugins\Gamification\database\seeds;
use App\Plugins\Gamification\database\seeds\GaTypesTableSeeder;
use App\Plugins\Gamification\database\seeds\GaCategoriesTableSeeder;
use App\Plugins\Gamification\database\seeds\GaEventsTableSeeder;
use App\Plugins\Gamification\database\seeds\GaBadgesTableSeeder;
use App\Plugins\Gamification\database\seeds\GaBadgeEventsTableSeeder;
use App\Plugins\Gamification\database\seeds\GaLevelAssociateTableSeeder;

use Illuminate\Database\Seeder;

class GamificationSeeder extends Seeder {

    public function run() {
        
        $seed1 = new GaBadgesTableSeeder();
        $seed1->run();

        $seed2 = new GaCategoriesTableSeeder();
        $seed2->run();        

        $seed3 = new GaEventsTableSeeder();
        $seed3->run();

        $seed4 = new GaLevelAssociateTableSeeder();
        $seed4->run();

        $seed6 = new GaTypesTableSeeder();
        $seed6->run();

    }

}
