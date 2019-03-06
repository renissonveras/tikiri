<?php

use Illuminate\Database\Seeder;

class GaTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ga_types')->delete();
        
        \DB::table('ga_types')->insert(array (
            0 => 
            array (
                'id' => '1',
                'title' => 'Distintivo',
                'created_at' => '2017-11-09 04:09:22',
                'updated_at' => '2017-11-09 04:09:22',
            ),
            1 => 
            array (
                'id' => '2',
                'title' => 'Nível',
                'created_at' => '2017-11-09 04:09:22',
                'updated_at' => '2017-11-09 04:09:22',
            ),
            2 => 
            array (
                'id' => '3',
                'title' => 'Ponto',
                'created_at' => '2017-11-09 04:09:22',
                'updated_at' => '2017-11-09 04:09:22',
            ),
            3 => 
            array (
                'id' => '4',
                'title' => 'Bônus',
                'created_at' => '2017-11-09 04:09:22',
                'updated_at' => '2017-11-09 04:09:22',
            ),
            4 => 
            array (
                'id' => '5',
                'title' => 'Recompensas',
                'created_at' => '2017-11-09 04:09:22',
                'updated_at' => '2017-11-09 04:09:22',
            ),
        ));
        
        
    }
}
