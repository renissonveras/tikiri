<?php

use Illuminate\Database\Seeder;

class SettingsAlertNoticeTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('settings_alert_notice')->delete();
        
        \DB::table('settings_alert_notice')->insert(array (
            0 => 
            array (
                'id' => '1',
                'ticket_status' => '1',
                'ticket_admin_email' => '1',
                'ticket_department_manager' => '0',
                'ticket_department_member' => '0',
                'ticket_organization_accmanager' => '0',
                'message_status' => '0',
                'message_last_responder' => '0',
                'message_assigned_agent' => '0',
                'message_department_manager' => '0',
                'message_organization_accmanager' => '0',
                'internal_status' => '0',
                'internal_last_responder' => '0',
                'internal_assigned_agent' => '0',
                'internal_department_manager' => '0',
                'assignment_status' => '1',
                'assignment_assigned_agent' => '1',
                'assignment_team_leader' => '0',
                'assignment_team_member' => '0',
                'transfer_status' => '0',
                'transfer_assigned_agent' => '0',
                'transfer_department_manager' => '0',
                'transfer_department_member' => '0',
                'overdue_status' => '0',
                'overdue_assigned_agent' => '0',
                'overdue_department_manager' => '0',
                'overdue_department_member' => '0',
                'system_error' => '0',
                'sql_error' => '0',
                'excessive_failure' => '0',
                'created_at' => '2016-12-12 23:19:29',
                'updated_at' => '2016-12-12 23:19:29',
            ),
        ));
        
        
    }
}
