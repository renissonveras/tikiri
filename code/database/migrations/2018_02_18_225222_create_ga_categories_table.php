<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGaCategoriesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ga_categories', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('title', 100);
			$table->string('shorttitle', 50)->nullable();
			$table->text('description', 65535)->nullable();
			$table->integer('type_id')->default(0)->index('type_id');
			$table->smallInteger('priority')->default(0);
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
		Schema::drop('ga_categories');
	}

}
