package com.guci.dbtest;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {

	static {
		try {
			Class.forName("Oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) { }
	}
	
	@Test
	public void testConnection() {
		String url="jdbc:oracle:thin:@localhost:1521:orcl1";
		try(Connection conn = DriverManager.getConnection(url, "guci", "guci")){
			log.info(conn);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
