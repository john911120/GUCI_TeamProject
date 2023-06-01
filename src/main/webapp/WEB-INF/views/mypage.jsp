<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
				<li><a href="/question">나의 문의내역</a></li>
              </ul>
            </div>
            <!-- single sidebar -->
          </aside>
        </div>
       
      </div>
    </div>
  </section>
  <!-- / product category -->
  <br><br><br><br><br>  <br><br><br><br><br>  <br><br><br><br><br>  <br><br><br><br><br>  <br><br><br><br><br>  <br><br><br><br><br>
  
    <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/resources/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- slick slider -->
  <script type="text/javascript" src="/resources/js/slick.js"></script>
  <!-- Price picker slider -->

  <jsp:include page="include/footer.jsp" />
</body>
</html>