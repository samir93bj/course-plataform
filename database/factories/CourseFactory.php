<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Course;
use App\Models\level;
use App\Models\Price;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

use Illuminate\Support\Str;

class CourseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        $title = $this->faker->sentence();

        return [
            'title' => $this->faker->sentence(),
            'subtitle' => $this->faker->sentence(),
            'description' => $this->faker->paragraph(),
            'status' => $this->faker->randomElement([Course::BORRADOR, course::REVISION, Course::PUBLICADO]),
            'slug' => Str::slug($title),
            'user_id' => User::all()->random()->id,
            'level_id' => level::all()->random()->id,
            'category_id' => Category::all()->random()->id,
            'price_id' => Price::all()->random()->id
        ];
}}
