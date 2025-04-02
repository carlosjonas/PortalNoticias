<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Category;
use App\Models\User;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\News>
 */
class NewsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "category_id" => Category::all()->random(1)->first()->id,
            "id_user" => User::all()->random(1)->first()->id,
            "title" => $this->faker->sentence,
            "subtitle" => $this->faker->sentence,
            "text" => $this->faker->text,
            "cover" => $this->faker->imageUrl,
        ];
    }
}
