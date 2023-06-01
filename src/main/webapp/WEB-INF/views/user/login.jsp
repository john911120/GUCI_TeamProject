<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
   <style>
   	/* 로그인 실패시 경고글 */
   .login_warn{
   	margin-top: 30px;
   	text-align: center;
   	color: red;
   }
   </style>
   
  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>로그인</h4>
<!--           <input class="id_input" name="memberId"> -->
          <form class="aa-login-form" id="login_form" method="post">
            <label for="">아이디<span>*</span></label>
            <input class="id_input" name="userId" type="text" placeholder="아이디">
            <label for="">비밀번호<span>*</span></label>
            <input class="pw_input" name="userPw" type="password" placeholder="비밀번호">
            
            <c:if test = "${result == 0 }">
                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
            </c:if>
            
            <button class="aa-browse-btn" type="button" class="login_button" style="margin: 0px;">로그인</button>
            <br><br><br>
            <p class="aa-lost-password"><a id="searchId" href="#" >ID</a> / <a id="searchPw" href="#">PW</a>찾기</p>
            <div class="aa-register-now" style="margin: 0px;">
              회원이 아니십니까?<a href="user/account">회원가입</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>    

<script>
	// 로그인 버튼 클릭 메서드
	$(".login_button").click(function(){
// 		alert("로그인 창이 열립니다.");
	// 로그인 메서드 서버 요청
	 $("#login_form").attr("action", "user/login");
	 $("#login_form").submit();
	});
</script>


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
	
    $(document).ready(function(){
    	// 회원 가입 버튼(회원 가입 기능 작동)
	$(".join_button").click(function(){
		$("#join_form").attr("action", "user/account");
		$("#join_form").submit();
		});
    });
    
    // 아이디 중복 검사
    $('.id_input').on("propertychange change keyup paste input", function(){
    	// console.log("keyup test");
    	
    	var userId = $('.id_input').val();
    	var data = {userId : userId}
    	$.ajax({
    		type:'post',
    		url: "user/userIdChk",
    		data: data,
    		success : function(result){
    			// console.log("성공 여부" + result);
    			if(result != 'fail'){
    				$('.id_input_re_1').css("display","inline-block");
    				$('.id_input_re_2').css("display", "none");				
    			} else {
    				$('.id_input_re_2').css("display","inline-block");
    				$('.id_input_re_1').css("display", "none");				
    			}
   		}// success 종료
    	});
    });
    </script>
  
  