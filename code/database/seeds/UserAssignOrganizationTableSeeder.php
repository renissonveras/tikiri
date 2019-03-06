<?php

use Illuminate\Database\Seeder;

class UserAssignOrganizationTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('user_assign_organization')->delete();
        
        \DB::table('user_assign_organization')->insert(array (
            0 => 
            array (
                'id' => '3',
                'org_id' => '1',
                'user_id' => '3',
                'created_at' => '2017-11-10 03:25:31',
                'updated_at' => '2017-11-10 03:25:31',
            ),
            1 => 
            array (
                'id' => '5',
                'org_id' => '1',
                'user_id' => '2',
                'created_at' => '2017-11-17 22:10:20',
                'updated_at' => '2017-11-17 22:10:20',
            ),
            2 => 
            array (
                'id' => '6',
                'org_id' => '1',
                'user_id' => '4',
                'created_at' => '2017-11-17 22:26:15',
                'updated_at' => '2017-11-17 22:26:15',
            ),
        ));
        
        
    }
}
