<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의내역</title>
<jsp:include page="include/css.jsp" />
    
  </head>
  <body>  
 
<jsp:include page="include/header.jsp" />
 
<jsp:include page="include/menu.jsp" />
  <!-- product category -->
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
		  <div class="container">
			<div class="row">
				<h3 style="margin:20px 0;">나의 문의내역</h3>
				<div class="col-md-9">
				  <table class="table table-hover">
				    <thead>
				      <tr>
				        <th class="col-md-3">카테고리</th>
				        <th class="col-md-5">제목</th>
				        <th class="col-md-4">작성일</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td>배송문의</td>
				        <td>상품이 안와요</td>
				        <td>2021-1-13</td>
				      </tr>
				      <tr>
				        <td>결제문의</td>
				        <td>결제가 안됩니다</td>
				        <td>2021-1-13</td>
				      </tr>
				      <tr>
				        <td>상품문의</td>
				        <td>상품이 품절이에요</td>
				        <td>2021-1-13</td>
				      </tr>
				      <tr>
				        <td>배송문의</td>
				        <td>상품이 안와요</td>
				        <td>2021-1-13</td>
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
  <!-- / product category -->
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
</body>
</html>