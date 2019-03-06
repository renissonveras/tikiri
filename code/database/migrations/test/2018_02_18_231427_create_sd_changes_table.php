<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdChangesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_changes', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('description');
			$table->string('subject');
			$table->integer('requester')->unsigned()->nullable()->index('sd_changes_requester_foreign');
			$table->integer('status_id')->unsigned()->nullable()->index('sd_changes_status_id_foreign');
			$table->integer('priority_id')->unsigned()->nullable()->index('sd_changes_priority_id_foreign');
			$table->integer('change_type_id')->unsigned()->nullable()->index('sd_changes_change_type_id_foreign');
			$table->integer('impact_id')->unsigned()->nullable()->index('sd_changes_impact_id_foreign');
			$table->integer('location_id')->unsigned()->nullable()->index('sd_changes_location_id_foreign');
			$table->integer('approval_id')->unsigned()->nullable()->index('sd_changes_approval_id_foreign');
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
		Schema::drop('sd_changes');
	}

}
