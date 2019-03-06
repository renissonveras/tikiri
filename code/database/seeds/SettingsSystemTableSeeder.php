<?php

use Illuminate\Database\Seeder;

class SettingsSystemTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings_system')->delete();
        
        \DB::table('settings_system')->insert(array (
            0 => 
            array (
                'id' => '1',
                'status' => '1',
                'url' => '',
                'name' => 'Tikiri',
                'department' => '1',
                'page_size' => '',
                'log_level' => '',
                'purge_log' => '',
                'api_enable' => '0',
                'api_key_mandatory' => '0',
                'api_key' => '',
                'name_format' => '',
                'time_farmat' => NULL,
                'date_format' => NULL,
                'date_time_format' => '1',
                'day_date_time' => '',
                'time_zone' => '114',
                'content' => '',
                'version' => '',
                'created_at' => '2016-12-12 23:19:29',
                'updated_at' => '2017-06-16 09:41:46',
            ),
        ));
        
        
    }
}
