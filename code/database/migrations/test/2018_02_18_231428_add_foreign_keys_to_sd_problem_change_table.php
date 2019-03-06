<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdProblemChangeTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_problem_change', function(Blueprint $table)
		{
			$table->foreign('change_id')->references('id')->on('sd_changes')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('problem_id')->references('id')->on('sd_problem')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_problem_change', function(Blueprint $table)
		{
			$table->dropForeign('sd_problem_change_change_id_foreign');
			$table->dropForeign('sd_problem_change_problem_id_foreign');
		});
	}

}
