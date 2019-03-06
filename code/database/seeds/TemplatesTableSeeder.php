<?php

use Illuminate\Database\Seeder;

class TemplatesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('templates')->delete();
        
        \DB::table('templates')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Modelo de aviso ao agente quando o ticket é atribuído a ele',
                'variable' => '0',
                'type' => '1',
                'subject' => 'Tikiri - Ticket pra você',
                'message' => '<div>Olá {!!$ticket_agent_name!!},<br /><br /><b>Ticket Nº:</b> {!!$ticket_number!!}<br />Foi enviado a você {!!$ticket_assigner!!} <br /> Favor verificar e responder.<br /> Link: {!!$ticket_link!!}<br /><br />Obrigado<br />Atenciosamente,<br /> {!!$system_from!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:50',
                'updated_at' => '2016-12-12 23:19:50',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Modelo de aviso ao cliente com link para verificar o ticket sem fazer login no sistema',
                'variable' => '1',
                'type' => '2',
                'subject' => 'Tikiri - Acompanhe seu ticket',
                'message' => '<div>Olá {!!$user!!},<br /><br />Clique no link abaixo para ver o ticket solicitado<br /> {!!$ticket_link_with_number!!}<br /><br />Atenciosamente,<br /> {!!$system_from!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:50',
                'updated_at' => '2016-12-12 23:19:50',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Modelo para notificação ao cliente quando o status do ticket é alterado para fechado',
                'variable' => '0',
                'type' => '3',
                'subject' => 'Tikiri - Ticket fechado',
                'message' => '<div>Olá,<br /><br />Esta mensagem refere-se ao ticket de identificador: {!!$ticket_number!!}. Estamos mudando o status deste ticket para "Fechado", pois o problema parece estar resolvido.<br /><br />Obrigado<br />Atenciosamente,<br /> {!!$system_from!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:50',
                'updated_at' => '2016-12-12 23:19:50',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'Modelo do aviso ao cliente quando a criação de tickets for bem-sucedida',
                'variable' => '0',
                'type' => '4',
                'subject' => 'Tikiri - Ticket criado',
                'message' => '<div><span>Olá {!!$user!!}<br /><br /></span><span>Obrigado por nos contatar. Esta é uma resposta automática que confirma o recebimento do seu Ticket. Nossa equipe retornará o contato o mais rápido possível. Ao responder, certifique-se de que o ID do ticket esteja mantido no assunto da mensagem para que possamos acompanhar suas respostas.<br /><br /></span><span><b>Ticket ID:</b> {!!$ticket_number!!} <br /><br /></span><span> {!!$department_sign!!}<br /></span>Você pode verificar o status ou atualizar este ticket online pelo endereço: {!!$system_link!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:51',
                'updated_at' => '2016-12-12 23:19:51',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'Modelo do aviso ao agente quando houverem novos tickets',
                'variable' => '0',
                'type' => '5',
                'subject' => 'Tikiri - Novos tickets',
                'message' => '<div>Olá {!!$ticket_agent_name!!},<br /><br />Novo ticket {!!$ticket_number!!}created <br /><br /><b>De</b><br /><b>Nome:</b> {!!$ticket_client_name!!}   <br /><b>E-mail:</b> {!!$ticket_client_email!!}<br /><br /> {!!$content!!}<br /><br />Atenciosamente,<br /> {!!$system_from!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:51',
                'updated_at' => '2016-12-12 23:19:51',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'Modelo de aviso ao cliente quando um novo ticket for criado em seu nome pelo agente',
                'variable' => '0',
                'type' => '6',
                'subject' => 'Tikiri - Ticket criado',
                'message' => '<div> {!!$content!!}<br /><br /> {!!$agent_sign!!}<br /><br />Você pode verificar o status ou atualizar este ticket online pelo endereço: {!!$system_link!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:51',
                'updated_at' => '2016-12-12 23:19:51',
            ),
            6 => 
            array (
                'id' => '7',
                'name' => 'Modelo do aviso ao cliente no novo registro quando da criação de novos tickets para clientes não registrados',
                'variable' => '1',
                'type' => '7',
                'subject' => 'Tikiri - Confirmação de Registro',
                'message' => '<p>Olá {!!$user!!}, </p><p>Este e-mail é confirmação de que você está registrado no nosso serviço de suporte.</p><p><b>Email registrado:</b> {!!$email_address!!}</p><p><b>Senha:</b> {!!$user_password!!}</p><p>Você pode visitar nosso serviço de ajuda e contatar-nos a qualquer momento: {!!$system_link!!}</p><p>Obrigado.</p><p>Atenciosamente,</p><p> {!!$system_from!!} </p>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:51',
                'updated_at' => '2016-12-12 23:19:51',
            ),
            7 => 
            array (
                'id' => '8',
                'name' => 'Modelo para notificação a qualquer usuário sobre a opção redefinir senha',
                'variable' => '1',
                'type' => '8',
                'subject' => 'Tikiri - Altere sua senha',
                'message' => 'Olá {!!$user!!},<br /><br />Você pediu para redefinir sua senha. Para fazer isso, clique neste link:<br /><br /> {!!$password_reset_link!!}<br /><br />Isso permitirá que você altere sua senha para algo novo. Se você não pediu isso, não se preocupe, nós manteremos sua senha segura.<br /><br />Obrigado.<br /><br />Atenciosamente,<br /> {!!$system_from!!}',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:51',
                'updated_at' => '2016-12-12 23:19:51',
            ),
            8 => 
            array (
                'id' => '9',
                'name' => 'Modelo de aviso ao cliente quando seu ticket for respondido',
                'variable' => '0',
                'type' => '9',
                'subject' => 'Tikiri - Ticket respondido',
                'message' => '<span></span><div><span></span><p> {!!$content!!}<br /></p><p> {!!$agent_sign!!} </p><p><b>Detalhes do Ticket</b></p><p><b>Ticket ID:</b> {!!$ticket_number!!}</p></div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:51',
                'updated_at' => '2016-12-12 23:19:51',
            ),
            9 => 
            array (
                'id' => '10',
                'name' => 'Modelo de aviso ao agente quando uma ticket for respondido',
                'variable' => '0',
                'type' => '10',
                'subject' => 'Tikiri - Ticket respondido',
                'message' => '<div>Olá {!!$ticket_agent_name!!},<br /><b><br /></b>Uma resposta foi feita no ticket {!!$ticket_number!!}<br /><b><br /></b><b>De<br /></b><b>Nome: </b>{!!$ticket_client_name!!}<br /><b>E-mail: </b>{!!$ticket_client_email!!}<br /><b><br /></b> {!!$content!!}<br /><b><br /></b>Atenciosamente,<br /> {!!$system_from!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:51',
                'updated_at' => '2016-12-12 23:19:51',
            ),
            10 => 
            array (
                'id' => '11',
                'name' => 'Modelo do aviso ao cliente sobre o link de confirmação de registro',
                'variable' => '1',
                'type' => '11',
                'subject' => 'Tikiri - Verifique seu email',
                'message' => '<p>Olá {!!$user!!}, </p><p>Este e-mail é confirmação de que você está registrado no nosso helpdesk.</p><p><b>Email registrado:</b> {!!$email_address!!}</p><p>Por favor, clique no link abaixo para ativar sua conta e entrar no sistema {!!$password_reset_link!!}</p><p>Obrigado.</p><p>Atenciosamente,</p><p> {!!$system_from!!} </p>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2016-12-12 23:19:52',
            ),
            11 => 
            array (
                'id' => '12',
                'name' => 'Modelo do um aviso ao time quando um ticket for atribuído a equipe',
                'variable' => '1',
                'type' => '12',
                'subject' => 'Tikiri - Ticket enviado a uma equipe',
                'message' => '<div>Olá {!!$ticket_agent_name!!},<br /><br /><b>Ticket Num:</b> {!!$ticket_number!!}<br />Foi atribuído ao seu time : {!!$team!!} por {!!$ticket_assigner!!} <br /><br />Obrigado<br />Atenciosamente,<br />{!!$system_from!!}</div>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2016-12-12 23:19:52',
            ),
            12 => 
            array (
                'id' => '13',
                'name' => 'Modelo do aviso ao cliente quando a senha for alterada',
                'variable' => '1',
                'type' => '13',
                'subject' => 'Tikiri - Sua senha foi alterada com sucesso',
                'message' => 'Olá {!!$user!!},<br /><br />Sua senha foi alterada com sucesso. Sua nova senha é : {!!$user_password!!}<br /><br />Obrigado.<br /><br />Atenciosamente,<br /> {!!$system_from!!}',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2016-12-12 23:19:52',
                'updated_at' => '2016-12-12 23:19:52',
            ),
            13 => 
            array (
                'id' => '14',
                'name' => 'Modelo para notificar os usuários quando seus ingressos forem mesclados.',
                'variable' => '1',
                'type' => '14',
                'subject' => 'Tikiri - Seus tickets foram mesclados.',
            'message' => '<p>Olá {!!$user!!},<br />&nbsp;</p><p>Seu(s) ticket(s) de número {!!$merged_ticket_numbers!!} foi fechado e&nbsp;mesclado com <a href="{!!$ticket_link!!}">{!!$ticket_number!!}</a>.&nbsp;</p><p>Possíveis razões para a mesclar tickets</p><ul><li>Os Tickets são duplicados</li<li>Tickets referen-se ao mesmo problema</li><li>Outro membro da sua organização criou um Ticket para o mesmo problema</li></ul><p><a href="{!!$system_link!!}">Clique aqui</a> para acessar sua conta e verificar os seus Tickets.</p><p>Atenciosamente,</p><p>{!!$system_from!!}</p>',
                'description' => '',
                'set_id' => '1',
                'created_at' => '2017-01-01 20:20:12',
                'updated_at' => '2017-01-01 20:31:50',
            ),
        ));
        
        
    }
}
