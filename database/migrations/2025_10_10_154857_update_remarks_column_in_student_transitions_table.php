<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('student_transition', function (Blueprint $table) {
            $table->longText('remark')->nullable()->change();
        });
    }

    public function down(): void
    {
        Schema::table('student_transition', function (Blueprint $table) {
            $table->string('remark', 255)->nullable()->change();
        });
    }
};
