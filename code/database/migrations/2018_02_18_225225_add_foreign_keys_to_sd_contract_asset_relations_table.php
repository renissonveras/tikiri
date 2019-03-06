<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdContractAssetRelationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_contract_asset_relations', function(Blueprint $table)
		{
			$table->foreign('asset_id')->references('id')->on('sd_assets')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('contract_id')->references('id')->on('sd_contracts')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_contract_asset_relations', function(Blueprint $table)
		{
			$table->dropForeign('sd_contract_asset_relations_asset_id_foreign');
			$table->dropForeign('sd_contract_asset_relations_contract_id_foreign');
		});
	}

}
