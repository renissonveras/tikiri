<?php
namespace App\Plugins\Gamification\database\seeds;
use Illuminate\Database\Seeder;
use DB;

class GaLevelAssociateTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        $created_at = date('Y-d-m H:m:i');

        \DB::table('ga_level_associate')->delete();
        
        
        
    }
}
