package com.guci.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guci.domain.UserVO;
import com.guci.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserServiceImpl implements UserService {

	@Setter(onMethod_ =  @Autowired)
	private UserMapper usermapper;
	
	@Override
	public void userAccount(UserVO user) throws Exception {
		usermapper.UserAccount(user);
	}

	@Override
	public int idCheck(String userId) throws Exception {
		return usermapper.idCheck(userId);
	}

	@Override
	public UserVO UserLogin(UserVO user) throws Exception {
		return usermapper.UserLogin(user);
	}
}
