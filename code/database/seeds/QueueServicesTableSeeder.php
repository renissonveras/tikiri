<?php

use Illuminate\Database\Seeder;

class QueueServicesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('queue_services')->delete();
        
        \DB::table('queue_services')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Sync',
                'short_name' => 'sync',
                'status' => '1',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Database',
                'short_name' => 'database',
                'status' => '0',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Beanstalkd',
                'short_name' => 'beanstalkd',
                'status' => '0',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'SQS',
                'short_name' => 'sqs',
                'status' => '0',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'Iron',
                'short_name' => 'iron',
                'status' => '0',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'Redis',
                'short_name' => 'redis',
                'status' => '0',
                'created_at' => '2016-12-12 23:19:09',
                'updated_at' => '2016-12-12 23:19:09',
            ),
        ));
        
        
    }
}
