<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSdContractsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sd_contracts', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name');
			$table->string('description');
			$table->string('cost');
			$table->integer('contract_type_id')->unsigned()->nullable()->index('sd_contracts_contract_type_id_foreign');
			$table->integer('approver_id')->unsigned()->nullable()->index('sd_contracts_approver_id_foreign');
			$table->integer('vendor_id')->unsigned()->nullable()->index('sd_contracts_vendor_id_foreign');
			$table->integer('license_type_id')->unsigned()->nullable()->index('sd_contracts_license_type_id_foreign');
			$table->integer('licensce_count');
			$table->integer('product_id')->unsigned()->nullable()->index('sd_contracts_product_id_foreign');
			$table->dateTime('notify_expiry')->nullable();
			$table->dateTime('contract_start_date')->nullable();
			$table->dateTime('contract_end_date')->nullable();
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
		Schema::drop('sd_contracts');
	}

}
