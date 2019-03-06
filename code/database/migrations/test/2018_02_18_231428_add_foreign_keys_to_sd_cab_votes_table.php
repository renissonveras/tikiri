<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdCabVotesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_cab_votes', function(Blueprint $table)
		{
			$table->foreign('cab_id')->references('id')->on('sd_cab')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('user_id')->references('id')->on('users')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_cab_votes', function(Blueprint $table)
		{
			$table->dropForeign('sd_cab_votes_cab_id_foreign');
			$table->dropForeign('sd_cab_votes_user_id_foreign');
		});
	}

}
