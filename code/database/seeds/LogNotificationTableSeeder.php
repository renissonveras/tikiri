<?php

use Illuminate\Database\Seeder;

class LogNotificationTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('log_notification')->delete();
        
        \DB::table('log_notification')->insert(array (
            0 => 
            array (
                'id' => '1',
                'log' => 'NOT-1',
                'created_at' => '2016-12-12 23:19:29',
                'updated_at' => '2016-12-12 23:19:29',
            ),
        ));
        
        
    }
}
