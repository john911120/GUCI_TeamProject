<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<jsp:include page="../include/css.jsp" />
<style>
	/* 유효성 검사 문구 */
	.final_id_ck{
	    display: none;
	}
	.final_pw_ck{
	    display: none;
	}
	.final_pwck_ck{
	    display: none;
	}
	.final_name_ck{
	    display: none;
	}
	.final_mail_ck{
	    display: none;
	}
	.final_addr_ck{
	    display: none;
	}

	/* 중복 아이디 존재하지 않는 경우 */
	.id_input_re_1{
		color: green;
		display: none;
	}
	
	/* 중복 아이디 존재하는 경우 */
	.id_input_re_2{
		color: red;
		display: none;
	}
	
	#mail_check_input_box_false{
		background-color:#ebebe4;
	}
	#mail_check_input_box_true{
		background-color:white;
	}
	.correct{
		color:green;
	}
	.incorrect{
		color:red;
	}
	
	/* 비밀번호 확인 일치 유효성검사 */
	.pwck_input_re_1{
		color:green;
		display:none;
	}
	.pwck_input_re_2{
		color:red;
		display:none;
	}
</style>
<!-- <script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>     -->
<!-- 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 -->
  </head>
  <body>  
 
<jsp:include page="../include/header.jsp" />
 
<jsp:include page="../include/menu.jsp" /> 



 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area" style="padding:20px 0;">         
            <div class="row">
              <div class="col-md-6 col-md-offset-3">
                <div class="aa-myaccount-register">                 
                 <h4>회원가입</h4>
                 <form id="join_form" action="/" class="aa-login-form">
                    <label for="id">아이디<span>*</span></label>
                    <div class="id_input_box">
                    	<input class="id_input" name="userId">
                    </div>
                    <span class="id_input_re_1">사용 가능한 아이디입니다.</span>
                    <span class="id_input_re_2">아이디가 이미 존재 합니다.</span>
                    <span class="final_id_ck">아이디를 입력하세요.</span>
                    <img id="id_check_success" style="display: none;">
                    <label for="pw">비밀번호<span>*</span></label>
                    <input class="pw_input" name="userPw" type="password" placeholder="비밀번호" required>
                    <span class="final_pw_ck">비밀번호를 입력하세요</span>
                    <label for="ch_pw">비밀번호확인<span>*</span></label>
                    <input class="pwck_input" id="ch_pw" type="password" placeholder="비밀번호확인" required>  
                    <span class="final_pwck_ck">비밀번호 확인을 입력하세요.</span>
	                <span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
    	            <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
                    <label for="name">이름<span>*</span></label>
                    <input id="name" name="userName" type="text" placeholder="이름" required>  
                    <span class="final_name_ck">이름을 입력하세요.</span>
					<div class="mail_wrap">
						<div><label for=email>이메일<span>*</span></label></div>
						<div class="mail_input_box">
							<input class="mail_input">
						</div>
						<span class="final_mail_ck">이메일을 입력하세요.</span>
						<span class="mail_input_box_warn"></span>
						<div class="mail_check_wrap">
							<div class="mail_check_input_box" id="mail_check_input_box_false">
								<input class="mail_check_input" disabled="disabled">
							</div>
							<div class="mail_check_button" >
							<span>인증번호 발송</span>
							</div>
							<div class="clearfix"></div>
							<span id="mail_check_input_box_warn"></span>
						</div>
					</div>
                    <label for="phone">연락처<span>*</span></label>
                    <input id="phone" name="userPhone" type="text" pattern="^\d{3}-\d{4}-\d{4}$" placeholder="010-1234-5678" required >
                    <label>주소<span>*</span></label><br>
                    <input type="text" id="sample4_postcode" placeholder="우편번호">
<!-- 					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br> -->
					<input type="text" name="userAddr1" id="sample4_roadAddress" placeholder="도로명주소">
<!-- 					<input type="text" id="sample4_jibunAddress" placeholder="지번주소"> -->
					<span class="final_addr_ck">주소를 입력하세요.</span>
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" name="userAddr2" id="sample4_detailAddress" placeholder="상세주소">
<!-- 					<input type="text" id="sample4_extraAddress" placeholder="참고항목"> -->
                    <button onclick="sample4_execDaumPostcode()" type="button" class="btn btn-info" style="margin: 0px 0px 10px 0px;">주소검색</button>
                    <textarea rows="3" cols="65">개인정보 수집...약관에 동의하지 않으면 가입을 할 수 없습니다.</textarea><br>
                    <input type="radio" required> 약관에 동의합니다.
                    <br>
                    <button id="cancel" type="submit" class="aa-browse-btn" style="float: right; background-color:#d9534f;">취소</button>                   
                    <button type="submit" class="aa-browse-btn btn-primary" style="float: right;">회원가입</button> 
                  </form>
                </div>
              </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

    
  <!-- / Latest Blog -->
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
  
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<jsp:include page="login.jsp" />
   <jsp:include page="../include/footer.jsp" />

   <script>
	// 아이디 중복검사
	$('.id_input').on("propertychange change keyup paste input", function(){
		// console.log("keyUp Test");
		
		var userId = $('.id_input').val();			// .id_input에 입력되는 값
		var data = {userId : userId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
		$.ajax({
			type : "post",
			url : "/user/userIdChk",
			data : data,
			success: function(result){
				// console.log("성공 여부" + result);
				if(result != 'fail'){
					$('.id_input_re_1').css("display","inline-block");
					$('.id_input_re_2').css("display", "none");				
				} else {
					$('.id_input_re_2').css("display","inline-block");
					$('.id_input_re_1').css("display", "none");				
				}
			} // success 종료
		}); // ajax 종료	
	});
   </script>

 <script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
//                 document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
//                 if(roadAddr !== ''){
//                     document.getElementById("sample4_extraAddress").value = extraRoadAddr;
//                 } else {
//                     document.getElementById("sample4_extraAddress").value = '';
//                 }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

  <script>
  	var code = ""; // 이메일 전송 인증번호 저장을 위한 코드
  	
  	/*
  	 유효성 검사 통과유무 변수*/
  	 var idCheck = false;            // 아이디
  	 var idckCheck = false;            // 아이디 중복 검사
  	 var pwCheck = false;            // 비번
  	 var pwckCheck = false;            // 비번 확인
  	 var pwckcorCheck = false;        // 비번 확인 일치 확인
  	 var nameCheck = false;            // 이름
  	 var mailCheck = false;            // 이메일
  	 var mailnumCheck = false;        // 이메일 인증번호 확인
  	 var addressCheck = false         // 주소
  	$(document).ready(function(){
  	 
  		
  		// 회원가입 버튼(회원가입 기능 작동 기능)
  		 $(".join_button").click(function(){
  		        
  		        /* 입력값 변수 */
  		        var id = $('.id_input').val();                 // id 입력란
  		        var pw = $('.pw_input').val();                // 비밀번호 입력란
  		        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
  		        var name = $('.user_input').val();            // 이름 입력란
  		        var mail = $('.mail_input').val();            // 이메일 입력란
  		        var addr = $('.address_input_3').val();        // 주소 입력란
  		        
  				/* 아이디 유효성검사 */
  				if(id == ""){
  					$('.final_id_ck').css('display','block');
  					idCheck = false;
  				}else{
  					$('.final_id_ck').css('display', 'none');
  					idCheck = true;
  				}
  				
  				/* 비밀번호 유효성 검사 */
  				if(pw == ""){
  					$('.final_pw_ck').css('display','block');
  					pwCheck = false;
  				}else{
  					$('.final_pw_ck').css('display', 'none');
  					pwCheck = true;
  				}
  				
  				/* 비밀번호 확인 유효성 검사 */
  				if(pwck == ""){
  					$('.final_pwck_ck').css('display','block');
  					pwckCheck = false;
  				}else{
  					$('.final_pwck_ck').css('display', 'none');
  					pwckCheck = true;
  				}
  				
  				/* 이름 유효성 검사 */
  				if(name == ""){
  					$('.final_name_ck').css('display','block');
  					nameCheck = false;
  				}else{
  					$('.final_name_ck').css('display', 'none');
  					nameCheck = true;
  				}		
  				
  				/* 이메일 유효성 검사 */
  				if(mail == ""){
  					$('.final_mail_ck').css('display','block');
  					mailCheck = false;
  				}else{
  					$('.final_mail_ck').css('display', 'none');
  					mailCheck = true;
  				}		
  				
  				/* 주소 유효성 검사 */
  				if(addr == ""){
  					$('.final_addr_ck').css('display','block');
  					addressCheck = false;
  				}else{
  					$('.final_addr_ck').css('display', 'none');
  					addressCheck = true;
  				}		
  				
  				/* 최종 유효성 검사 */
  				if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&addressCheck ){
  					$("#join_form").attr("action", "/user/account");
  					$("#join_form").submit();			
  					
  				}		
  				
  				return false;
  			});
  		});

  	 //아이디 중복검사
  		$('.id_input').on("propertychange change keyup paste input", function(){
  			// console.log("keyup 테스트"); 
  			
  			var userId = $('.id_input').val();			// .id_input에 입력되는 값
  			var data = {userId : userId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
  			
  			$.ajax({
  				type : "post",
  				url : "user/userIdChk",
  				data : data,
  				success : function(result){
  					// console.log("성공 여부" + result);
  					if(result != 'fail'){
  						$('.id_input_re_1').css("display","inline-block");
  						$('.id_input_re_2').css("display", "none");	
  						idckCheck = true;
  					} else {
  						$('.id_input_re_2').css("display","inline-block");
  						$('.id_input_re_1').css("display", "none");
  						idckCheck = false;
  					}	
  				}// success 종료
  			}); // ajax 종료	
  		});// function 종료
  	
  		// 비밀번호 확인 일치 유효성 검사
  		$('.pwck_input').on("propertychange change keyup paste input", function(){
  			var pw = $('.pw_input').val();
  			var pwck = $('.pwck_input').val();
  			$('.final_pwck_ck').css('display','none');
  		
  			if(pw == pwck) {
  				$('.pwck_input_re_1').css('display','block');
  				$('.pwck_input_re_2').css('display','none');
  				pwckcorCheck = true;
  			} else {
  				$('.pwck_input_re_1').css('display','none');
  				$('.pwck_input_re_2').css('display','block');
  				pwckcorCheck = false;
  			}
  		});

  	  //  인증번호 이메일 전송
  	  	$(".mail_check_button").click(function(){
  	  		var email = $(".mail_input").val(); // 입력한 이메일
  	  		var checkBox = $(".mail_check_input"); // 인증번호 입력란
  	  		var boxWrap = $(".mail_check_input_box"); // 인증번호 입력한 박스
  	  		var warnMsg = $(".mail_input_box_warn"); // 이메일 입력 경고글
  	  		
  	  		/*
  	  		이메일 형식 유효성 검사
  	  		*/
			if(mailFormCheck(email)){
				warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인 해주세요");
				warnMsg.css("display","inline-block");
			} else {
				warnMsg.html("올바르지 못한 이메일 형식입니다.");
				warnMsg.css("display", "inline-block");
			}
  	  		
  	  		$.ajax({
  	  				type:"GET",
  	  				url:"mailCheck?email="+email,
  	  		success:function(data){
  	  			//console.log("data : " + data);
  	  			checkBox.attr("disabled", false);
  	  			boxWrap.attr("id", "mail_check_input_box_true");
  	  			code = data;
  	  		}
  	  		});
  	  	});
  	  //  인증번호 비교
  	  $(".mail_check_input").blur(function(){
  		  var inputCode = $(".mail_check_input").val(); // 입력코드
  		  var checkResult = $("#mail_check_input_box_warn"); //  비교 결과
  		  
  		  // 입력코드가 일치하는 경우와 일치하지 않는 경우를 처리하는 코드이다.
  		  if(inputCode == code) {
  			  checkResult.html("인증번호가 일치합니다.");
  			  checkResult.attr("class", "correct");
  			  mailnumCheck = true;
  		  } else {
  			  checkResult.html("인증번호를 다시 확인하세요");
  			  checkResult.attr("class", "incorrect");
  			  mailnumCheck = false;
  		  }
  	  });
  		
  		/* 입력 이메일 형식 유효성 검사 */
  		function mailFormCheck(email){
  			var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
  			return form.test(email);
  		}
  
  </script>

  </body>
</html>
