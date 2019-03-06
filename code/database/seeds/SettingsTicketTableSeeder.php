<?php

use Illuminate\Database\Seeder;

class SettingsTicketTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings_ticket')->delete();
        
        \DB::table('settings_ticket')->insert(array (
            0 => 
            array (
                'id' => '1',
                'num_format' => '$$$$-####-####',
                'num_sequence' => 'sequence',
                'priority' => '1',
                'sla' => '2',
                'help_topic' => '1',
                'max_open_ticket' => '',
                'collision_avoid' => '2',
                'lock_ticket_frequency' => '0',
                'captcha' => '',
                'status' => '1',
                'claim_response' => '0',
                'assigned_ticket' => '0',
                'answered_ticket' => '0',
                'agent_mask' => '0',
                'html' => '0',
                'client_update' => '0',
                'max_file_size' => '0',
                'created_at' => '2016-12-12 23:19:29',
                'updated_at' => '2016-12-12 23:19:29',
            ),
        ));
        
        
    }
}
