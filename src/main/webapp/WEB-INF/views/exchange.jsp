<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교환/환분신청</title>
<jsp:include page="include/css.jsp" />
</head>
<body>  
<div class="row">
	<div class="col-sm-10" style="margin:10px 20px;">
		<h3>교환/환불신청</h3> 
		<div class="panel panel-default">
			<div class="panel-body">
			
				<form role="form" action="/board/register" method="post" style="margin-left:12px;">
					<div class="form-group">
 				    	<select class="custom-select col-md-2 col-sm-4" style="margin-right:10px;">
 					        <option value="">선택</option>
					        <option value="1">교환</option>
					        <option value="2">환불</option>
				    	</select>
					</div>
				
					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">상품명</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" readonly value="청바지">
					    </div>
					  </div>

					  <div class="form-group row">
					    <label class="col-sm-2 col-form-label">개수</label>
					    <div class="col-sm-10">
					      <input type="number" class="form-control">
					    </div>
					  </div>
									
					<div class="form-group col-md-12" style="padding:0px;">
						<label>사유</label> <textarea class="form-control" rows="5"></textarea>
					</div>
					<div class="form-group " style="float:right">
						<button type="submit" id="register_btn" class="btn btn-primary">신청</button>	
						<button type="button" id="cancel_btn" class="btn btn-danger">취소</button>					
					</div>												
				</form>
			</div>
		</div>
		<small style="color:red;">*제품에 문제가 있거나, 배송이 지연되는 경우는 추가비용 없이 처리됩니다.<br>
		*사유가 단순 변심, 사이즈 교환일 경우 왕복 택배비가 부과됩니다.</small>
	</div>
</div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="/resources/js/bootstrap.js"></script> 
  <script>
	$(function(){
		$("#cancel_btn").on("click",function(e){
			window.open('','_self').close(); 
		});
	});
  </script>
</body>
</html>