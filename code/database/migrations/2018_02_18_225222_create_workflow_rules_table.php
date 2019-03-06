<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWorkflowRulesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('workflow_rules', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('workflow_id')->unsigned()->index('workflow_rules_1');
			$table->string('matching_criteria');
			$table->string('matching_scenario');
			$table->string('matching_relation');
			$table->text('matching_value', 65535);
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
		Schema::drop('workflow_rules');
	}

}
