<?php

use Illuminate\Database\Seeder;

class DateFormatTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('date_format')->delete();
        
        \DB::table('date_format')->insert(array (
            0 => 
            array (
                'id' => '1',
                'format' => 'dd/mm/yyyy',
            ),
            1 => 
            array (
                'id' => '2',
                'format' => 'dd-mm-yyyy',
            ),
            2 => 
            array (
                'id' => '3',
                'format' => 'dd.mm.yyyy',
            ),
            3 => 
            array (
                'id' => '4',
                'format' => 'mm/dd/yyyy',
            ),
            4 => 
            array (
                'id' => '5',
                'format' => 'mm:dd:yyyy',
            ),
            5 => 
            array (
                'id' => '6',
                'format' => 'mm-dd-yyyy',
            ),
            6 => 
            array (
                'id' => '7',
                'format' => 'yyyy/mm/dd',
            ),
            7 => 
            array (
                'id' => '8',
                'format' => 'yyyy.mm.dd',
            ),
            8 => 
            array (
                'id' => '9',
                'format' => 'yyyy-mm-dd',
            ),
        ));
        
        
    }
}
