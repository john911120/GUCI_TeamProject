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
	private UserMapper mapper;
	
//	@Test
//	public void testInsert() {
//	UserVO user = new UserVO();
//	
//	user.setUserId("s");
//	user.setUserPw("s");
//	user.setUserName("홍길동");
//	user.setUserPhone("010-1111-1111");
//	user.setUserEmail("guci@guci.com");
//	user.setUserAddr1("addr1");
//	user.setUserAddr2("addr2");
//	user.setUserAddr3("addr3");
//	user.setVerifys(0L);
//	
//	mapper.userJoin(user);
//	}
	
	// 아이디 중복검사
//		@Test
//		public void memberIdChk() throws Exception{
//			String id = "s";	// 존재하는 아이디
//			String id2 = "test123";	// 존재하지 않는 아이디
//		mapper.idCheck(id);
//		mapper.idCheck(id2);
//		}
	

	 
    /* 로그인 쿼리 mapper 메서드 테스트 */
    @Test
    public void userLogin() throws Exception{
        
        UserVO user = new UserVO();    // MemberVO 변수 선언 및 초기화
        
        /* 올바른 아이디 비번 입력경우 */
        user.setUserId("s");
        user.setUserPw("s");
        
        /* 올바른 않은 아이디 비번 입력경우 */
        //member.setMemberId("test1123");
        //member.setMemberPw("test1321321");
        
        mapper.userLogin(user);
        System.out.println("결과 값 : " + mapper.userLogin(user));
        
    }

}
