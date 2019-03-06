<?php

use Illuminate\Database\Seeder;

class MailServicesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('mail_services')->delete();
        
        \DB::table('mail_services')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'SMTP',
                'short_name' => 'smtp',
                'created_at' => '2016-12-12 23:19:08',
                'updated_at' => '2016-12-12 23:19:08',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Php Mail',
                'short_name' => 'mail',
                'created_at' => '2016-12-12 23:19:08',
                'updated_at' => '2016-12-12 23:19:08',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Send Mail',
                'short_name' => 'sendmail',
                'created_at' => '2016-12-12 23:19:08',
                'updated_at' => '2016-12-12 23:19:08',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'Mailgun',
                'short_name' => 'mailgun',
                'created_at' => '2016-12-12 23:19:08',
                'updated_at' => '2016-12-12 23:19:08',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'Mandrill',
                'short_name' => 'mandrill',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'Log file',
                'short_name' => 'log',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
        ));
        
        
    }
}
