package com.guci.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	private String userId;
	private String userPw;
	private String userName;
	private String userPhone;
	private String userEmail;
	private String userAddr1;
	private String userAddr2;
	private Date regDate;
	private long verifys;
	
}
