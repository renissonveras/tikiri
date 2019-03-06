<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdProductsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_products', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name');
			$table->string('description');
			$table->string('manufacturer');
			$table->integer('product_status_id')->unsigned()->nullable()->index('sd_products_product_status_id_foreign');
			$table->integer('product_mode_procurement_id')->unsigned()->nullable()->index('sd_products_product_mode_procurement_id_foreign');
			$table->integer('all_department')->nullable();
			$table->integer('status')->nullable();
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
		Schema::drop('sd_products');
	}

}
