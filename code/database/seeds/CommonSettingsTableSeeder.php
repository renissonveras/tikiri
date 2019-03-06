<?php

use Illuminate\Database\Seeder;

class CommonSettingsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('common_settings')->delete();
        
        \DB::table('common_settings')->insert(array (
            0 => 
            array (
                'id' => '1',
                'option_name' => 'itil',
                'option_value' => '',
                'status' => '0',
                'optional_field' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'id' => '2',
                'option_name' => 'ticket_token_time_duration',
                'option_value' => '1',
                'status' => '',
                'optional_field' => '',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2016-12-12 23:19:52',
            ),
            2 => 
            array (
                'id' => '3',
                'option_name' => 'enable_rtl',
                'option_value' => '0',
                'status' => '',
                'optional_field' => '',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2017-06-16 09:41:46',
            ),
            3 => 
            array (
                'id' => '4',
                'option_name' => 'user_set_ticket_status',
                'option_value' => '',
                'status' => '1',
                'optional_field' => '',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2016-12-12 23:19:52',
            ),
            4 => 
            array (
                'id' => '5',
                'option_name' => 'send_otp',
                'option_value' => '',
                'status' => '1',
                'optional_field' => '',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2017-11-20 22:32:00',
            ),
            5 => 
            array (
                'id' => '6',
                'option_name' => 'email_mandatory',
                'option_value' => '',
                'status' => '1',
                'optional_field' => '',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2017-11-20 22:32:00',
            ),
            6 => 
            array (
                'id' => '7',
                'option_name' => 'user_priority',
                'option_value' => '',
                'status' => '0',
                'optional_field' => '',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2016-12-12 23:19:52',
            ),
        ));
        
        
    }
}
