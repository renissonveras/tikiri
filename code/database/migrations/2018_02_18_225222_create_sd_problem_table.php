<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdProblemTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_problem', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('from');
			$table->string('subject');
			$table->string('department');
			$table->string('description');
			$table->integer('status_type_id')->unsigned()->nullable();
			$table->integer('priority_id')->unsigned()->nullable();
			$table->integer('impact_id')->unsigned()->nullable();
			$table->integer('location_type_id')->unsigned()->nullable();
			$table->integer('group_id')->unsigned()->nullable();
			$table->integer('agent_id')->unsigned()->nullable();
			$table->integer('assigned_id')->unsigned()->nullable();
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
		Schema::drop('sd_problem');
	}

}
