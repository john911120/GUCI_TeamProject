package com.guci.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guci.domain.UserVO;
import com.guci.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserServiceImpl implements UserService {
	
	@Setter(onMethod_ = @Autowired)
	private UserMapper mapper;
	
	@Override
	public void userJoin(UserVO user) throws Exception {
	
		mapper.userJoin(user);	

	}

	@Override
	public int idCheck(String userId) throws Exception {
		
		return mapper.idCheck(userId);
	}

	@Override
	public UserVO userLogin(UserVO user) throws Exception {
		
		return mapper.userLogin(user);
	}

}
