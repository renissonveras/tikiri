<?php

use Illuminate\Database\Seeder;

class SdLocationCategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('sd_location_categories')->delete();
        
        \DB::table('sd_location_categories')->insert(array (
            0 => 
            array (
                'id' => '1',
                'parent_id' => NULL,
                'name' => 'Sede',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            1 => 
            array (
                'id' => '2',
                'parent_id' => NULL,
                'name' => 'Parceiro',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            2 => 
            array (
                'id' => '3',
                'parent_id' => NULL,
                'name' => 'Interior',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            3 => 
            array (
                'id' => '4',
                'parent_id' => NULL,
                'name' => 'Fornecedor',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            4 => 
            array (
                'id' => '5',
                'parent_id' => NULL,
                'name' => 'Cedido',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
        ));
        
        
    }
}
