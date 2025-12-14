<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;


class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $location_name = ['Tangerang', 'Jakarta', 'BSD'];

        for($i=0; $i<count($location_name); $i++){
            \DB::table('locations')->insert([
                'location_name' => $location_name[$i],
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}