<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
.login_warn{
    margin-top: 30px;
    text-align: center;
    color : red;
}
</style>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<jsp:include page="../include/css.jsp" />
</head>
<body>
<jsp:include page="../include/header.jsp" />
<jsp:include page="../include/menu.jsp" />
 <div class="container">
      <div class="row">
      <div class="col-md-offset-2 col-md-8">
        <br><br><br>
          <h4>로그인</h4>
          <form class="aa-login-form" method="post">
            <label for="">아이디<span>*</span></label>
            <input type="text" placeholder="아이디" class="id_input" name="userId">
            <label for="">비밀번호<span>*</span></label>
            <input type="password" placeholder="비밀번호" class="pw_input" name="userPw">
            
          
			<c:if test = "${result == 0 }">
                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            </c:if>
            
            <button class="aa-browse-btn" type="submit" style="margin: 0px; float:right;">로그인</button>
            <p class="aa-lost-password"><a id="searchId" href="#" >ID</a> / <a id="searchPw" href="#">PW</a>찾기<a href="/user/join" style="margin-left: 20px;">회원가입</a></p>
            <div class="aa-register-now" style="margin: 0px;">
              
            <br><br><br><br><br>
            </div>
          </form>
      </div>
</div>
</div>

  <script>
    $(document).ready(function(){
      $("#searchId").on("click", function(e){
				e.preventDefault();
				window.open("/searchId","","width=600,height=600");
			});

			$("#searchPw").on("click", function(e){
				e.preventDefault();
				window.open("/searchPw","","width=600,height=600");
			});
    });
  </script>
  
  <script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".aa-browse-btn").click(function(){
        
    	/* 로그인 메서드 서버 요청 */
        $(".aa-login-form").attr("action", "/user/login");
        $(".aa-login-form").submit();
        
    });
 
</script>
<jsp:include page="../include/footer.jsp" />
</body>
</html>
  