<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
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
		    <div class="row">
              <div class="col-md-9">
                <div class="aa-myaccount-register">                 
                 <h3 style="margin-top:20px; display:inline-block;">회원정보 수정</h3>
                 <a href="#" id="delete" style="float:right; margin-top:20px;">회원탈퇴</a>
                 
                 <form action="/mypage" class="aa-login-form">
                    <label for="id">아이디<span>*</span></label>
                    <input id="id" type="text" placeholder="아이디" readonly>  
                    <label for="pw">비밀번호<span>*</span></label>
                    <input id="pw" type="password" placeholder="비밀번호" >
                    <label for="name">이름<span>*</span></label>
                    <input id="name" type="text" placeholder="이름" readonly>  
					<label for=email>이메일<span>*</span></label>
					<input id="email" type="text" placeholder="정규식으로 이메일 처리" />
                    <label for="phone">연락처<span>*</span></label>
                    <input id="phone" type="text" pattern="^\d{3}-\d{4}-\d{4}$" placeholder="010-1234-5678" >
                    <label>주소<span>*</span></label><br>
                    <button type="button" class="btn btn-info" style="margin: 0px 0px 10px 0px;">주소검색</button>
                    <input id="addr1" type="text"  />
                    <input id="addr2" type="text"  />
                    <br>
                    <button id="cancel" type="submit" class="aa-browse-btn" style="float: right; background-color:#d9534f;">취소</button>                    
                    <button type="submit" class="aa-browse-btn" style="float: right; margin-bottom:20px;">수정</button> 
                  </form>
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

    <script>
    $(document).ready(function(){
      $("#delete").on("click", function(e){
			e.preventDefault();
			window.open("/delete_info","","width=600,height=600");
		});

      $("#cancel").on("click", function(e){
			e.preventDefault();
			location.href='/mypage';
      });
    });
  </script>
</body>
</html>