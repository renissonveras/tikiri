<?php

use Illuminate\Database\Seeder;

class SdProductStatusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('sd_product_status')->delete();
        
        \DB::table('sd_product_status')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Em StandBy',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Em produção',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Obsoleto',
                'created_at' => '0000-00-00 00:00:00',
                'updated_at' => '0000-00-00 00:00:00',
            ),
        ));
        
        
    }
}
