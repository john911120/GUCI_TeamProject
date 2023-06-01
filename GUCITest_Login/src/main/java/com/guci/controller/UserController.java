package com.guci.controller;



import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.guci.domain.UserVO;

import com.guci.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value = "/user")
@Log4j
@AllArgsConstructor
public class UserController {
	@Autowired
	private UserService userservice;
	 @Autowired
	 private JavaMailSender mailSender;
	 
//	 @Autowired
//	    private BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void loginGET() {
		
		log.info("회원가입 페이지 진입");
		
	}
	
	//회원가입
		@RequestMapping(value="/join", method=RequestMethod.POST)
		public String joinPOST(UserVO user) throws Exception{
			
//			  String rawPw = "";            // 인코딩 전 비밀번호
//		        String encodePw = "";        // 인코딩 후 비밀번호
//		        
//		        rawPw = user.getUserPw();            // 비밀번호 데이터 얻음
//		        encodePw = pwEncoder.encode(rawPw);        // 비밀번호 인코딩
//		        user.setUserPw(encodePw);            // 인코딩된 비밀번호 user객체에 다시 저장
		        
		        /* 회원가입 쿼리 실행 */
		        userservice.userJoin(user);
		 
			
			return "redirect:/";
			
		}
		
		// 아이디 중복 검사
		@RequestMapping(value = "/userIdChk", method = RequestMethod.POST)
		@ResponseBody
		public String userIdChkPOST(String userId) throws Exception{
			
			log.info("userIdChk() 진입");			
			int result = userservice.idCheck(userId);			
			log.info("결과값 = " + result);		
			if(result != 0) {				
				return "fail";	// 중복 아이디가 존재				
			} else {				
				return "success";	// 중복 아이디 x				
			}	
		} // userIdChkPOST() 종료
	
		 /* 이메일 인증 */
	    @RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	    @ResponseBody
	    public String mailCheckGET(String email) throws Exception{
	        
	        /* 뷰(View)로부터 넘어온 데이터 확인 */
	        log.info("이메일 데이터 전송 확인");
	        log.info("인증번호 : " + email);
	                
	        /* 인증번호(난수) 생성 */
	        Random random = new Random();
	        int checkNum = random.nextInt(888888) + 111111;
	        log.info("인증번호 " + checkNum);
	        
	        /* 이메일 보내기 */
	        String setFrom = "tlsdudfuf124@naver.com";
	        String toMail = email;
	        String title = "회원가입 인증 이메일 입니다.";
	        String content = 
	                "홈페이지를 방문해주셔서 감사합니다." +
	                "<br><br>" + 
	                "인증 번호는 " + checkNum + "입니다." + 
	                "<br>" + 
	                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
	   
	    
 		String num = Integer.toString(checkNum);
		return num;
	   }
		
		
	//로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void accountGET() {
		
		log.info("로그인 페이지 진입");
		
	}
	
	   /* 로그인 */
    @RequestMapping(value="login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, UserVO user, RedirectAttributes rttr) throws Exception{
        
//        System.out.println("login 메서드 진입");
//        System.out.println("전달된 데이터 : " + user);
    	 HttpSession session = request.getSession();
    	 UserVO lvo = userservice.userLogin(user);
    	 
    	 if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
             
             int result = 0;
             rttr.addFlashAttribute("result", result);
             return "redirect:/user/login";
             
         }
         
         session.setAttribute("user", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
         
         return "redirect:/";
    	
    }
}
