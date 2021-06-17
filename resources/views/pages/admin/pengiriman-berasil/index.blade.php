@extends('layouts.admin')

@section('content')

<!-- Begin Page Content -->
  <!-- Begin Page Content -->
  <div class="container-fluid">
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Pengiriman Berasil</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped text-center mt-3" style="font-size: 12px">
                    <thead>
                        <tr>
                            <th scope="col">Resi</th>
                            <th scope="col">Email Pengirim</th>
                            <th scope="col">Telepon</th>
                            <th scope="col">Kota Asal</th>
                            <th scope="col">Kota Tujuan</th>
                            <th scope="col">Alamat Pengirim</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                       @forelse ($items as $item)
                       <tr>
                          <td>{{$item->resi}}</td>
                          <td>{{$item->email}}</td>
                          <td>{{$item->no_telpon}}</td>
                          <td>{{$item->kota_asal}}</td>
                          <td>{{$item->kota_tujuan}}</td>
                          <td>{{$item->alamat}}</td>
                                <td>
                                   
                                    <button class="btn btn-success"><i class="fas fa-check"></i></button>
                                    {{-- <button class="btn btn-danger"><i class="fas fa-print"></i></button> --}}
                                </td>
                            </td>
                        </tr>
                       @empty
                           <tr>
                             <td colspan="8" class="text-center">
                               Data Kosong
                             </td>
                           </tr>
                       @endforelse
                    </tbody>
                </table>
            </div>
            {{-- <button class="btn btn-danger"><i class="fas fa-print"></i></button> --}}
        </div>
    </div>

</div>
<!-- /.container-fluid -->

@endsection