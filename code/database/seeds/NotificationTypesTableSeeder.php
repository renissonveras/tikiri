<?php

use Illuminate\Database\Seeder;

class NotificationTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('notification_types')->delete();
        
        \DB::table('notification_types')->insert(array (
            0 => 
            array (
                'id' => '1',
                'message' => 'Um usuário cadastrado',
                'type' => 'registration',
                'icon_class' => 'fa fa-user',
                'created_at' => '2016-12-12 23:19:14',
                'updated_at' => '2016-12-12 23:19:14',
            ),
            1 => 
            array (
                'id' => '2',
                'message' => 'Você tem uma nova resposta neste ticket',
                'type' => 'reply',
                'icon_class' => 'fa fa-envelope',
                'created_at' => '2016-12-12 23:19:14',
                'updated_at' => '2016-12-12 23:19:14',
            ),
            2 => 
            array (
                'id' => '3',
                'message' => 'Um novo ticket foi criado',
                'type' => 'new_ticket',
                'icon_class' => 'fa fa-envelope',
                'created_at' => '2016-12-12 23:19:14',
                'updated_at' => '2016-12-12 23:19:14',
            ),
            3 => 
            array (
                'id' => '4',
                'message' => 'Você acumulou pontos',
                'type' => 'game',
                'icon_class' => 'fa fa-shopping-basket',
                'created_at' => '2017-10-18 00:00:00',
                'updated_at' => '2017-10-18 00:00:00',
            ),
        ));
        
        
    }
}
