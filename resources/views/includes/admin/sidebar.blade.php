 <!-- Sidebar -->
 <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #ffffff;">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{route('dashboard')}}">
        <div class="sidebar-brand-icon rotate-n-15"></div>
        <div class="sidebar-brand-text mx-3" style="color: #010C79;">
            <img src="{{url('frontend/img/Group 42.png')}}" width="100px" />
        </div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0" />

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="{{route('dashboard')}}">
            <i class="fas fa-fw fa-tachometer-alt" style="color: #010C79"></i>
        <span style="color: #010C79;">Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider" style="background-color: #d1d1d1"/>

    <!-- Heading -->
    <div class="sidebar-heading" style="color: #010C79;">
        Menu
    </div>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('user.index') }}">
            <i class="fas fa-user" style="color: #010C79;"></i>
            <span style="color: #010C79;">Users</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('pelanggan.index') }}">
            <i class="fas fa-users" style="color: #010C79;"></i>
            <span style="color: #010C79;">Pelanggan</span></a>
    </li>

    <!-- Nav Item - Oprasional Collapse Menu -->
    {{-- <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOprasional"
            aria-expanded="true" aria-controls="collapseOprasional">
            <i class="fas fa-fw fa-wrench"></i>
            <span>Oprasional</span>
        </a>
        <div id="collapseOprasional" class="collapse" aria-labelledby="headingOprasional"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Options menu:</h6>
                <a class="collapse-item" href="{{route('driver.index')}}">Detail Barang</a>
            </div>
        </div>
    </li> --}}

    <!-- Divider -->
    <hr class="sidebar-divider" style="background-color: rgb(202, 202, 202);" />
    
    <!-- Heading -->
    <div class="sidebar-heading" style="color: #aeaeaf;"">
        Options
    </div>
    


    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="{{ route('pengiriman-barang.index') }}">
            <i class="fas fa-truck" style="color: #010C79;"></i>
            <span style="color: #010C79;">Pengiriman Barang</span></a>
    </li>
    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="{{ route('tracking-area.index') }}">
            <i class="fas fa-compass" style="color: #010C79;"></i>
            <span style="color: #010C79;">Tracking Area</span></a>
    </li>
    <hr class="sidebar-divider" style="background-color: #d4d4d4;"/>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('pengiriman-berasil.index') }}">
            <i class="fas fa-check" style="color: #010C79;"></i>
            <span style="color: #010C79;">Pengiriman Berasil</span></a>
    </li>

    <!-- Divider ---
    <hr class="sidebar-divider d-none d-md-block" />

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle" style="background-color: #010C79; color: white"></button>
    </div>
</ul>
<!-- End of Sidebar -->