package com.guci.connection;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	// (81)- 교재의 내용과 약간 코드를 변경하였다.
	// static init block : 가장 먼저 실행
	static {
		try {
			Class.forName("Oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) { }
	}
	
	@Test
	public void testConnection() {
		String url="jdbc:oracle:thin:@localhost:1522:orcl";
		try(Connection conn = DriverManager.getConnection(url, "guci", "guci")){
			log.info(conn);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
	
}
