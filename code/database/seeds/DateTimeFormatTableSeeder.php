<?php

use Illuminate\Database\Seeder;

class DateTimeFormatTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('date_time_format')->delete();
        
        \DB::table('date_time_format')->insert(array (
            0 => 
            array (
                'id' => '1',
                'format' => 'd/m/Y H:i:s',
            ),
            1 => 
            array (
                'id' => '2',
                'format' => 'd.m.Y H:i:s',
            ),
            2 => 
            array (
                'id' => '3',
                'format' => 'd-m-Y H:i:s',
            ),
            3 => 
            array (
                'id' => '4',
                'format' => 'm/d/Y H:i:s',
            ),
            4 => 
            array (
                'id' => '5',
                'format' => 'm.d.Y H:i:s',
            ),
            5 => 
            array (
                'id' => '6',
                'format' => 'm-d-Y H:i:s',
            ),
            6 => 
            array (
                'id' => '7',
                'format' => 'Y/m/d H:i:s',
            ),
            7 => 
            array (
                'id' => '8',
                'format' => 'Y.m.d H:i:s',
            ),
            8 => 
            array (
                'id' => '9',
                'format' => 'Y-m-d H:i:s',
            ),
        ));
        
        
    }
}
