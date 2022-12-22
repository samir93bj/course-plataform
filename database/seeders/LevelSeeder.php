<?php

namespace Database\Seeders;

use App\Models\level;
use Illuminate\Database\Seeder;



class LevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        level::create([
            'name' => 'Nivel Basico'
        ]);

        level::create([
            'name' => 'Nivel Intermedio'
        ]);

        level::create([
            'name' => 'Nivel Avanzado'
        ]);
    }
}
