<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdReleasesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_releases', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('description');
			$table->string('subject');
			$table->dateTime('planned_start_date')->nullable();
			$table->dateTime('planned_end_date')->nullable();
			$table->integer('status_id')->unsigned()->nullable()->index('sd_releases_status_id_foreign');
			$table->integer('priority_id')->unsigned()->nullable()->index('sd_releases_priority_id_foreign');
			$table->integer('release_type_id')->unsigned()->nullable()->index('sd_releases_release_type_id_foreign');
			$table->integer('location_id')->unsigned()->nullable()->index('sd_releases_location_id_foreign');
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
		Schema::drop('sd_releases');
	}

}
