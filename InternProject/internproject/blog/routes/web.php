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

Route::any('/', 'AppController@index');
Route::any('/home', 'AppController@home')->name('home');
Route::any('/register', 'AppController@register')->name('register');
Route::any('/addRecord', 'AppController@addUser')->name('add');
Route::any('/delete/{userid?}', 'AppController@deleteUser')->name('delete');

route::any('/search','AppController@search')->name('search');

Route::any('/login', 'AdminController@login')->name('login');
Route::any('/logme', 'AdminController@logme')->name('logme');
Route::any('/home', 'AppController@home')->name('home');

Route::any('/register_admin', 'AdminController@register_admin')->name('register_admin');
Route::any('/addAdmin', 'AdminController@addAdmin')->name('addAdmin');
Route::any('/deleteAdmin/{userid?}', 'AdminController@deleteAdmin')->name('deleteAdmin');

//user Update
Route::any('/User.updateUser/{userid?}','AppController@updateUser')->name('updateUser');
Route::any('/updateRecord','AppController@updateRecord')->name('updateRecord');

//admin Update
Route::any('/Admin.updateAdmin/{userid?}','AdminController@updateAdmin')->name('updateAdmin');
Route::any('/updateRecordAdmin','AdminController@updateRecordAdmin')->name('updateRecordAdmin');

//attendance
Route::any('/attendanceHome','AttendanceController@attendanceHome')->name('attendanceHome');
Route::any('/recordAttendance','AttendanceController@record')->name('recordAttendance');
Route::any('/addrecordAttendance','AttendanceController@addrecordAttendance')->name('addrecordAttendance');
Route::any('/viewAttendance','AttendanceController@viewAttendance')->name('viewAttendance');
Route::any('/searchAttendance','AttendanceController@searchAttendance')->name('searchAttendance');

//nav
Route::view('/navContainer', 'layouts.navContainer');











