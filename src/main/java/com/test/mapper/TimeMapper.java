package com.test.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
//	@Select("SELECT sysdate from dual")
	public String getTime();
	
	public String getTime2();
}
