<?php

use Illuminate\Database\Seeder;

class WidgetsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('widgets')->delete();
        
        \DB::table('widgets')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'footer1',
                'title' => '',
                'value' => '',
                'created_at' => '2016-12-12 23:19:30',
                'updated_at' => '2017-11-07 15:28:54',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'footer2',
                'title' => '',
                'value' => '<br />',
                'created_at' => '2016-12-12 23:19:30',
                'updated_at' => '2017-11-07 15:25:39',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'footer3',
                'title' => '',
                'value' => '<br />',
                'created_at' => '2016-12-12 23:19:30',
                'updated_at' => '2017-11-07 15:25:49',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'footer4',
                'title' => '',
                'value' => '',
                'created_at' => '2016-12-12 23:19:30',
                'updated_at' => '2017-11-07 15:26:03',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'side1',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:30',
                'updated_at' => '2016-12-12 23:19:30',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'side2',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:30',
                'updated_at' => '2016-12-12 23:19:30',
            ),
            6 => 
            array (
                'id' => '7',
                'name' => 'linkedin',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            7 => 
            array (
                'id' => '8',
                'name' => 'stumble',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            8 => 
            array (
                'id' => '9',
                'name' => 'google',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            9 => 
            array (
                'id' => '10',
                'name' => 'deviantart',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            10 => 
            array (
                'id' => '11',
                'name' => 'flickr',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            11 => 
            array (
                'id' => '12',
                'name' => 'skype',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            12 => 
            array (
                'id' => '13',
                'name' => 'rss',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            13 => 
            array (
                'id' => '14',
                'name' => 'twitter',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            14 => 
            array (
                'id' => '15',
                'name' => 'facebook',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:31',
                'updated_at' => '2016-12-12 23:19:31',
            ),
            15 => 
            array (
                'id' => '16',
                'name' => 'youtube',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:32',
                'updated_at' => '2016-12-12 23:19:32',
            ),
            16 => 
            array (
                'id' => '17',
                'name' => 'vimeo',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:32',
                'updated_at' => '2016-12-12 23:19:32',
            ),
            17 => 
            array (
                'id' => '18',
                'name' => 'pinterest',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:32',
                'updated_at' => '2016-12-12 23:19:32',
            ),
            18 => 
            array (
                'id' => '19',
                'name' => 'dribbble',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:32',
                'updated_at' => '2016-12-12 23:19:32',
            ),
            19 => 
            array (
                'id' => '20',
                'name' => 'instagram',
                'title' => NULL,
                'value' => NULL,
                'created_at' => '2016-12-12 23:19:32',
                'updated_at' => '2016-12-12 23:19:32',
            ),
        ));
        
        
    }
}
