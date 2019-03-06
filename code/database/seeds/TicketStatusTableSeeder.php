<?php

use Illuminate\Database\Seeder;

class TicketStatusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ticket_status')->delete();
        
        \DB::table('ticket_status')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Aberto',
                'state' => 'open',
                'mode' => '3',
                'message' => 'Ticket reaberto por',
                'flags' => '0',
                'sort' => '1',
                'email_user' => '0',
                'icon_class' => 'fa fa-folder-open-o',
                'properties' => 'Tickets Abertos.',
                'created_at' => '2016-12-12 23:19:23',
                'updated_at' => '2017-07-15 03:25:15',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Resolvido',
                'state' => 'closed',
                'mode' => '1',
                'message' => 'Ticket resolvido por',
                'flags' => '0',
                'sort' => '2',
                'email_user' => '0',
                'icon_class' => 'fa fa-check',
                'properties' => 'Tickets resolvidos.',
                'created_at' => '2016-12-12 23:19:24',
                'updated_at' => '2017-07-15 03:26:21',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Fechado',
                'state' => 'closed',
                'mode' => '3',
                'message' => 'Ticket fechado por',
                'flags' => '0',
                'sort' => '3',
                'email_user' => '0',
                'icon_class' => 'fa fa-times',
                'properties' => 'Ticket fechado, acessível agora pelos painéis do cliente e da equipe.',
                'created_at' => '2016-12-12 23:19:24',
                'updated_at' => '2017-07-15 03:27:13',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'Arquivado',
                'state' => '',
                'mode' => '3',
                'message' => 'Ticket arquivado por',
                'flags' => '0',
                'sort' => '4',
                'email_user' => '0',
                'icon_class' => 'fa fa-folder-o',
                'properties' => 'Tickets disponíveis apenas para administradores.',
                'created_at' => '2016-12-12 23:19:24',
                'updated_at' => '2017-07-15 03:28:03',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'Excluído',
                'state' => 'deleted',
                'mode' => '3',
                'message' => 'Ticket excluído por',
                'flags' => '0',
                'sort' => '5',
                'email_user' => '0',
                'icon_class' => '',
                'properties' => 'Os tickets foram encaminhados para exclusão. Não acessível nas listas de tickets.',
                'created_at' => '2016-12-12 23:19:24',
                'updated_at' => '2016-12-12 23:19:24',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'Desarquivado',
                'state' => '',
                'mode' => '3',
                'message' => 'Necessária a verificação da conta do usuário.',
                'flags' => '0',
                'sort' => '6',
                'email_user' => '0',
                'icon_class' => 'fa fa-folder-open',
                'properties' => 'O ticket vai ser aberto após o usuário validar o cadastro.',
                'created_at' => '2016-12-12 23:19:24',
                'updated_at' => '2017-07-15 03:28:50',
            ),
            6 => 
            array (
                'id' => '7',
                'name' => 'Solicitação de Aprovação',
                'state' => '',
                'mode' => '3',
                'message' => 'Aprovação solicitada por',
                'flags' => '0',
                'sort' => '7',
                'email_user' => '0',
                'icon_class' => 'fa fa-check-square-o',
                'properties' => 'Ticket vai ser aberto após aprovação do administrador',
                'created_at' => '2016-12-12 23:19:24',
                'updated_at' => '2017-07-15 03:30:57',
            ),
        ));
        
        
    }
}
