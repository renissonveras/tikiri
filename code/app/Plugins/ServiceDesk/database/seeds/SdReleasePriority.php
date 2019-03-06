<?php

namespace App\Plugins\ServiceDesk\database\seeds;

use Illuminate\Database\Seeder;
use DB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class SdReleasePriority extends Seeder {

    public function run() {
        $created_at = date('Y-d-m H:m:i');
        $updated_at = date('Y-d-m H:m:i');

        DB::table('sd_release_priorities')
                ->insert(['name' => 'Baixo',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        DB::table('sd_release_priorities')
                ->insert(['name' => 'Média',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        DB::table('sd_release_priorities')
                ->insert(['name' => 'Alta',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        DB::table('sd_release_priorities')
                ->insert(['name' => 'Urgente',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        
        
    }

}
