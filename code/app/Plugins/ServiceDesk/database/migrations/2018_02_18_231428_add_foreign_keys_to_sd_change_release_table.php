<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdChangeReleaseTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_change_release', function(Blueprint $table)
		{
			$table->foreign('change_id')->references('id')->on('sd_changes')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('release_id')->references('id')->on('sd_releases')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_change_release', function(Blueprint $table)
		{
			$table->dropForeign('sd_change_release_change_id_foreign');
			$table->dropForeign('sd_change_release_release_id_foreign');
		});
	}

}
