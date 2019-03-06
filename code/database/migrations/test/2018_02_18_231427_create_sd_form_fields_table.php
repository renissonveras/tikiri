<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdFormFieldsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_form_fields', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name');
			$table->string('label');
			$table->integer('form_id')->unsigned()->nullable()->index('sd_form_fields_form_id_foreign');
			$table->string('type');
			$table->string('sub_type');
			$table->string('class');
			$table->string('is_required');
			$table->string('placeholder');
			$table->string('description');
			$table->string('multiple');
			$table->integer('role');
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
		Schema::drop('sd_form_fields');
	}

}
