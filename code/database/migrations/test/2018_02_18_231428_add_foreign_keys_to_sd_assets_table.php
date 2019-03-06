<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdAssetsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_assets', function(Blueprint $table)
		{
			$table->foreign('asset_type_id')->references('id')->on('sd_asset_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('attachment')->references('id')->on('sd_attachments')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('department_id')->references('id')->on('department')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('impact_type_id')->references('id')->on('sd_impact_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('location_id')->references('id')->on('sd_locations')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('managed_by')->references('id')->on('users')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('product_id')->references('id')->on('sd_products')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('used_by')->references('id')->on('users')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_assets', function(Blueprint $table)
		{
			$table->dropForeign('sd_assets_asset_type_id_foreign');
			$table->dropForeign('sd_assets_attachment_foreign');
			$table->dropForeign('sd_assets_department_id_foreign');
			$table->dropForeign('sd_assets_impact_type_id_foreign');
			$table->dropForeign('sd_assets_location_id_foreign');
			$table->dropForeign('sd_assets_managed_by_foreign');
			$table->dropForeign('sd_assets_product_id_foreign');
			$table->dropForeign('sd_assets_used_by_foreign');
		});
	}

}
