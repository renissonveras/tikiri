<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdChangesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_changes', function(Blueprint $table)
		{
			$table->foreign('approval_id')->references('id')->on('sd_cab')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('change_type_id')->references('id')->on('sd_change_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('impact_id')->references('id')->on('sd_impact_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('location_id')->references('id')->on('sd_locations')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('priority_id')->references('id')->on('sd_change_priorities')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('requester')->references('id')->on('users')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('status_id')->references('id')->on('sd_change_status')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_changes', function(Blueprint $table)
		{
			$table->dropForeign('sd_changes_approval_id_foreign');
			$table->dropForeign('sd_changes_change_type_id_foreign');
			$table->dropForeign('sd_changes_impact_id_foreign');
			$table->dropForeign('sd_changes_location_id_foreign');
			$table->dropForeign('sd_changes_priority_id_foreign');
			$table->dropForeign('sd_changes_requester_foreign');
			$table->dropForeign('sd_changes_status_id_foreign');
		});
	}

}
