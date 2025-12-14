<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class DoctorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $locationIds = \DB::table('locations')->pluck('location_id')->toArray();
        $specializationIds = \DB::table('specializations')->pluck('specialization_id')->toArray();

        for ($i = 0; $i < 20; $i++) {
            $name = $faker->name;
            $photoUrl = 'https://thispersondoesnotexist.com/';

            \DB::table('doctors')->insert([
                'doctor_name' => 'Dr. ' . $name,
                'photo_url' => $photoUrl,
                'description' => $faker->sentence(10),
                'location_id' => $faker->randomElement($locationIds),
                'specialization_id' => $faker->randomElement($specializationIds),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}