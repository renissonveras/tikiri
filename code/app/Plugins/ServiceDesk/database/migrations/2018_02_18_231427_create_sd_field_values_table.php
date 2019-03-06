<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdFieldValuesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_field_values', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('field_id')->unsigned()->nullable()->index('sd_field_values_field_id_foreign');
			$table->string('option');
			$table->string('value');
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
		Schema::drop('sd_field_values');
	}

}
