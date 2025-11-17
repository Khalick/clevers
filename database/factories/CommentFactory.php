<?php

namespace Database\Factories;

use App\Models\Comment;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Carbon;

class CommentFactory extends Factory
{
    protected $model = Comment::class;

    public function definition(): array
    {
        return [
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
            'comment' => $this->faker->word(),
            'approved' => $this->faker->boolean(),
            'isReply' => $this->faker->boolean(),
            'userId' => $this->faker->randomNumber(),
            'userName' => $this->faker->userName(),
            'email' => $this->faker->unique()->safeEmail(),
            'postId' => $this->faker->randomNumber(),
            'parentId' => $this->faker->randomNumber(),
        ];
    }
}
