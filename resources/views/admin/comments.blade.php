@extends('layouts.admin')

@section('title')Admin Comments @endsection

@section('content')
<div class="content">
  <div class="card">
      <div class="card-header bg-light">
          Admin Comments
      </div>

      <div class="card-body">
          <div class="table-responsive">
              <table class="table">
                  <thead>
                  <tr>
                      <th>ID</th>
                      <th>Post</th>
                      <th>Content</th>
                      <th>Created at</th>
                      <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach($comments as $comment)
                      <tr>
                          <td>{{$comment->id}}</td>
                          <td class="text-nowrap"><a href="{{route('singlePost', $comment->id)}}">{{$comment->post->title}}</a></td>
                          <td>{{$comment->content}}</td>
                          <td>{{\Carbon\Carbon::parse($comment->created_at)->diffForHumans()}}</td>
                          <td>

                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteCommentModal-{{$comment->id}}">X</button>
                          </td>
                      </tr>
                    @endforeach

                  </tbody>
              </table>
          </div>
      </div>
  </div>
</div>

@foreach($comments as $comment)
<!-- Modal -->
<div class="modal fade" id="deleteCommentModal-{{$comment->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">You are about to delete coment for post {{$comment->post->title}}</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      Are you sure?
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">No i dont want to delete the Post</button>
      <form id="deleteComment-{{$comment->id}}" action="{{route('adminDeleteComment', $comment->id)}}" method="post">@csrf
        <button type="submit" class="btn btn-primary">Yes i want to delete.</button>
      </form>
    </div>
  </div>
</div>
</div>
@endforeach

@endsection
