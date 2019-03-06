<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdProductsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_products', function(Blueprint $table)
		{
			$table->foreign('product_mode_procurement_id')->references('id')->on('sd_product_proc_mode')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('product_status_id')->references('id')->on('sd_product_status')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_products', function(Blueprint $table)
		{
			$table->dropForeign('sd_products_product_mode_procurement_id_foreign');
			$table->dropForeign('sd_products_product_status_id_foreign');
		});
	}

}
