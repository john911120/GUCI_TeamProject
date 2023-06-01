<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문목록</title>
<jsp:include page="include/css.jsp" />
    
  </head>
  <body>  
 
<jsp:include page="include/header.jsp" />
 
<jsp:include page="include/menu.jsp" />
  <!-- product category -->
 <!-- product category -->
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
		  <div class="container">
			<div class="row">
				<div class="col-md-9">
				  <h3>주문/배송조회</h3>
				  <table class="table table-hover">
				    <thead>
				      <tr>
				        <th class="col-md-2">이미지</th>
				        <th class="col-md-5">상품명</th>
				        <th class="col-md-2">가격</th>
				        <th class="col-md-2">상태</th>
				        <th class="col-md-1">교환/환불</th>				        
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td>이미지</td>
				        <td>후드집업</td>
				        <td>25000원</td>
				        <td>배송중</td>
				        <td><button id="exchange" type="button" class="btn btn-default btn-sm">신청하기</button></td>
				      </tr>
				      <tr>
				        <td>이미지</td>
				        <td>청바지</td>
				        <td>15000</td>
				        <td>결제완료</td>
				        <td><button type="button" class="btn btn-default btn-sm">신청하기</button></td>
				      </tr>
				      <tr>
				        <td>이미지</td>
				        <td>롱패딩</td>
				        <td>120,000</td>
				        <td>배송완료</td>
				        <td><button type="button" class="btn btn-default btn-sm">신청하기</button></td>
				      </tr>
				      <tr>
				        <td>이미지</td>
				        <td>바람막이</td>
				        <td>70,000</td>
				        <td>배송완료</td>
				        <td><button type="button" class="btn btn-default btn-sm">신청하기</button></td>
				      </tr>
				    </tbody>
				  </table>
				    <ul class="pagination pull-right">
				    	<li class="paginate_button previous"><a>이전</a></li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
				    	<li class="paginate_button next"><a>다음</a></li>					    
				  </ul>					
				</div>
			</div>
		</div>
		  
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
          <aside class="aa-sidebar">
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>마이페이지</h3>
              <ul class="aa-catg-nav">
				<li><a href="/mypageCheckPw">회원정보 수정/탈퇴</a></li>
                <li><a href="/orderlist">주문/배송조회</a></li>
				<li><a href="/mypage_cart">장바구니</a></li>
				<li><a href="/questionList">나의 문의내역</a></li>
              </ul>
            </div>
            <!-- single sidebar -->
          </aside>
        </div>
       
      </div>
    </div>
  </section>
  <!-- / product category -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="/resources/js/bootstrap.js"></script> 
    <script>
    $(document).ready(function(){
      $("#exchange").on("click", function(e){
			e.preventDefault();
			window.open("/exchange","","width=600,height=600");
		});
    });
  </script>
</body>
</html>