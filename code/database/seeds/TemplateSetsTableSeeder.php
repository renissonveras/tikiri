<?php

use Illuminate\Database\Seeder;

class TemplateSetsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('template_sets')->delete();
        
        \DB::table('template_sets')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'default',
                'active' => '1',
                'created_at' => '2016-12-12 23:19:47',
                'updated_at' => '2016-12-12 23:19:47',
            ),
        ));
        
        
    }
}
