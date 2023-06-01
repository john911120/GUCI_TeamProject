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

    <title>상품관리</title>

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
            <h1 class="h3 mb-2 text-gray-800">상품등록</h1><br>
	 

<div class="row">
	<div class="col-md-10">
		<div class="panel panel-default">
			<div class="panel-body">
			
				<form role="form" action="/admin/admin_product" method="post" style="margin-left:12px;" enctype="multipart/form-data">
					<div class="form-group">
 				    	<select class="custom-select col-md-2 col-sm-4" style="margin-right:10px;" required>
 				    		<!-- 기본값을 선택하였을때 경고창을 띄우도록 자바스크립트처리 -->
					        <option value="">성별</option>
					        <option value="0">남</option>
					        <option value="1">여</option>
					        <option value="2">공용</option>
				    	</select>
				    	<span class="col-md-2"></span>
 				    	<select class="custom-select col-md-2 col-sm-4" style="margin-right:10px;" required>
 				    		<!-- 성별에 맞는 카텍고리가 오도록 설정 -->
 				    		<option value="">분류</option>
					        <option value="상의">상의</option>
					        <option value="하의">하의</option>
					        <option value="원피스">원피스</option>
					        <option value="아우터">아우터</option>
				    	</select>
					</div>
				
					  <div class="form-group row">
					    <label class="col-sm-1 col-form-label">상품명</label>
					    <div class="col-sm-8">
					      <input type="text" class="form-control" required>
					    </div>
					  </div>
				
					  <div class="form-group row">
					    <label class="col-sm-1 col-form-label">가격</label>
					    <div class="col-sm-2">
					      <input type="text" class="form-control" pattern="[0-9]+" required>
					    </div>
					    <label class="col-sm-1 col-form-label">사이즈</label>
					    <div class="col-sm-4" style="padding-top:5px;">
					      <div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="sizeS" value="option1" checked>
							  <label class="form-check-label" for="sizeS">S</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="sizeM" value="option2" checked>
							  <label class="form-check-label" for="sizeM">M</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="sizeL" value="option3" checked>
							  <label class="form-check-label" for="sizeL">L</label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="sizeXL" value="option3" checked>
							  <label class="form-check-label" for="sizeXL">XL</label>
							</div>
					    </div>
					  </div>
					
					<div class="form-group col-md-12 row">
						<label>상품설명</label> <textarea class="form-control" rows="10" required></textarea>
					</div>

					<div class="form-group row">
						<label class="col-sm-1 col-form-label">이미지</label>
						<div class="col-sm-8">
							<input multiple="multiple" type="file" name="filename[]" class="form-control"/>
						</div>
						<div><img src="../admin/img/background_image.png" alt="이미지" style="margin-top:20px;"></div>
					</div>												

					<div class="form-group " style="float:right">
						<button type="submit" id="register_btn" class="btn btn-primary">등록</button>	
						<button type="button" id="cancel_btn" class="btn btn-danger" onclick="location.href='/admin/admin_product'">취소</button>					
					</div>
					
				</form>
			</div>
		</div>
	</div>
</div>
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