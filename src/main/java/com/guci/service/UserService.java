package com.guci.service;

import com.guci.domain.UserVO;

public interface UserService {
	
	//회원가입
	public void userAccount(UserVO user) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String userId) throws Exception;
	
	// 로그인
	public UserVO UserLogin(UserVO user) throws Exception;
}
