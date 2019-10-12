<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

class PublicController extends Controller
{
    public function index(){
      $posts = Post::paginate(5);

      return view('welcome', compact('posts'));
    }

    public function simplePost(Post $post){
      return view('singlePost', compact('post'));
    }

    public function about(){
      return view('about');
    }

    public function contact(){
      return view('contact');
    }

    public function contactPost(){

    }
}
