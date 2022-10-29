<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Contracts\Auth\CanResetPassword;


class UserLVTN extends Model
{
   protected $table ="users";
   protected $primarykey='id';
   protected $fillable =['hoten',' email','password','google_id'];
  
}
