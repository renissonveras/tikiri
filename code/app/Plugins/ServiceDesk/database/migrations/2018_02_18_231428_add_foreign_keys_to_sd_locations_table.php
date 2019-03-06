<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdLocationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_locations', function(Blueprint $table)
		{
			$table->foreign('location_category_id')->references('id')->on('sd_location_categories')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_locations', function(Blueprint $table)
		{
			$table->dropForeign('sd_locations_location_category_id_foreign');
		});
	}

}
