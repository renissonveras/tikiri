<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToWorkflowRulesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('workflow_rules', function(Blueprint $table)
		{
			$table->foreign('workflow_id', 'workflow_rules_1')->references('id')->on('workflow_name')->onUpdate('NO ACTION')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('workflow_rules', function(Blueprint $table)
		{
			$table->dropForeign('workflow_rules_1');
		});
	}

}
