<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWorkflowActionTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('workflow_action', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('workflow_id')->unsigned()->index('workflow_action_1');
			$table->string('condition');
			$table->string('action');
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
		Schema::drop('workflow_action');
	}

}
