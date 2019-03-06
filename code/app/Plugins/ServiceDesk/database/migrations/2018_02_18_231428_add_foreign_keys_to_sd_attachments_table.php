<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdAttachmentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_attachments', function(Blueprint $table)
		{
			$table->foreign('saved')->references('id')->on('sd_attachment_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_attachments', function(Blueprint $table)
		{
			$table->dropForeign('sd_attachments_saved_foreign');
		});
	}

}
