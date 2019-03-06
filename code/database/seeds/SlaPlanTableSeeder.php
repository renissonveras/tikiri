<?php

use Illuminate\Database\Seeder;

class SlaPlanTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('sla_plan')->delete();
        
        \DB::table('sla_plan')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Sla 1',
                'grace_period' => '6 Horas',
                'admin_note' => '',
                'status' => '1',
                'transient' => '0',
                'ticket_overdue' => '0',
                'created_at' => '2016-12-12 23:19:25',
                'updated_at' => '2016-12-12 23:19:25',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Sla 2',
                'grace_period' => '12 Horas',
                'admin_note' => '',
                'status' => '1',
                'transient' => '0',
                'ticket_overdue' => '0',
                'created_at' => '2016-12-12 23:19:25',
                'updated_at' => '2016-12-12 23:19:25',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Sla 3',
                'grace_period' => '24 Horas',
                'admin_note' => '',
                'status' => '1',
                'transient' => '0',
                'ticket_overdue' => '0',
                'created_at' => '2016-12-12 23:19:25',
                'updated_at' => '2016-12-12 23:19:25',
            ),
        ));
        
        
    }
}
