<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => '1',
                'user_name' => 'admin',
                'first_name' => 'Tikiri',
                'last_name' => 'Admin',
                'gender' => '1',
                'email' => 'demoadmin@tikiri.com.br',
                'ban' => '0',
                'password' => '$2y$10$VkTfzaICqiie8dDx4i1K.O3yX48MkyLiPjt098u1ImchZEj6DpzA6',
                'active' => '1',
                'is_delete' => '0',
                'ext' => '',
                'country_code' => '0',
                'phone_number' => '',
                'mobile' => NULL,
                'agent_sign' => '',
                'account_type' => '',
                'account_status' => '',
                'assign_group' => '1',
                'primary_dpt' => '1',
                'agent_tzone' => '6',
                'daylight_save' => '',
                'limit_access' => '',
                'directory_listing' => '',
                'vacation_mode' => '',
                'company' => '',
                'role' => 'admin',
                'internal_note' => '',
                'profile_pic' => '8483.admin.png',
                'remember_token' => 'K4Fmi1aSuYjRBJvKgjobpPiJnke7Fk4OXTgKCnR9l4PznfUYMOWa6nq8dv3k',
                'created_at' => '2016-12-12 23:19:53',
                'updated_at' => '2018-02-17 02:51:50',
            ),
            1 => 
            array (
                'id' => '2',
                'user_name' => 'atendente',
                'first_name' => 'Carlos',
                'last_name' => 'Atendente',
                'gender' => '1',
                'email' => 'demoatendente@tikiri.com.br',
                'ban' => '1',
                'password' => '$2y$10$F1pTkzoLFpny95xDalbareSlAswWNqgVauyvH47s8Co2kk1wFzN3G',
                'active' => '1',
                'is_delete' => '0',
                'ext' => '',
                'country_code' => '0',
                'phone_number' => '',
                'mobile' => NULL,
                'agent_sign' => '',
                'account_type' => '',
                'account_status' => '',
                'assign_group' => '1',
                'primary_dpt' => '1',
                'agent_tzone' => '6',
                'daylight_save' => '',
                'limit_access' => '',
                'directory_listing' => '',
                'vacation_mode' => '',
                'company' => '',
                'role' => 'agent',
                'internal_note' => '',
                'profile_pic' => '6528.if_8_2694142.png',
                'remember_token' => 'iVh9JN8iif5gqKJEnABEDqTvuMiMDa6j8LGhbffYFwv7NjUDCSTIGLCvCndo',
                'created_at' => '2016-12-12 23:32:41',
                'updated_at' => '2017-11-20 20:47:09',
            ),
            2 => 
            array (
                'id' => '3',
                'user_name' => 'jose',
                'first_name' => 'José',
                'last_name' => 'Atendente',
                'gender' => '1',
                'email' => 'demoatendente2@tikiri.com.br',
                'ban' => '0',
                'password' => '$2y$10$gsbQAupQBgOW6NOc51oTD.vhYynXxz/GJCqYuUCxi08bqa/dh9QN6',
                'active' => '1',
                'is_delete' => '0',
                'ext' => '',
                'country_code' => '0',
                'phone_number' => '',
                'mobile' => NULL,
                'agent_sign' => '',
                'account_type' => '',
                'account_status' => '',
                'assign_group' => '2',
                'primary_dpt' => '2',
                'agent_tzone' => '6',
                'daylight_save' => '',
                'limit_access' => '',
                'directory_listing' => '',
                'vacation_mode' => '',
                'company' => '',
                'role' => 'agent',
                'internal_note' => '',
                'profile_pic' => '4514.if_8_2694142.png',
                'remember_token' => '4UWy8h8QceB69Vru1lxvz1ViAZTMYHKpKTaGraqaHZca540U5h73yqPcvPGr',
                'created_at' => '2016-12-12 23:35:29',
                'updated_at' => '2017-11-10 03:26:38',
            ),
            3 => 
            array (
                'id' => '4',
                'user_name' => 'cliente',
                'first_name' => 'Pedro',
                'last_name' => 'Cliente',
                'gender' => '1',
                'email' => 'cliente@tikiri.com.br',
                'ban' => '1',
                'password' => '$2y$10$qphk0McJKrDaYHqgmBB.Y.1QqdDxK9FOpR6B06yRcOk6byj9Z4xRK',
                'active' => '1',
                'is_delete' => '0',
                'ext' => '',
                'country_code' => '95',
                'phone_number' => '2914',
                'mobile' => '981128113',
                'agent_sign' => '',
                'account_type' => '',
                'account_status' => '',
                'assign_group' => NULL,
                'primary_dpt' => NULL,
                'agent_tzone' => '',
                'daylight_save' => '',
                'limit_access' => '',
                'directory_listing' => '',
                'vacation_mode' => '',
                'company' => 'TKR Corp',
                'role' => 'user',
                'internal_note' => '',
                'profile_pic' => '4925.cliente.png',
                'remember_token' => 'gxemcwKiWxF8IM4ocIbcoYikA4qUptTvc4JRqQYq8xJcWVkWO74ES2Sj9Xcs',
                'created_at' => '2016-12-12 23:45:19',
                'updated_at' => '2017-11-17 22:26:15',
            ),
        ));
        
        
    }
}
