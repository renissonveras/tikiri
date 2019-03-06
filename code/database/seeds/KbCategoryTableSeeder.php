<?php

use Illuminate\Database\Seeder;

class KbCategoryTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('kb_category')->delete();
        
        \DB::table('kb_category')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Instalação e Atualização',
                'slug' => 'instalacao-e-atualizacao',
                'description' => '<h4>Instalação e Atualização Instalação e Atualização Instalação e Atualização</h4>',
                'status' => '1',
                'parent' => '0',
                'created_at' => '2017-12-17 19:53:45',
                'updated_at' => '2017-12-17 19:53:45',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Guia do Administrador',
                'slug' => 'guia-do-administrador',
                'description' => '<h4>Guia do Administrador</h4>',
                'status' => '1',
                'parent' => '0',
                'created_at' => '2017-12-17 19:53:55',
                'updated_at' => '2017-12-17 19:53:55',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Guia do Técnico Atendente',
                'slug' => 'guia-do-tecnico-atendente',
                'description' => '<h4>Guia do Técnico Atendente</h4>',
                'status' => '1',
                'parent' => '0',
                'created_at' => '2017-12-17 19:54:06',
                'updated_at' => '2017-12-17 19:54:06',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'Base de conhecimento',
                'slug' => 'base-de-conhecimento',
                'description' => '<h4>Base de conhecimento</h4>',
                'status' => '1',
                'parent' => '0',
                'created_at' => '2017-12-17 19:54:17',
                'updated_at' => '2017-12-17 19:54:17',
            ),
        ));
        
        
    }
}
