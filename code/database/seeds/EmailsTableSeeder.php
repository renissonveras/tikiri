<?php

use Illuminate\Database\Seeder;

class EmailsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('emails')->delete();
        
        
        
    }
}
