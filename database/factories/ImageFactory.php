<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ImageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //'url' => 'cursos/' . $this->faker->image('public/storage/cursos','animals', 640, 480, null, false),
            'url' => $this->faker->imageUrl(640, 480, 'animals', true),
            'imageable_id' => null,
            'imageable_id' => null
        ];
    }
}
