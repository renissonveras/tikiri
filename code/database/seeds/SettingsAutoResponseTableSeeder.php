<?php

use Illuminate\Database\Seeder;

class SettingsAutoResponseTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings_auto_response')->delete();
        
        \DB::table('settings_auto_response')->insert(array (
            0 => 
            array (
                'id' => '1',
                'new_ticket' => '1',
                'agent_new_ticket' => '1',
                'submitter' => '0',
                'participants' => '0',
                'overlimit' => '0',
                'created_at' => '2016-12-12 23:19:29',
                'updated_at' => '2016-12-12 23:19:29',
            ),
        ));
        
        
    }
}
