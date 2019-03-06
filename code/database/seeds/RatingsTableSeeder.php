<?php

use Illuminate\Database\Seeder;

class RatingsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ratings')->delete();
        
        \DB::table('ratings')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Satisfação geral',
                'display_order' => '1',
                'allow_modification' => '1',
                'rating_scale' => '5',
                'rating_area' => 'Helpdesk',
                'restrict' => 'General',
                'created_at' => '2016-12-12 23:19:53',
                'updated_at' => '2017-10-19 14:44:42',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Avalie a resposta',
                'display_order' => '1',
                'allow_modification' => '1',
                'rating_scale' => '5',
                'rating_area' => 'Comentarios',
                'restrict' => 'Support',
                'created_at' => '2016-12-12 23:19:53',
                'updated_at' => '2017-10-19 14:45:26',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Avalie o conteúdo',
                'display_order' => '2',
                'allow_modification' => '0',
                'rating_scale' => '5',
                'rating_area' => 'Article',
                'restrict' => 'General',
                'created_at' => '2017-10-20 19:38:56',
                'updated_at' => '2017-10-20 19:38:56',
            ),
        ));
        
        
    }
}
