<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGaLevelAssociateTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ga_level_associate', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('level_id')->index('level_id');
			$table->integer('reward_id')->index('reward_id');
			$table->text('description', 65535);
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
		Schema::drop('ga_level_associate');
	}

}
