package com.kitri.travelia;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MariaConnectionTest {
	private static final String DRIVER="org.mariadb.jdbc.Driver";
	private static final String URL="jdbc:mariadb://localhost:3307/travelia";
	private static final String USER ="root";
	private static final String PW ="sy1234";
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		try(Connection con = DriverManager.getConnection(URL,USER,PW)){
			System.out.println(con);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
