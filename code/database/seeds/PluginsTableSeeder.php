<?php

use Illuminate\Database\Seeder;

class PluginsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('plugins')->delete();
        
        \DB::table('plugins')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'ServiceDesk',
                'path' => 'ServiceDesk',
                'status' => '0',
                'created_at' => '2017-07-16 03:54:52',
                'updated_at' => '2018-02-18 21:24:56',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Gamification',
                'path' => 'Gamification',
                'status' => '0',
                'created_at' => '2017-09-11 01:27:22',
                'updated_at' => '2018-02-18 21:24:50',
            ),
        ));
        
        
    }
}
