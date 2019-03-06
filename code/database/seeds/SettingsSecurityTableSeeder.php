<?php

use Illuminate\Database\Seeder;

class SettingsSecurityTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings_security')->delete();
        
        \DB::table('settings_security')->insert(array (
            0 => 
            array (
                'id' => '1',
                'lockout_message' => 'Você foi bloqueado devido a muitas falhas em tentativas de login.',
                'backlist_offender' => '0',
                'backlist_threshold' => '15',
                'lockout_period' => '15',
                'days_to_keep_logs' => '0',
                'created_at' => '2016-12-12 23:19:47',
                'updated_at' => '2017-11-20 22:35:37',
            ),
        ));
        
        
    }
}
