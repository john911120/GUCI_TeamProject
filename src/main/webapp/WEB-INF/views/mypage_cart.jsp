<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 장바구니 정보</title>
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
		   <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-10">
         <h2 style="margin-top:20px;">장바구니</h2>
         <div class="cart-view-area" style="padding-top:0px;">
           <div class="cart-view-table">
             <form action="">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th></th>
                        <th></th>
                        <th>상품</th>
                        <th>가격</th>
                        <th>수량</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="/resources/img/man/polo-shirt-1.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$250</td>
                        <td><input class="aa-cart-quantity" type="number" value="1"></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="/resources/img/man/polo-shirt-2.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$150</td>
                        <td><input class="aa-cart-quantity" type="number" value="1"></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="/resources/img/man/polo-shirt-3.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$50</td>
                        <td><input class="aa-cart-quantity" type="number" value="1"></td>
                      </tr>
                      <tr>
                        <td colspan="2">합계</td>
                        <td colspan="3">20000원</td>
                      </tr>
                      
                      </tbody>
                  </table>
                </div>
             </form>
               <a href="/checkout" class="aa-cart-view-btn">구매하기</a>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
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
   <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/resources/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="/resources/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="/resources/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="/resources/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="/resources/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="/resources/js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="/resources/js/custom.js"></script> 

    <jsp:include page="include/footer.jsp" />
</body>
</html>