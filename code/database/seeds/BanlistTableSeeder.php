<?php

use Illuminate\Database\Seeder;

class BanlistTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('banlist')->delete();
        
        
        
    }
}
