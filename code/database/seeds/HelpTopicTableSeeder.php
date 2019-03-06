<?php

use Illuminate\Database\Seeder;

class HelpTopicTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('help_topic')->delete();
        
        \DB::table('help_topic')->insert(array (
            0 => 
            array (
                'id' => '1',
                'topic' => 'Pedido de Suporte',
                'parent_topic' => '',
                'custom_form' => NULL,
                'department' => '1',
                'ticket_status' => '1',
                'priority' => '2',
                'sla_plan' => '1',
                'thank_page' => '',
                'ticket_num_format' => '1',
                'internal_notes' => '',
                'status' => '1',
                'type' => '1',
                'auto_assign' => NULL,
                'auto_response' => '0',
                'created_at' => '2016-12-12 23:19:28',
                'updated_at' => '2017-10-26 20:04:17',
            ),
            1 => 
            array (
                'id' => '2',
                'topic' => 'Dúvidas',
                'parent_topic' => '',
                'custom_form' => NULL,
                'department' => '2',
                'ticket_status' => '1',
                'priority' => '2',
                'sla_plan' => '1',
                'thank_page' => '',
                'ticket_num_format' => '1',
                'internal_notes' => '',
                'status' => '1',
                'type' => '1',
                'auto_assign' => NULL,
                'auto_response' => '0',
                'created_at' => '2016-12-12 23:19:28',
                'updated_at' => '2017-10-26 20:04:49',
            ),
            2 => 
            array (
                'id' => '3',
                'topic' => 'Pedido de novo recurso',
                'parent_topic' => '',
                'custom_form' => NULL,
                'department' => '2',
                'ticket_status' => '1',
                'priority' => '2',
                'sla_plan' => '1',
                'thank_page' => '',
                'ticket_num_format' => '1',
                'internal_notes' => '',
                'status' => '1',
                'type' => '1',
                'auto_assign' => NULL,
                'auto_response' => '0',
                'created_at' => '2016-12-12 23:19:28',
                'updated_at' => '2017-10-26 20:05:05',
            ),
        ));
        
        
    }
}
