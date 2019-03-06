<?php

use Illuminate\Database\Seeder;

class LanguagesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('languages')->delete();
        
        \DB::table('languages')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'English',
                'locale' => 'en',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Italian',
                'locale' => 'it',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'German',
                'locale' => 'de',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'French',
                'locale' => 'fr',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'Brazilian Portuguese',
                'locale' => 'pt_BR',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'Dutch',
                'locale' => 'nl',
            ),
            6 => 
            array (
                'id' => '7',
                'name' => 'Spanish',
                'locale' => 'es',
            ),
            7 => 
            array (
                'id' => '8',
                'name' => 'Norwegian',
                'locale' => 'nb_NO',
            ),
            8 => 
            array (
                'id' => '9',
                'name' => 'Danish',
                'locale' => 'da',
            ),
        ));
        
        
    }
}
