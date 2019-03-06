<?php

use Illuminate\Database\Seeder;

class TeamsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('teams')->delete();
        
        \DB::table('teams')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Suporte de 1º Nível',
                'status' => '1',
                'team_lead' => '2',
                'assign_alert' => '0',
                'admin_notes' => '',
                'created_at' => '2016-12-12 23:19:27',
                'updated_at' => '2017-10-26 18:41:24',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Suporte de 2º Nível',
                'status' => '1',
                'team_lead' => NULL,
                'assign_alert' => '0',
                'admin_notes' => '',
                'created_at' => '2016-12-12 23:19:27',
                'updated_at' => '2017-10-26 18:41:48',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Desenvolvedor',
                'status' => '1',
                'team_lead' => NULL,
                'assign_alert' => '0',
                'admin_notes' => '',
                'created_at' => '2016-12-12 23:19:27',
                'updated_at' => '2017-10-26 18:41:58',
            ),
        ));
        
        
    }
}
