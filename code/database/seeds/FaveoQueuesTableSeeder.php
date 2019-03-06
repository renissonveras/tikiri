<?php

use Illuminate\Database\Seeder;

class FaveoQueuesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('faveo_queues')->delete();
        
        
        
    }
}
