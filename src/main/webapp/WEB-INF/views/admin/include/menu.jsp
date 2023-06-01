<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/index">
                <div class="sidebar-brand-text mx-3">관리자 페이지 </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="/admin/index">
                    <span>통계자료</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <li class="nav-item active">
                <a class="nav-link" href="/admin/memberList">
                    <span>회원정보</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
	        	상품정보
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="/admin/admin_product">
                    <span>상품관리</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="/admin/deliveryInfo">
                    <span>배송정보 변경</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="/admin/exchange_refund">
                    <span>상품 처리</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

 
        </ul>
        <!-- End of Sidebar -->
                <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>


                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="/" id="userDropdown" role="button">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">메인페이지로 이동</span>
                            </a>
                        </li>
                    </ul>

                </nav>
                <!-- End of Topbar -->