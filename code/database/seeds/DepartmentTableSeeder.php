<?php

use Illuminate\Database\Seeder;

class DepartmentTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('department')->delete();
        
        \DB::table('department')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Suporte',
                'type' => '1',
                'sla' => '1',
                'manager' => '1',
                'ticket_assignment' => '',
                'outgoing_email' => '',
                'template_set' => '',
                'auto_ticket_response' => '',
                'auto_message_response' => '',
                'auto_response_email' => '',
                'recipient' => '',
                'group_access' => '',
                'department_sign' => '',
                'created_at' => '2016-12-12 23:19:27',
                'updated_at' => '2017-11-18 00:36:49',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Análise e Desenvolvimento',
                'type' => '1',
                'sla' => '1',
                'manager' => NULL,
                'ticket_assignment' => '',
                'outgoing_email' => '',
                'template_set' => '',
                'auto_ticket_response' => '',
                'auto_message_response' => '',
                'auto_response_email' => '',
                'recipient' => '',
                'group_access' => '',
                'department_sign' => '',
                'created_at' => '2016-12-12 23:19:28',
                'updated_at' => '2017-10-26 18:40:33',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Redes e Segurança',
                'type' => '1',
                'sla' => '1',
                'manager' => NULL,
                'ticket_assignment' => '',
                'outgoing_email' => '',
                'template_set' => '',
                'auto_ticket_response' => '',
                'auto_message_response' => '',
                'auto_response_email' => '',
                'recipient' => '',
                'group_access' => '',
                'department_sign' => '',
                'created_at' => '2016-12-12 23:19:28',
                'updated_at' => '2017-10-26 18:40:45',
            ),
        ));
        
        
    }
}
