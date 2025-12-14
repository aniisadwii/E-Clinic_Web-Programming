<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class SpecializationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $specs = ['General Practitioner', 'ENT Specialist', 'Dentist', 'Pediatrician', 'Internal Medicine Specialist', 'Dermatologist', 'Cardiologist', 'Neurologist', 'Obstetrician & Gynecologist', 'Ophthalmologist',];


        for($i=0; $i<count($specs); $i++){
            \DB::table('specializations')->insert([
                'specialization_name' => $specs[$i],
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}