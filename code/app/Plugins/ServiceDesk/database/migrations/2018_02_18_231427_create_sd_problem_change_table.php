<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdProblemChangeTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_problem_change', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('problem_id')->unsigned()->nullable()->index('sd_problem_change_problem_id_foreign');
			$table->integer('change_id')->unsigned()->nullable()->index('sd_problem_change_change_id_foreign');
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
		Schema::drop('sd_problem_change');
	}

}
