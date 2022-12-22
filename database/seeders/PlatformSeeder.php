<?php

namespace Database\Seeders;

use App\Models\Plataform;
use Illuminate\Database\Seeder;

class PlatformSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Plataform::create([
            'name' => 'Youtube'
        ]);

        Plataform::create([
            'name' => 'Vimeo'
        ]);
    }
}
