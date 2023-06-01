<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>PW찾기</title>
	<link rel="stylesheet" href="/resources/css/bootstrap.css"><style>
	.center-pills,
	.searchForm {
    display: flex;
    justify-content: center;
	}

	h2{
		margin-top: 100px;
	}

	h2{
		padding-bottom: 10px;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="searchForm">
				<form action="/examples/actions/confirmation.php" method="post" class="form-horizontal">
					<div class="col-xs-8 col-xs-offset-4">
						<h2>PW 찾기</h2>
					</div>
					<div class="form-group">
						<label class="control-label col-xs-4">아이디</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" name="name" required="required">
						</div>
					</div>
	
					<div class="form-group">
						<label class="control-label col-xs-4">이름</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" name="id" required="required">
						</div>
					</div>
			
					<div class="form-group">
						<label class="control-label col-xs-4">전화번호</label>
						<div class="col-xs-8">
							<input type="tel" class="form-control" name="tel" required="required">
						</div>        	
					</div>
					<div class="form-group">
						<div class="col-xs-8 col-xs-offset-4" style="float: right;">
							<button id="searchPw" type="submit" class="btn btn-primary">확인</button>
							<button id="searchClose" class="btn btn-danger">닫기</button>
						</div>  
					</div>		      
				</form>
			</div>
		</div>
	</div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="/resources/js/bootstrap.js"></script> 	<script>
	$(function(){
		$("#searchClose").on("click",function(e){
			window.open('','_self').close(); 
		});
	});
	//modal을 이용해 비밀번호 변경
	//확인을 누르면 로그인페이지로 이동
	</script>
</body>
</html>