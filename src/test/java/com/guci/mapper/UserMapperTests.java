package com.guci.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.guci.domain.UserVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserMapperTests {
	
	@Setter(onMethod_ = {@Autowired})
	private UserMapper usermap;
	
	/*
	@Test
	public void UserInsert() {
		UserVO user = new UserVO();
		user.setUserId("aaa");
		user.setUserPw("aaa");
		user.setUserName("aasa");
		user.setUserPhone("010-1234-1562");
		user.setUserEmail("sam@sam.com");
		user.setUserAddr1("서울시 마포구");
		user.setUserAddr2("대흥동 123");
		
		usermap.userAccount(user);
		
		log.info(user);
	}
	
	*/
	@Test
	public void userIdChk() throws Exception{
		String id = "admin";	// 존재하는 아이디
		String id2 = "test123";	// 존재하지 않는 아이디
		usermap.idCheck(id);
		usermap.idCheck(id2);
	}
	@Test
	public void UserLogin() {
		UserVO user = new UserVO();
		
		 // 올바른 아이디 비번 입력경우 
		user.setUserId("admin");
        user.setUserPw("pw00");
        
        /*
        // 올바른 않은 아이디 비번 입력경우 
        user.setUserId("test1123");
        user.setUserPw("test1321321");
		 */
        
        usermap.UserLogin(user);
        System.out.println("결과 값 : " + usermap.UserLogin(user));
        
    }
}
