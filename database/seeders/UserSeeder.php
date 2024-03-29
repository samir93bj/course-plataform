<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'samir',
            'email' => 'admin@admin.com',
            'password' => bcrypt('adminadmin')
        ]);

        User::factory(99)->create();
    }
}
