<?php

use Illuminate\Database\Seeder;

class PasswordResetsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('password_resets')->delete();
        
        \DB::table('password_resets')->insert(array (
            0 => 
            array (
                'email' => 'cliente@tikiri.com.br',
                'token' => 'JR6VXC7ZbyTyoc88wOMCW6uyiwuOJLWWcdTTgjumSJo9OKwjM7jY92It4z1f',
                'created_at' => '2017-11-21 02:40:14',
            ),
        ));
        
        
    }
}
