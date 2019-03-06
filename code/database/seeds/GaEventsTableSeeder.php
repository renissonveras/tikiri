<?php

use Illuminate\Database\Seeder;

class GaEventsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ga_events')->delete();
        
        \DB::table('ga_events')->insert(array (
            0 => 
            array (
                'id' => '2',
                'title' => 'Avaliação do Atendimento 1',
                'description' => 'Teste',
                'event_key' => 'Eventkey1',
                'created_at' => '2017-11-09 04:09:22',
                'updated_at' => '2017-11-09 04:09:22',
            ),
        ));
        
        
    }
}
