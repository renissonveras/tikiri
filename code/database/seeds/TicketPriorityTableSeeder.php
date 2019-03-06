<?php

use Illuminate\Database\Seeder;

class TicketPriorityTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ticket_priority')->delete();
        
        \DB::table('ticket_priority')->insert(array (
            0 => 
            array (
                'priority_id' => '1',
                'priority' => 'Baixa',
                'status' => '1',
                'priority_desc' => 'Baixa',
                'priority_color' => '#00a65a',
                'priority_urgency' => '4',
                'ispublic' => '1',
                'is_default' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'priority_id' => '2',
                'priority' => 'Normal',
                'status' => '1',
                'priority_desc' => 'Normal',
                'priority_color' => '#00bfef',
                'priority_urgency' => '3',
                'ispublic' => '1',
                'is_default' => '1',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'priority_id' => '3',
                'priority' => 'Alta',
                'status' => '1',
                'priority_desc' => 'Alta',
                'priority_color' => '#f39c11',
                'priority_urgency' => '2',
                'ispublic' => '1',
                'is_default' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'priority_id' => '4',
                'priority' => 'Emergência',
                'status' => '1',
                'priority_desc' => 'Emergência',
                'priority_color' => '#dd4b38',
                'priority_urgency' => '1',
                'ispublic' => '1',
                'is_default' => '',
                'created_at' => NULL,
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}
