<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        //
        Schema::table('applicants', function (Blueprint $table) {
            $table->string('lastName')->nullable()->change();
            $table->string('email')->nullable()->change();
            $table->string('phone')->nullable()->change();
            $table->string('idNumber')->nullable()->change();
            $table->string('gender')->nullable()->change();
            $table->string('religion')->nullable()->change();
            $table->string('county')->nullable()->change();
            $table->string('residence')->nullable()->change();
            $table->string('history')->nullable()->change();
            $table->date('dateOfBirth')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
