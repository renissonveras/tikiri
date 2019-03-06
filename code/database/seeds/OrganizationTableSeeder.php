<?php

use Illuminate\Database\Seeder;

class OrganizationTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('organization')->delete();
        
        \DB::table('organization')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Tikiri Gestão de TI',
                'phone' => '55 95 981128113',
                'website' => 'http://www.tikiri.com.br',
                'address' => 'Rua Pedro Teixeira, 597',
                'head' => NULL,
                'internal_notes' => '',
                'created_at' => '2017-07-01 04:16:03',
                'updated_at' => '2017-07-01 04:16:03',
            ),
        ));
        
        
    }
}
