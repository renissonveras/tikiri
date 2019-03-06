<?php

use Illuminate\Database\Seeder;

class WorkflowCloseTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('workflow_close')->delete();
        
        \DB::table('workflow_close')->insert(array (
            0 => 
            array (
                'id' => '1',
                'days' => '2',
                'condition' => '1',
                'send_email' => '1',
                'status' => '3',
                'created_at' => '2016-12-12 23:19:14',
                'updated_at' => '2016-12-12 23:19:14',
            ),
        ));
        
        
    }
}
