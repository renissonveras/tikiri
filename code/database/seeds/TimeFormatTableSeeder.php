<?php

use Illuminate\Database\Seeder;

class TimeFormatTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('time_format')->delete();
        
        \DB::table('time_format')->insert(array (
            0 => 
            array (
                'id' => '1',
                'format' => 'H:i:s',
            ),
            1 => 
            array (
                'id' => '2',
                'format' => 'H.i.s',
            ),
        ));
        
        
    }
}
