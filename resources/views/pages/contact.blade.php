@extends('layouts.app')
@section('title', 'Contact')

@section('content')

  <!-- awal jumbotron -->

  <div class="jumbotron">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-md-6 col-lg-7">
          <h3 style="margin-bottom: -15px;">Sistem</h3>
          <br />
          <h1 style="font-weight: bold;">Monitoring Pengiriman Barang (MPB Tracking Area)</h1>
          <p style="font-style: italic;">
            Selamat Datang di Sistem Monitoring Pengiriman Barang (MPB) Tracking Area
          </p>
          <a href="/cek_barang" class="btn btn-warning text-white mt-3">Let's Get Start</a>
        </div>
        <div class="col-sm-6 col-md-6 col-lg-5">
            <img src="{{url('frontend/img/4.png')}}" style="height: 300px;" />
        </div>
      </div>
    </div>
  </div>

  <!-- akhit jumbotron -->

  @if ($errors->any())

       <div class="alert alert-danger">
          <ul>
              @foreach ($errors->all() as $error)
                  <li>{{$error}}</li>
                      @endforeach
            </ul>
                </div>
  @endif

  <!-- awal menu contact us -->

  <main>
    <div class="container">
      <div class="row">
        <div class="col text-center">
          <h2>Contact Us</h2>
        </div>
      </div>
      <div class="row mt-5">
        <div class="col">
          <div class="card" id="contact" style="width: 16rem;">
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
        <div class="col">
          <div class="card" id="contact" style="width: 16rem;">
            <div class="card-body text-center">
              <img src="{{url('frontend/img/email.png')}}" width="200px" height="180px">
            </div>
            <h6 class="text-center pb-3">Email</h6>
            <table style="font-size: 10px; margin: auto; margin-bottom: 35px">
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
        <div class="col">
          <div class="card" id="contact" style="width: 16rem;">
            <div class="card-body text-center">
              <img src="{{url('frontend/img/dev.png')}}" width="200px" style="">
            </div>
            <h6 class="text-center pb-3">Developer</h6>
            <table style="font-size: 10px; margin: auto; margin-bottom: 65px">
              <tr>
                <th class="pr-5">Name</th>
                <th>Telephone</th>
              </tr>
              <tr>
                <td>Muhamad Novandi</td>
                <td>+62-89643929650</td>
              </tr>
            </table>
          </div>
        </div>
        <div class="col">
          <div class="card" id="contact" style="width: 16rem;">
            <div class="card-body text-center">
              <img src="{{url('frontend/img/address.png')}}" width="200px" style="">
            </div>
            <h6 class="text-center pb-3">Address</h6>
            <table style="font-size: 10px; margin: auto; margin-bottom: 55px">
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
  </main>

@endsection
