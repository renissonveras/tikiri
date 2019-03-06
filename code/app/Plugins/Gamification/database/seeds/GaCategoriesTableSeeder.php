<?php
namespace App\Plugins\Gamification\database\seeds;
use Illuminate\Database\Seeder;
use DB;

class GaCategoriesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        $created_at = date('Y-d-m H:m:i');

        \DB::table('ga_categories')->delete();
        
        \DB::table('ga_categories')->insert(array (
            0 => 
            array (
                'id' => '4',
                'title' => 'Padrão de Atendimento',
                'shorttitle' => 'Padrão de Atendimento',
                'description' => 'Este distintivo é atribuído aos atendentes assim que são habilitados para o game.',
                'type_id' => '1',
                'priority' => '0',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            1 => 
            array (
                'id' => '5',
                'title' => 'Folgas no serviço',
                'shorttitle' => 'Folgas no serviço',
                'description' => 'Esta categoria de benefício concede folgas diversas aos funcionários.',
                'type_id' => '5',
                'priority' => '1',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            2 => 
            array (
                'id' => '6',
                'title' => 'Bônus concedido pela chefia',
                'shorttitle' => 'Concedido de Chefia',
            'description' => 'Esta categoria engloba os pontos concedidos diretamente pela chefia (bônus) no saldo dos funcionários.',
                'type_id' => '4',
                'priority' => '1',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            3 => 
            array (
                'id' => '7',
                'title' => 'Níveis Padrão',
                'shorttitle' => 'Níveis Padrão',
                'description' => 'Níveis Padrão',
                'type_id' => '2',
                'priority' => '1',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            4 => 
            array (
                'id' => '8',
                'title' => 'Avaliação do Atendimento',
                'shorttitle' => 'Avaliação do Atendimento',
                'description' => 'Pontuações recebidas pela avaliação do atendimento.',
                'type_id' => '3',
                'priority' => '1',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            5 => 
            array (
                'id' => '9',
                'title' => 'Utilização correta do sistema',
                'shorttitle' => 'Uso correto do Tikiri',
                'description' => 'Pontuações recebidas por bom atendimento',
                'type_id' => '3',
                'priority' => '2',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
            6 => 
            array (
                'id' => '10',
                'title' => 'Compartilhamento de Conhecimento',
                'shorttitle' => 'Compartilhamento de Conhecimento',
                'description' => 'Pontuação recebida quando o conhecimento é compartilhado e/ou utilizado por meio da Base de Conhecimento',
                'type_id' => '3',
                'priority' => '3',
                'created_at' => $created_at,
                'updated_at' => $created_at,
            ),
        ));
        
        
    }
}
