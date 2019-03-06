<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdFieldValuesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_field_values', function(Blueprint $table)
		{
			$table->foreign('field_id')->references('id')->on('sd_form_fields')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_field_values', function(Blueprint $table)
		{
			$table->dropForeign('sd_field_values_field_id_foreign');
		});
	}

}
