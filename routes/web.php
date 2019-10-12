<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'PublicController@index')->name('index');
Route::get('post/{post}', 'PublicController@simplePost')->name('singlePost');
Route::get('about', 'PublicController@about')->name('about');
Route::get('contact', 'PublicController@contact')->name('contact');
Route::post('contact', 'PublicController@contactPost')->name('contactPost');

Auth::routes();

Route::get('/dashboard', 'HomeController@index')->name('dashboard');

Route::prefix('user')->group(function(){
  Route::post('new-comment', 'UserController@newComment')->name('newComment');
  Route::get('dashboard', 'UserController@dashboard')->name('userDashboard');
  Route::get('comments', 'UserController@comments')->name('userComments');
  Route::post('/comment/{id}/delete', 'UserController@deleteComment')->name('deleteComment');
  Route::get('profile', 'UserController@profile')->name('userProfile');
  Route::post('profile', 'UserController@profilePost')->name('userProfilePost');
});

Route::prefix('author')->group(function(){
  Route::get('dashboard', 'AuthorController@dashboard')->name('authorDashboard');
  Route::get('posts', 'AuthorController@posts')->name('authorPosts');
  Route::get('posts/new', 'AuthorController@newPost')->name('newPost');
  Route::post('posts/new', 'AuthorController@createPost')->name('createPost');
  Route::get('posts/{id}/edit', 'AuthorController@postEdit')->name('postEdit');
  Route::post('posts/{id}/edit', 'AuthorController@postEditPost')->name('postEditPost');
  Route::post('posts/{id}/delete', 'AuthorController@deletePost')->name('deletePost');
  Route::get('comments', 'AuthorController@comments')->name('authorComments');
});

Route::prefix('admin')->group(function(){
  Route::get('dashboard', 'AdminController@dashboard')->name('adminDashboard');
  Route::get('posts', 'AdminController@posts')->name('adminPosts');
  Route::get('posts/{id}/edit', 'AdminController@postEdit')->name('adminPostEdit');
  Route::post('posts/{id}/edit', 'AdminController@postEditPost')->name('adminPostEditPost');
  Route::post('posts/{id}/delete', 'AdminController@deletePost')->name('adminDeletePost');
  Route::get('comments', 'AdminController@comments')->name('adminComments');
  Route::post('comments/{id}', 'AdminController@deleteComment')->name('adminDeleteComment');
  Route::get('users', 'AdminController@users')->name('adminUsers');
  Route::get('users/{id}/edit', 'AdminController@editUser')->name('adminEditUser');
  Route::post('users/{id}/edit', 'AdminController@editUserPost')->name('adminEditUserPost');
  Route::post('user/{id}/delete', 'AdminController@deleteUser')->name('adminDeleteUser');
});