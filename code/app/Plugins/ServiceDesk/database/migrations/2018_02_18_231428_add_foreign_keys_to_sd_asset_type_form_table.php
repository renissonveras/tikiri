<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdAssetTypeFormTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_asset_type_form', function(Blueprint $table)
		{
			$table->foreign('asset_type_id')->references('id')->on('sd_asset_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('form_id')->references('id')->on('sd_forms')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_asset_type_form', function(Blueprint $table)
		{
			$table->dropForeign('sd_asset_type_form_asset_type_id_foreign');
			$table->dropForeign('sd_asset_type_form_form_id_foreign');
		});
	}

}
