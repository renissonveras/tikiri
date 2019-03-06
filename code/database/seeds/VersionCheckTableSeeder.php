<?php

use Illuminate\Database\Seeder;

class VersionCheckTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('version_check')->delete();
        
        
        
    }
}
