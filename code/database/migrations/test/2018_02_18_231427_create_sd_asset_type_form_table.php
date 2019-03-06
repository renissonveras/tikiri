<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdAssetTypeFormTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_asset_type_form', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('asset_type_id')->unsigned()->nullable()->index('sd_asset_type_form_asset_type_id_foreign');
			$table->integer('form_id')->unsigned()->nullable()->index('sd_asset_type_form_form_id_foreign');
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
		Schema::drop('sd_asset_type_form');
	}

}
