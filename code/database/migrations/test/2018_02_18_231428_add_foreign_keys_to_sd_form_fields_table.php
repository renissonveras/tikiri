<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdFormFieldsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_form_fields', function(Blueprint $table)
		{
			$table->foreign('form_id')->references('id')->on('sd_forms')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_form_fields', function(Blueprint $table)
		{
			$table->dropForeign('sd_form_fields_form_id_foreign');
		});
	}

}
