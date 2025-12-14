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
        Schema::create('doctors', function (Blueprint $table) {
            $table->id('doctor_id');
            $table->string('doctor_name', 50);
            $table->string('photo_url');
            $table->text('description');
            $table->unsignedBigInteger('specialization_id');
            $table->unsignedBigInteger('location_id');
            $table->timestamps();

            $table->foreign('specialization_id')->references('specialization_id')->on('specializations')->onDelete('cascade'); 
            $table->foreign('location_id')->references('location_id')->on('locations')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('doctors');
    }
};
