<?php

use Illuminate\Database\Seeder;

class LoginAttemptsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('login_attempts')->delete();
        
        
        
    }
}
