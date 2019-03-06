<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdChangeReleaseTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_change_release', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('change_id')->unsigned()->nullable()->index('sd_change_release_change_id_foreign');
			$table->integer('release_id')->unsigned()->nullable()->index('sd_change_release_release_id_foreign');
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
		Schema::drop('sd_change_release');
	}

}
