<?php

use Illuminate\Database\Seeder;

class SdLicenseTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('sd_license_types')->delete();
        
        \DB::table('sd_license_types')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'open source',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'comercial',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
        ));
        
        
    }
}
