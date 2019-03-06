<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToFieldValuesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('field_values', function(Blueprint $table)
		{
			$table->foreign('field_id')->references('id')->on('custom_form_fields')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('field_values', function(Blueprint $table)
		{
			$table->dropForeign('field_values_field_id_foreign');
		});
	}

}
