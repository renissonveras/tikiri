<?php

use Illuminate\Database\Seeder;

class GroupsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('groups')->delete();
        
        \DB::table('groups')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Grupo Nível A',
                'group_status' => '1',
                'can_create_ticket' => '1',
                'can_edit_ticket' => '1',
                'can_post_ticket' => '1',
                'can_close_ticket' => '1',
                'can_assign_ticket' => '1',
                'can_transfer_ticket' => '1',
                'can_delete_ticket' => '1',
                'can_ban_email' => '1',
                'can_manage_canned' => '0',
                'can_manage_faq' => '0',
                'can_view_agent_stats' => '0',
                'department_access' => '0',
                'admin_notes' => '',
                'created_at' => '2016-12-12 23:19:27',
                'updated_at' => '2017-10-26 18:42:59',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'Grupo Nível B',
                'group_status' => '1',
                'can_create_ticket' => '1',
                'can_edit_ticket' => '0',
                'can_post_ticket' => '0',
                'can_close_ticket' => '1',
                'can_assign_ticket' => '1',
                'can_transfer_ticket' => '1',
                'can_delete_ticket' => '1',
                'can_ban_email' => '1',
                'can_manage_canned' => '0',
                'can_manage_faq' => '0',
                'can_view_agent_stats' => '0',
                'department_access' => '0',
                'admin_notes' => '',
                'created_at' => '2016-12-12 23:19:27',
                'updated_at' => '2017-10-26 18:43:05',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'Grupo Nível C',
                'group_status' => '1',
                'can_create_ticket' => '0',
                'can_edit_ticket' => '0',
                'can_post_ticket' => '0',
                'can_close_ticket' => '1',
                'can_assign_ticket' => '0',
                'can_transfer_ticket' => '0',
                'can_delete_ticket' => '0',
                'can_ban_email' => '0',
                'can_manage_canned' => '0',
                'can_manage_faq' => '0',
                'can_view_agent_stats' => '0',
                'department_access' => '0',
                'admin_notes' => '',
                'created_at' => '2016-12-12 23:19:27',
                'updated_at' => '2017-10-26 18:43:13',
            ),
        ));
        
        
    }
}
