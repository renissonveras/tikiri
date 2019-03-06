<?php

use Illuminate\Database\Seeder;

class GaLevelAssociateTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ga_level_associate')->delete();
        
        \DB::table('ga_level_associate')->insert(array (
            0 => 
            array (
                'id' => '2',
                'level_id' => '6',
                'reward_id' => '24',
                'description' => '',
                'created_at' => '2017-10-16 21:18:52',
                'updated_at' => '2017-10-16 21:19:27',
            ),
        ));
        
        
    }
}
