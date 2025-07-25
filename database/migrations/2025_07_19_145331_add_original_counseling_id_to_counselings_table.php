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
       Schema::table('counselings', function (Blueprint $table) {
            $table->unsignedBigInteger('original_counseling_id')->nullable()->after('id');

            $table->foreign('original_counseling_id')
                ->references('id')
                ->on('counselings')
                ->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('counselings', function (Blueprint $table) {
            //
        });
    }
};
