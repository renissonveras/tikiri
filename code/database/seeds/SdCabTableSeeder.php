<?php

use Illuminate\Database\Seeder;

class SdCabTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('sd_cab')->delete();
        
        \DB::table('sd_cab')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Comitê de Gestão de Mudanças',
                'head' => '1',
                'approvers' => '1,2,3',
                'aproval_mandatory' => '0',
                'created_at' => '2017-10-26 19:17:56',
                'updated_at' => '2017-10-26 19:17:56',
            ),
        ));
        
        
    }
}
