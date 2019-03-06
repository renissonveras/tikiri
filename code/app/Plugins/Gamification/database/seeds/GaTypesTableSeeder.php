<?php
namespace App\Plugins\Gamification\database\seeds;
use Illuminate\Database\Seeder;
use DB;

class GaTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        $created_at = date('Y-d-m H:m:i');

        \DB::table('ga_types')->delete();
        
        \DB::table('ga_types')->insert(array (
            0 => 
            array (
                'id' => '1',
                'title' => 'Distintivo',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            1 => 
            array (
                'id' => '2',
                'title' => 'Nível',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            2 => 
            array (
                'id' => '3',
                'title' => 'Ponto',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            3 => 
            array (
                'id' => '4',
                'title' => 'Bônus',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            4 => 
            array (
                'id' => '5',
                'title' => 'Recompensas',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
        ));
        
        
    }
}
