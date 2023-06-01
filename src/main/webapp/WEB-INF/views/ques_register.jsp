<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 등록하기</title>
<jsp:include page="include/css.jsp" />
    
  </head>
  <body>  
 
<jsp:include page="include/header.jsp" />
 
<jsp:include page="include/menu.jsp" /> 
<section id="aa-product-category">
   <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
	<div class="container">	
<div class="row"  style="margin-left:10px">
	<div class="col-md-8">
		<h1 class="page-header">문의하기</h1>
	</div>
</div>

		<div class="col-md-8">
			<div class="panel " style="margin:0 20px;">
				<div class="panel-body">
				
					<form role="form" action="/product_detail" method="post">
						<div class="form-group col-md-4">
						  <label for="category">카테고리</label>
						  <select class="form-control" id="category">
						    <option>배송문의</option>
						    <option>교환반품</option>
						    <option>상품문의</option>
						    <option>주문결제</option>
						    <option>기타문의</option>
						  </select>
						</div>
	
						<div class="form-group col-md-12">
							<label for="title">제목</label> <input class="form-control" name="title">
						</div>
						
						<div class="form-group col-md-12">
							<label for="title">상품명</label> <input class="form-control" name="name">
						</div>
						
						<div class="form-group col-md-12">
							<label for="content">문의사항</label> <textarea class="form-control" rows="10" name='content' ></textarea>
						</div>
						
						
						<div class="form-group col-md-12">
							<button type="reset" class="btn btn-danger pull-right" onclick="location.href='/question'">취소</button>	
							<button type="submit" class="btn btn-primary pull-right" style="margin-right:5px;">등록하기</button>						
						</div>				
					</form>
				</div>
			</div>
		</div>
	</div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
          <aside class="aa-sidebar">
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>카테고리</h3>
              <ul class="aa-catg-nav">
				<li><a href="/notice">공지사항</a></li>
                <li><a href="/faq">FAQ</a></li>
				<li><a href="/question" class="active">문의하기</a></li>
              </ul>
            </div>
            <!-- single sidebar -->
          </aside>
        </div>
       
      </div>
    </div>
</section>
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/resources/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- slick slider -->
  <script type="text/javascript" src="/resources/js/slick.js"></script>



    <jsp:include page="include/footer.jsp" />

</body>
</html>