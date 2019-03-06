<?php

use Illuminate\Database\Seeder;

class BarNotificationsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('bar_notifications')->delete();
        
        \DB::table('bar_notifications')->insert(array (
            0 => 
            array (
                'id' => '30',
                'key' => 'new-version',
                'value' => '',
                'created_at' => '2017-11-20 19:13:15',
                'updated_at' => '2017-11-20 19:13:15',
            ),
        ));
        
        
    }
}
