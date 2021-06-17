<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;
use PDF;

class PrintController extends Controller {
    
    public function print()
    {
        $pdf = PDF::loadview('pages.admin.pengiriman-berasil.index')->setPaper('A4','potrait');
        return $pdf->stream();
    }
}


