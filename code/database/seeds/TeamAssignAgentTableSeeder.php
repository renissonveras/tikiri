<?php

use Illuminate\Database\Seeder;

class TeamAssignAgentTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('team_assign_agent')->delete();
        
        \DB::table('team_assign_agent')->insert(array (
            0 => 
            array (
                'id' => '3',
                'team_id' => '1',
                'agent_id' => '1',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'id' => '4',
                'team_id' => '2',
                'agent_id' => '1',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'id' => '5',
                'team_id' => '3',
                'agent_id' => '1',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'id' => '7',
                'team_id' => '1',
                'agent_id' => '3',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            4 => 
            array (
                'id' => '8',
                'team_id' => '1',
                'agent_id' => '2',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}
