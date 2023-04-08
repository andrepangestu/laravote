<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class VerificationCode extends Model
{
    use Notifiable;

    protected $fillable = ['user_id', 'otp', 'expire_at'];
}
