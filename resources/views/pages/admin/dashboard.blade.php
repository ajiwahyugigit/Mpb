@extends('layouts.admin')

@section('content')

<!-- Begin Page Content -->
<div class="container-fluid">
  <div class="row mb-4">
    <div class="col">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <h3 style="font-style: italic; font-weight: bold; color: rgb(167, 167, 167);">
                Selamat Datang Di Dashboard MPB (Tracking Area)
              </h3>
            </div>
            <div class="col-auto">
              <i class="fas fa-users"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Content Row -->
  <div class="row">
    <!-- users Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                users
              </div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
                {{$user}}
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-user fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                Pelanggan
              </div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
                {{$pelanggan}}
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-users fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Earnings (Monthly) Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-info shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                Pengiriman Barang
              </div>
              <div class="row no-gutters align-items-center">
                <div class="col-auto">
                  <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                    {{$pengiriman_barang}}
                  </div>
                </div>
                {{-- <div class="col">
                  <div class="progress progress-sm mr-2">
                    <div class="progress-bar bg-info" role="progressbar" style="width: 50%;" aria-valuenow="50"
                      aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div> --}}
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-truck fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Tracking Area Card Example -->
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                Tracking Area
              </div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
                {{$tracking_area}}
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-compass fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                Pengiriman Berasil
              </div>
              <div class="h5 mb-0 font-weight-bold text-gray-800">
                {{$tracking_area}}
              </div>
            </div>
            <div class="col-auto">
              <i class="fas fa-check fa-2x text-gray-300"></i>
            </div>
          </div>
        </div>
      </div>
    </div>



  <div class="row mt-2 mb-5 text-center">
    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
      <div class="card" id="contact" style="width: 15rem;">
        <div class="card-body text-center">
          <img src="{{url('frontend/img/contacts.png')}}" width="200px" style="">
        </div>
        <h6 class="text-center pb-3">Telephone</h6>
        <table style="font-size: 10px; margin: auto; margin-bottom: 80px">
          <tr>
            <th class="pr-5">Office Name</th>
            <th>Telephone</th>
          </tr>
          <tr>
            <td>Cusromer Service</td>
            <td>+62-81189835</td>
          </tr>
        </table>
      </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-3">
      <div class="card" id="contact" style="width: 15rem;">
        <div class="card-body text-center">
          <img src="{{url('frontend/img/email.png')}}" width="200px" height="180px">
        </div>
        <h6 class="text-center pb-3">Email</h6>
        <table style="font-size: 10px; margin: auto; margin-bottom: 40px">
          <tr>
            <th class="pr-5">Office Name</th>
            <th>e-mail</th>
          </tr>
          <tr>
            <td>Cusromer Service</td>
            <td>sriwijayaair@gmail.com</td>
          </tr>
        </table>
      </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 ">
      <div class="card" id="contact" style="width: 15rem;">
        <div class="card-body text-center">
          <img src="{{url('frontend/img/dev.png')}}" width="200px">
        </div>
        <h6 class="text-center pb-3">Developer</h6>
        <table style="font-size: 10px; margin: auto; margin-bottom: 70px">
          <tr>
            <th class="pr-5">Name</th>
            <th>Telephone</th>
          </tr>
          <tr>
            <td>Aji Wahyugi</td>
            <td>+62-89643929650</td>
          </tr>
        </table>
      </div>
    </div>
    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-3 ">
      <div class="card" id="contact" style="width: 15rem;">
        <div class="card-body text-center">
          <img src="{{url('frontend/img/address.png')}}" width="200px" style="">
        </div>
        <h6 class="text-center pb-3">Address</h6>
        <table style="font-size: 10px; margin: auto; margin-bottom: 60px">
          <tr>
            <th class="pr-5">Office Name</th>
            <th>Address</th>
          </tr>
          <tr>
            <td>Sriwijaya Air</td>
            <td>Cengkareng-Tangerang</td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</div>
<!-- /.container-fluid -->

@endsection