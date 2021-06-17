<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pelanggan extends Model
{

    protected $table = "pelanggan";

    protected $fillable = [

        'users_id','jenis_kelamin', 'alamat', 'no_telpon', 'foto'
    ];

    protected $hidden = [];

    public function pelanggan() {
        return $this->belongsTo(Pelanggan::class, 'pelanggan_id','id');
    }
    public function user() {
        return $this->belongsTo(User::class, 'users_id','id');
    }

    public function users(){
        return $this->belongsTo('App\User');
    }
}
