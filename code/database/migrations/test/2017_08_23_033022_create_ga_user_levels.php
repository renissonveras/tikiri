<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGaUserLevels extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ga_user_levels', function(Blueprint $table)
		{
			$table->integer('user_id')->index('user_id');
			$table->integer('levels')->default(0);
			$table->integer('points')->default(0);
			$table->integer('credits')->default(0);
			$table->integer('init_points')->default(0);
			$table->integer('max_points')->default(0);
			$table->integer('level_id')->default(0)->index('level_id');
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
		Schema::drop('ga_user_levels');
	}
}
