@extends('layouts.admin')

@section('title')Author Posts @endsection

@section('content')
<div class="content">
  <div class="card">
      <div class="card-header bg-light">
          Author Posts
      </div>

      <div class="card-body">
          <div class="table-responsive">
              <table class="table">
                  <thead>
                  <tr>
                      <th>ID</th>
                      <th>Title</th>
                      <th>Created at</th>
                      <th>Updated at</th>
                      <th>Comments</th>
                      <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach(Auth::user()->posts as $post)
                      <tr>
                          <td>{{$post->id}}</td>
                          <td class="text-nowrap"><a href="{{route('singlePost', $post->id)}}">{{$post->title}}</a></td>
                          <td>{{\Carbon\Carbon::parse($post->created_at)->diffForHumans()}}</td>
                          <td>{{\Carbon\Carbon::parse($post->updated_at)->diffForHumans()}}</td>
                          <td>{{$post->comments->count()}}</td>
                          <td>
                            <a href="{{route('postEdit', $post->id)}}" class="btn-warning">Edit</a>
                            <a href="#" data-toggle="modal" data-target="#deletePostModal-{{$post->id}}" class="btn-danger">Remove</a>
                          </td>
                      </tr>
                    @endforeach

                  </tbody>
              </table>
          </div>
      </div>
  </div>
</div>

@foreach(Auth::user()->posts as $post)
<!-- Modal -->
<div class="modal fade" id="deletePostModal-{{$post->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">You are about to delete {{$post->title}}</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      Are you sure?
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">No i dont want to delete the Post</button>
      <form id="deletePost-{{$post->id}}" action="{{route('deletePost', $post->id)}}" method="post">@csrf
        <button type="submit" class="btn btn-primary">Yes i want to delete.</button>
      </form>
    </div>
  </div>
</div>
</div>
@endforeach

@endsection
