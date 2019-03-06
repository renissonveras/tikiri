<?php

namespace App\Plugins\ServiceDesk\database\seeds;

use Illuminate\Database\Seeder;
use DB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class SdReleaseStatus extends Seeder {

    public function run() {
        $created_at = date('Y-d-m H:m:i');
        $updated_at = date('Y-d-m H:m:i');

        DB::table('sd_release_status')
                ->insert(['name' => 'Aberta',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        DB::table('sd_release_status')
                ->insert(['name' => 'Em Espera',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        DB::table('sd_release_status')
                ->insert(['name' => 'Em Progresso',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        DB::table('sd_release_status')
                ->insert(['name' => 'Incompleta',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        DB::table('sd_release_status')
                ->insert(['name' => 'Completa',
                    'created_at' => $created_at,
                    'updated_at' => $updated_at,
        ]);
        
    }

}
