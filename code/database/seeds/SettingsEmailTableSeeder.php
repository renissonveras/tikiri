<?php

use Illuminate\Database\Seeder;

class SettingsEmailTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings_email')->delete();
        
        \DB::table('settings_email')->insert(array (
            0 => 
            array (
                'id' => '1',
                'template' => 'default',
                'sys_email' => NULL,
                'alert_email' => '',
                'admin_email' => '',
                'mta' => '',
                'email_fetching' => '1',
                'notification_cron' => '1',
                'strip' => '0',
                'separator' => '0',
                'all_emails' => '1',
                'email_collaborator' => '1',
                'attachment' => '1',
                'created_at' => '2016-12-12 23:19:29',
                'updated_at' => '2016-12-12 23:19:29',
            ),
        ));
        
        
    }
}
