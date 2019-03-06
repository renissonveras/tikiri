<?php

use Illuminate\Database\Seeder;

class TemplateTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('template_types')->delete();
        
        \DB::table('template_types')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'assign-ticket',
                'created_at' => '2016-12-12 23:19:47',
                'updated_at' => '2016-12-12 23:19:47',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'check-ticket',
                'created_at' => '2016-12-12 23:19:47',
                'updated_at' => '2016-12-12 23:19:47',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'close-ticket',
                'created_at' => '2016-12-12 23:19:47',
                'updated_at' => '2016-12-12 23:19:47',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'create-ticket',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'create-ticket-agent',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'create-ticket-by-agent',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            6 => 
            array (
                'id' => '7',
                'name' => 'registration-notification',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            7 => 
            array (
                'id' => '8',
                'name' => 'reset-password',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            8 => 
            array (
                'id' => '9',
                'name' => 'ticket-reply',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            9 => 
            array (
                'id' => '10',
                'name' => 'ticket-reply-agent',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            10 => 
            array (
                'id' => '11',
                'name' => 'registration',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            11 => 
            array (
                'id' => '12',
                'name' => 'team_assign_ticket',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            12 => 
            array (
                'id' => '13',
                'name' => 'reset_new_password',
                'created_at' => '2016-12-12 23:19:48',
                'updated_at' => '2016-12-12 23:19:48',
            ),
            13 => 
            array (
                'id' => '14',
                'name' => 'merge-ticket-notification',
                'created_at' => '2017-01-01 20:20:11',
                'updated_at' => '2017-01-01 20:20:11',
            ),
        ));
        
        
    }
}
