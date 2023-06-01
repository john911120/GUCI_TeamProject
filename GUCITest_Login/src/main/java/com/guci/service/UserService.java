package com.guci.service;

import com.guci.domain.UserVO;

public interface UserService {

	public void userJoin(UserVO user) throws Exception;
	
	public int idCheck(String userId) throws Exception;
	
	public UserVO userLogin(UserVO user) throws Exception;
	
}
