<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGaBadgeEventsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('ga_badge_events', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('event_id')->index('event_id');
			$table->integer('badge_id')->index('badge_id');
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
		Schema::drop('ga_badge_events');
	}

}
