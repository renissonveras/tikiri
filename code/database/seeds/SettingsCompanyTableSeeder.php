<?php

use Illuminate\Database\Seeder;

class SettingsCompanyTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings_company')->delete();
        
        \DB::table('settings_company')->insert(array (
            0 => 
            array (
                'id' => '1',
                'company_name' => 'Ideia8 Comunicação e Consultoria',
                'website' => 'https://www.tikiri.com.br',
                'phone' => '',
                'address' => '',
                'landing_page' => '',
                'offline_page' => '',
                'thank_page' => '',
                'logo' => '1714.logo_branco561px.png',
                'use_logo' => '1',
                'created_at' => '2016-12-12 23:19:29',
                'updated_at' => '2017-10-26 18:51:03',
            ),
        ));
        
        
    }
}
