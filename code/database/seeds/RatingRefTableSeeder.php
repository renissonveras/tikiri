<?php

use Illuminate\Database\Seeder;

class RatingRefTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('rating_ref')->delete();
        
        \DB::table('rating_ref')->insert(array (
            0 => 
            array (
                'id' => '1',
                'rating_id' => '1',
                'ticket_id' => '1',
                'thread_id' => '0',
                'article_id' => NULL,
                'rating_value' => '5',
                'created_at' => '2017-06-30 20:15:48',
                'updated_at' => '2017-06-30 20:15:48',
            ),
            1 => 
            array (
                'id' => '2',
                'rating_id' => '1',
                'ticket_id' => '23',
                'thread_id' => '0',
                'article_id' => NULL,
                'rating_value' => '3',
                'created_at' => '2017-10-19 14:53:32',
                'updated_at' => '2017-10-20 02:25:44',
            ),
            2 => 
            array (
                'id' => '3',
                'rating_id' => '2',
                'ticket_id' => '23',
                'thread_id' => '46',
                'article_id' => NULL,
                'rating_value' => '5',
                'created_at' => '2017-10-20 02:44:03',
                'updated_at' => '2017-10-20 02:59:44',
            ),
            3 => 
            array (
                'id' => '4',
                'rating_id' => '3',
                'ticket_id' => '0',
                'thread_id' => '0',
                'article_id' => NULL,
                'rating_value' => '0',
                'created_at' => '2017-10-20 19:38:56',
                'updated_at' => '2017-10-20 19:38:56',
            ),
            4 => 
            array (
                'id' => '5',
                'rating_id' => '1',
                'ticket_id' => '22',
                'thread_id' => '0',
                'article_id' => NULL,
                'rating_value' => '4',
                'created_at' => '2017-10-21 12:45:27',
                'updated_at' => '2017-10-21 12:45:27',
            ),
            5 => 
            array (
                'id' => '6',
                'rating_id' => '2',
                'ticket_id' => '22',
                'thread_id' => '51',
                'article_id' => NULL,
                'rating_value' => '3',
                'created_at' => '2017-10-21 12:45:34',
                'updated_at' => '2017-10-21 12:45:34',
            ),
            6 => 
            array (
                'id' => '7',
                'rating_id' => '1',
                'ticket_id' => '7',
                'thread_id' => '0',
                'article_id' => NULL,
                'rating_value' => '3',
                'created_at' => '2017-10-21 18:43:22',
                'updated_at' => '2017-10-21 18:43:22',
            ),
            7 => 
            array (
                'id' => '9',
                'rating_id' => '3',
                'ticket_id' => '0',
                'thread_id' => '0',
                'article_id' => '1',
                'rating_value' => '4',
                'created_at' => '2017-10-21 20:01:19',
                'updated_at' => '2018-02-17 16:38:59',
            ),
            8 => 
            array (
                'id' => '10',
                'rating_id' => '3',
                'ticket_id' => '0',
                'thread_id' => '0',
                'article_id' => '2',
                'rating_value' => '4',
                'created_at' => '2018-02-17 16:52:44',
                'updated_at' => '2018-02-17 17:01:24',
            ),
            9 => 
            array (
                'id' => '11',
                'rating_id' => '3',
                'ticket_id' => '0',
                'thread_id' => '0',
                'article_id' => '3',
                'rating_value' => '3',
                'created_at' => '2018-02-17 17:05:51',
                'updated_at' => '2018-02-17 17:05:51',
            ),
        ));
        
        
    }
}
