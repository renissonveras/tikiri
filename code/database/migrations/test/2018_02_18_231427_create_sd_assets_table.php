<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdAssetsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_assets', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name');
			$table->string('external_id')->unique();
			$table->integer('organization')->nullable();
			$table->string('description');
			$table->integer('department_id')->unsigned()->nullable()->index('sd_assets_department_id_foreign');
			$table->integer('asset_type_id')->unsigned()->nullable()->index('sd_assets_asset_type_id_foreign');
			$table->integer('product_id')->unsigned()->nullable()->index('sd_assets_product_id_foreign');
			$table->integer('impact_type_id')->unsigned()->nullable()->index('sd_assets_impact_type_id_foreign');
			$table->integer('managed_by')->unsigned()->nullable()->index('sd_assets_managed_by_foreign');
			$table->integer('used_by')->unsigned()->nullable()->index('sd_assets_used_by_foreign');
			$table->integer('attachment')->unsigned()->nullable()->index('sd_assets_attachment_foreign');
			$table->integer('location_id')->unsigned()->nullable()->index('sd_assets_location_id_foreign');
			$table->timestamp('assigned_on')->default(DB::raw('CURRENT_TIMESTAMP'));
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
		Schema::drop('sd_assets');
	}

}
