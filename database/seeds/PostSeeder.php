<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('posts')->insert([
          ['user_id' => 1, 'title' => 'Post 1', 'content' => 'Post 1 Content'],
          ['user_id' => 1, 'title' => 'Post 2', 'content' => 'Post 2 Content'],
          ['user_id' => 1, 'title' => 'Post 3', 'content' => 'Post 3 Content']
        ]);
    }
}
