<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use App\Post;
use Auth;

class CommentController extends Controller
{
     public function store(Request $request)
    {
        // $comment = new Comment;
        // $comment->body = $request->get('comment_body');
        // $comment->user()->associate($request->user());
        // $post = Post::find($request->get('post_id'));
        // $post->comments()->save($comment);
         // `user_id`, `parent_id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at` 
        $comment=new Comment;
        $comment->user_id = Auth::user()->id;
        $comment->body = $request->comment_body;
        $comment->commentable_id = $request->post_id;
        $comment->commentable_type = 'App\Post';
        $comment->save();

        return back();
    }

    public function replyStore(Request $request)
    {
    	$reply = new Comment();
        $reply->body = $request->get('comment_body');
        $reply->user()->associate($request->user());
        $reply->parent_id = $request->get('comment_id');
        $post = Post::find($request->get('post_id'));

        $post->comments()->save($reply);

        return back();
    }















}
