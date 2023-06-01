<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>상품 구매</title>
    
<jsp:include page="include/css.jsp" />
    

  </head>
  <body>  

<jsp:include page="include/header.jsp" />
 
<jsp:include page="include/menu.jsp" /> 

 <!-- Cart view section -->
 <section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="checkout-area">
          <form action="">
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group">
                    <!-- Shipping Address -->
                    <h4>구매자 정보</h4>
                    <div class="panel panel-default aa-checkout-billaddress">
                       <div class="panel-body">
                        <div class="row">
                           <div class="col-md-6">
                             <div class="aa-checkout-single-bill">
                               <label for="name">이름<span>*</span></label>
                               <input type="text" id="name" required="required"> 
                             </div>                             
                           </div>
                           <div class="col-md-8">
                             <div class="aa-checkout-single-bill">
                               <label for="phone">연락처<span>*</span></label>
		                    <input id="phone" type="text" pattern="^\d{3}-\d{4}-\d{4}$" placeholder="010-1234-5678" required="required" >
                             </div>
                           </div>
                         </div> 
                         <div class="row">
                           <div class="col-md-10">
                             <div class="aa-checkout-single-bill" style="display:inline-block;">
		                    <button class="btn btn-info btn-sm" type="button" style="margin-bottom:10px;">주소 검색</button>
		                    <input id="addr2" type="text" required="required" >                 
                             </div>                             
                           </div>                            
                           <div class="col-md-10">
                             <div class="aa-checkout-single-bill">
		                    <input id="addr3" type="text" placeholder="상세 주소*" required="required" >
                             </div>                             
                           </div>                            
                         </div>   
                       </div>

                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="checkout-right">
                  <h4>상품 요약</h4>
                  <div class="aa-order-summary-area">
                    <table class="table table-responsive">
                      <thead>
                        <tr>
                          <th>상품</th>
                          <th>사이즈</th>
                          <th>가격</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>T-Shirt <strong> x  1</strong></td>
                          <td>L</td>
                          <td>$150</td>
                        </tr>
                        <tr>
                          <td>Polo T-Shirt <strong> x  1</strong></td>
                          <td>XL</td>
                          <td>$250</td>
                        </tr>
                        <tr>
                          <td>Shoes <strong> x  1</strong></td>
                          <td>L</td>
                          <td>$350</td>
                        </tr>
                      </tbody>
                      <tfoot>
                         <tr>
                          <th>Total</th>
                          <td colspan="2">$750</td>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                </div>
                <button class="btn btn-primary btn-lg" style="float:right;">주문하기</button>
              </div>
            </div>
          </form>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

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
  

	<jsp:include page="user/login.jsp" />

    <jsp:include page="include/footer.jsp" />
  </body>
</html>