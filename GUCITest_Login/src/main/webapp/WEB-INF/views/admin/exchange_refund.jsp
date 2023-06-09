<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>교환/환불</title>

    <!-- Custom fonts for this template -->
    <link href="/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

	 <jsp:include page="include/menu.jsp" /> 


        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">교환/환불 처리</h1><br>

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>상품명</th>
                                    <th>사유</th>
                                    <th>가격</th>
                                    <th>구매자</th>
                                    <th>구매일</th>
                                    <th>처리상태</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2011/04/25</td>
                                    <td style="padding:10px 5px 0 5px;">
										<div class="form-group">
					 				    	<select class="custom-select">
					 				    		<!-- 기본값을 선택하였을때 경고창을 띄우도록 자바스크립트처리 -->
										        <option value="">선택</option>
										        <option value="0">승인</option>
										        <option value="1">거절</option>
									    	</select>
								    	</div>
									</td>
                                    <td>
                                    	<button type="button" class="btn btn-primary">확인</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2011/04/25</td>
                                    <td style="padding:0px 5px;">
										<div class="form-group">
					 				    	<select class="custom-select">
					 				    		<!-- 기본값을 선택하였을때 경고창을 띄우도록 자바스크립트처리 -->
										        <option value="">선택</option>
										        <option value="0">승인</option>
										        <option value="1">거절</option>
									    	</select>
								    	</div>
									</td>
                                    <td>
                                    	<button type="button" class="btn btn-primary">확인</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2011/04/25</td>
                                    <td style="padding:10px 5px 0 5px;">
                                    	<div class="form-group">
					 				    	<select class="custom-select">
					 				    		<!-- 기본값을 선택하였을때 경고창을 띄우도록 자바스크립트처리 -->
										        <option value="">선택</option>
										        <option value="0">승인</option>
										        <option value="1">거절</option>
									    	</select>
								    	</div>
									</td>
                                    <td>
                                    	<button type="button" class="btn btn-primary">확인</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Garrett Winters</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>63</td>
                                    <td>2011/07/25</td>
                                    <td style="padding:10px 5px 0 5px;">
                                    	<div class="form-group">
					 				    	<select class="custom-select">
					 				    		<!-- 기본값을 선택하였을때 경고창을 띄우도록 자바스크립트처리 -->
										        <option value="">선택</option>
										        <option value="0">승인</option>
										        <option value="1">거절</option>
									    	</select>
								    	</div>
									</td>
                                    <td>
                                    	<button type="button" class="btn btn-primary">확인</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

		<jsp:include page="include/footer.jsp" />

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/admin/js/demo/datatables-demo.js"></script>

</body>

</html>