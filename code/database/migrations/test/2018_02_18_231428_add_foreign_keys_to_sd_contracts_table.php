<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddForeignKeysToSdContractsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('sd_contracts', function(Blueprint $table)
		{
			$table->foreign('approver_id')->references('id')->on('sd_cab')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('contract_type_id')->references('id')->on('sd_contract_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('license_type_id')->references('id')->on('sd_license_types')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('product_id')->references('id')->on('sd_products')->onUpdate('RESTRICT')->onDelete('RESTRICT');
			$table->foreign('vendor_id')->references('id')->on('sd_vendors')->onUpdate('RESTRICT')->onDelete('RESTRICT');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('sd_contracts', function(Blueprint $table)
		{
			$table->dropForeign('sd_contracts_approver_id_foreign');
			$table->dropForeign('sd_contracts_contract_type_id_foreign');
			$table->dropForeign('sd_contracts_license_type_id_foreign');
			$table->dropForeign('sd_contracts_product_id_foreign');
			$table->dropForeign('sd_contracts_vendor_id_foreign');
		});
	}

}
