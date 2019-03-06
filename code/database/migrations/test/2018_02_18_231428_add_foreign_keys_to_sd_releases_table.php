<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdReleasesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_releases', function(Blueprint $table)
		{
			$table->foreign('location_id')->references('id')->on('sd_locations')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('priority_id')->references('id')->on('sd_release_priorities')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('release_type_id')->references('id')->on('sd_release_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('status_id')->references('id')->on('sd_release_status')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_releases', function(Blueprint $table)
		{
			$table->dropForeign('sd_releases_location_id_foreign');
			$table->dropForeign('sd_releases_priority_id_foreign');
			$table->dropForeign('sd_releases_release_type_id_foreign');
			$table->dropForeign('sd_releases_status_id_foreign');
		});
	}

}
