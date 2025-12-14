<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DoctorController;

Route::get('/', [DoctorController::class, 'index'])->name('home');
Route::get('/doctors/{id}', [DoctorController::class, 'show'])->name('doctors.show');
Route::get('/doctors/location/{name}', [DoctorController::class, 'filterByLocation'])->name('doctors.byLocation');
Route::get('/about', function () {
    return view('about');
})->name('about');