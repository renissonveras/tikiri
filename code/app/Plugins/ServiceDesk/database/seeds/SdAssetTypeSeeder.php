<?php

namespace App\Plugins\ServiceDesk\database\seeds;

use Illuminate\Database\Seeder;
use DB;

class SdAssetTypeSeeder extends Seeder {

	public function run() {

		$types = [['name' => 'Serviços', 'parent_id' => ''],
			['name' => 'Cloud', 'parent_id' => ''],
			['name' => 'Hardware', 'parent_id' => ''],
			['name' => 'Software', 'parent_id' => ''],
			['name' => 'Materiais', 'parent_id' => ''],
			['name' => 'Rede', 'parent_id' => ''],
			['name' => 'Documentos', 'parent_id' => ''],
			['name' => 'Outros', 'parent_id' => ''],
			['name' => 'Serviço de Negócio', 'parent_id' => 1],
			['name' => 'Serviço de TI', 'parent_id' => 1],
			['name' => 'Serviço de Venda', 'parent_id' => 9],
			['name' => 'Serviço de Suporte', 'parent_id' => 9],
			['name' => 'Serviço de Email ', 'parent_id' => 10],
			['name' => 'Serviço de Backup', 'parent_id' => 10],
			['name' => 'Serviço de Hosting', 'parent_id' => 10],
			['name' => 'AWS', 'parent_id' => 2],
			['name' => 'EC2', 'parent_id' => 16],
			['name' => 'RDS', 'parent_id' => 16],
			['name' => 'EBS', 'parent_id' => 16],
			['name' => 'Computador', 'parent_id' => 3],
			['name' => 'Storage', 'parent_id' => 3],
			['name' => 'Data Center', 'parent_id' => 3],
			['name' => 'Dispositivos Móveis', 'parent_id' => 3],
			['name' => 'Monitor', 'parent_id' => 3],
			['name' => 'Impressora', 'parent_id' => 3],
			['name' => 'Projetor', 'parent_id' => 3],
			['name' => 'Scanner', 'parent_id' => 3],
			['name' => 'Router', 'parent_id' => 3],
			['name' => 'Switch', 'parent_id' => 3],
			['name' => 'Access Point', 'parent_id' => 3],
			['name' => 'Firewall', 'parent_id' => 3],
			['name' => 'Outros Dispositivos', 'parent_id' => 3],
			['name' => 'Desktop', 'parent_id' => 20],
			['name' => 'Laptop', 'parent_id' => 20],
			['name' => 'Servidor', 'parent_id' => 20],
			['name' => 'Servidor Unix', 'parent_id' => 35],
			['name' => 'Servidor Solaris', 'parent_id' => 35],
			['name' => 'Servidor Aix', 'parent_id' => 35],
			['name' => 'Servidor VMware', 'parent_id' => 35],
			['name' => 'Servidor Windows', 'parent_id' => 35],
			['name' => 'Disco', 'parent_id' => 21],
		];
		//dd(count($types));
		for ($i = 0; $i < count($types); $i++) {
			$n = $i + 1;
			$created_at = date('Y-d-m H:m:i');
			$updated_at = date('Y-d-m H:m:i');
			if ($types[$i]) {
				DB::table('sd_asset_types')->insert(['id' => $n, 'name' => $types[$i]['name'], 'parent_id' => $types[$i]['parent_id'],
					'created_at' => $created_at, 'updated_at' => $updated_at,
				]);
			}
		}
	}

}
