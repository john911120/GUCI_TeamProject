package com.guci.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
@AllArgsConstructor
@RequestMapping(value = "/user")
@Log4j
public class UserController {
	
//	@Autowired
	private UserService userservice; 
	
//    @Autowired
    private JavaMailSender mailSender;
	
	// 회원가입 페이지로 이동
	@RequestMapping(value = "/account", method=RequestMethod.GET)
	public void accountGet() {
		// log.info("회원 가입 홈페이지로 이동");
	}
	
	// 로그인 페이지로 이동
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void loginGet() {
		// log.info("로그인 페이지 진입");
	}
	
	//회원가입
		@RequestMapping(value="/account", method=RequestMethod.POST)
		public String joinPOST(UserVO user) throws Exception{
			
			// log.info("join 진입");
			
			// 회원가입 서비스 실행
			userservice.userAccount(user);
			
			// log.info("join Service 성공");
			
			return "redirect:/index";
			
		}
		
	// 아이디 중복 검사
	@RequestMapping(value = "/userIdChk", method= RequestMethod.POST)
	@ResponseBody
	public String userIdChkPOST(String userId) throws Exception{
		// log.info("userIdChk() 진입");
		int result = userservice.idCheck(userId);
		log.info("결과값 : " + result);
		if(result != 0) {
			return "fail"; // 중복 아이디가 존재한다.
		} else {
			return "success";
		}
	}
	
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
        String setFrom = "wtt54@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";

        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        String num = Integer.toString(checkNum);
        
        return num;
    }
    
    /* 로그인 */
    @RequestMapping(value="login", method=RequestMethod.POST)
    public String loginPOST(HttpServletRequest request, UserVO user, RedirectAttributes rttr) throws Exception{
        
//        System.out.println("login 메서드 진입");
//        System.out.println("전달된 데이터 : " + user);
    	
    	HttpSession session = request.getSession();
    	UserVO uvo = userservice.UserLogin(user);
    	
    	if(uvo == null) {
    		int result = 0;
    		rttr.addFlashAttribute("result", result);
    		return "redirect:/user/login";
    	}
    	
    	session.setAttribute("member", uvo);
        return "redirect:/main";
    }
    
}
