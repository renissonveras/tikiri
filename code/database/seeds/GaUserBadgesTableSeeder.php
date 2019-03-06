<?php

use Illuminate\Database\Seeder;

class GaUserBadgesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('ga_user_badges')->delete();
        
        \DB::table('ga_user_badges')->insert(array (
            0 => 
            array (
                'id' => '1',
                'user_id' => '1',
                'badge_id' => '20',
                'type_id' => '3',
                'added_date' => '2018-02-17 03:04:48',
                'added_user_id' => '1',
                'acumulated_xp' => '20',
                'acumulated_credits' => '0',
                'deducted_xp' => '0',
                'deducted_credits' => '0',
                'total_credits_in_moment' => '0',
                'total_xp_in_moment' => '20',
                'created_at' => '2018-02-17 03:04:48',
                'updated_at' => '2018-02-17 03:04:48',
            ),
            1 => 
            array (
                'id' => '2',
                'user_id' => '1',
                'badge_id' => '20',
                'type_id' => '3',
                'added_date' => '2018-02-17 12:57:32',
                'added_user_id' => '1',
                'acumulated_xp' => '20',
                'acumulated_credits' => '0',
                'deducted_xp' => '0',
                'deducted_credits' => '0',
                'total_credits_in_moment' => '0',
                'total_xp_in_moment' => '40',
                'created_at' => '2018-02-17 12:57:32',
                'updated_at' => '2018-02-17 12:57:32',
            ),
            2 => 
            array (
                'id' => '3',
                'user_id' => '1',
                'badge_id' => '20',
                'type_id' => '3',
                'added_date' => '2018-02-17 13:00:55',
                'added_user_id' => '1',
                'acumulated_xp' => '20',
                'acumulated_credits' => '0',
                'deducted_xp' => '0',
                'deducted_credits' => '0',
                'total_credits_in_moment' => '0',
                'total_xp_in_moment' => '60',
                'created_at' => '2018-02-17 13:00:55',
                'updated_at' => '2018-02-17 13:00:55',
            ),
            3 => 
            array (
                'id' => '4',
                'user_id' => '1',
                'badge_id' => '27',
                'type_id' => '3',
                'added_date' => '2018-02-17 16:52:44',
                'added_user_id' => '1',
                'acumulated_xp' => '10',
                'acumulated_credits' => '0',
                'deducted_xp' => '0',
                'deducted_credits' => '0',
                'total_credits_in_moment' => '0',
                'total_xp_in_moment' => '70',
                'created_at' => '2018-02-17 16:52:44',
                'updated_at' => '2018-02-17 16:52:44',
            ),
            4 => 
            array (
                'id' => '5',
                'user_id' => '1',
                'badge_id' => '27',
                'type_id' => '3',
                'added_date' => '2018-02-17 17:05:51',
                'added_user_id' => '1',
                'acumulated_xp' => '10',
                'acumulated_credits' => '0',
                'deducted_xp' => '0',
                'deducted_credits' => '0',
                'total_credits_in_moment' => '0',
                'total_xp_in_moment' => '80',
                'created_at' => '2018-02-17 17:05:51',
                'updated_at' => '2018-02-17 17:05:51',
            ),
        ));
        
        
    }
}
