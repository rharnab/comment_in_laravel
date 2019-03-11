<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
class PostController extends Controller
{
    public function __construct()
    {
    	return $this->middleware('auth');
    }
    public function index()
    {
        $posts=Post::all();
        return view('index')->with('posts', $posts);
    }

    public function create()
    {
    	return view('post');
    }

    public function store(Request $request)
    {
       $post=new Post;
       $post->title=$request->title;
       $post->body=$request->body;
       $post->save();
       return redirect('posts');
    }
    public function show($id)
    {
        $post=Post::find($id);
        return view('show')->with('post', $post);
    }

}
