package com.guci.mapper;

import com.guci.domain.UserVO;

public interface UserMapper {

	//회원가입
		public void userJoin(UserVO user);
	// 아이디 중복 검사
		public int idCheck(String userId);
	// 로그인 
	    public UserVO userLogin(UserVO user);
}
