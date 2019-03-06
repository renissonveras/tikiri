<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGaBadgesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ga_badges', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('title', 100);
			$table->text('description', 65535)->nullable();
			$table->string('icon', 150)->nullable();
			$table->string('icon_sm', 150)->nullable();
			$table->string('icon_lg', 150)->nullable();
			$table->integer('category_id')->index('category_id');
			$table->integer('type_id')->default(0)->index('type_id');
			$table->string('icon_css', 200)->nullable();
			$table->smallInteger('priority')->default(0);
			$table->integer('credits')->default(0);
			$table->integer('xp')->default(0);
			$table->float('price', 10, 0)->default(0);
			$table->text('notification', 65535)->nullable();
			$table->boolean('isdeduct')->default(0);
			$table->smallInteger('ilevel')->default(0);
			$table->boolean('ishide')->default(0);
			$table->boolean('ismultiple')->default(0);
			$table->boolean('isactive')->default(0);
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
		Schema::drop('ga_badges');
	}

}
