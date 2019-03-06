<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdContractAssetRelationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_contract_asset_relations', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('contract_id')->unsigned()->nullable()->index('sd_contract_asset_relations_contract_id_foreign');
			$table->integer('asset_id')->unsigned()->nullable()->index('sd_contract_asset_relations_asset_id_foreign');
			$table->timestamps();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('sd_contract_asset_relations');
	}

}
