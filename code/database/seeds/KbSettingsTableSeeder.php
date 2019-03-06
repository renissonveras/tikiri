<?php

use Illuminate\Database\Seeder;

class KbSettingsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('kb_settings')->delete();
        
        \DB::table('kb_settings')->insert(array (
            0 => 
            array (
                'id' => '1',
                'pagination' => '10',
                'created_at' => '2016-12-12 23:19:32',
                'updated_at' => '2016-12-12 23:19:32',
            ),
        ));
        
        
    }
}
