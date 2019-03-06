<?php

use Illuminate\Database\Seeder;

class TicketSourceTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ticket_source')->delete();
        
        \DB::table('ticket_source')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'web',
                'value' => 'Web',
                'css_class' => 'fa fa-internet-explorer',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'email',
                'value' => 'E-mail',
                'css_class' => 'fa fa-envelope',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'agent',
                'value' => 'Painel do Atendente',
                'css_class' => 'fa fa-envelope',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'facebook',
                'value' => 'Facebook',
                'css_class' => 'fa fa-facebook',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'twitter',
                'value' => 'Twitter',
                'css_class' => 'fa fa-twitter',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'call',
                'value' => 'Ligação',
                'css_class' => 'fa fa-phone',
            ),
            6 => 
            array (
                'id' => '7',
                'name' => 'chat',
                'value' => 'Chat',
                'css_class' => 'fa fa-comment',
            )
        ));
        
        
    }
}
