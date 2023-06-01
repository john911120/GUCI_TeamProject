<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
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
          <h2 style="margin-top:20px;">비밀번호 확인</h2>
			<form role="form" action="/update_info" method="post">
			  <div class="form-group row">
			    <label class="col-md-2 col-form-label">비밀번호</label>
			    <div class="col-md-6">
			      <input type="password" class="form-control">
			    </div>
			    <div class="col-md-2">
			    	<input type="submit" value="확인" class="btn btn-primary">
			    </div>
			  </div>										
			</form>
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