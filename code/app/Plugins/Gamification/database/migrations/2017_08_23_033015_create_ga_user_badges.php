<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGaUserBadges extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ga_user_badges', function(Blueprint $table)
        {
            $table->integer('id', true);
            $table->integer('user_id')->index('ga_user_badges_ibfk_1');
            $table->integer('badge_id')->index('ga_user_badges_ibfk_2');
            $table->integer('type_id')->default(0)->index('type_id');
            $table->dateTime('added_date');
            $table->integer('added_user_id')->nullable();
            $table->integer('acumulated_xp')->nullable();
            $table->integer('acumulated_credits')->nullable();
            $table->integer('deducted_xp')->nullable();
            $table->integer('deducted_credits')->nullable();
            $table->integer('total_credits_in_moment');
            $table->integer('total_xp_in_moment');
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
        Schema::drop('ga_user_badges');
    }
}
