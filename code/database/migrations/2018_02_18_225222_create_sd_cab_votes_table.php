<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdCabVotesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_cab_votes', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('cab_id')->unsigned()->nullable()->index('sd_cab_votes_cab_id_foreign');
			$table->integer('user_id')->unsigned()->nullable()->index('sd_cab_votes_user_id_foreign');
			$table->string('comment');
			$table->string('owner');
			$table->integer('vote');
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
		Schema::drop('sd_cab_votes');
	}

}
