package com.tangwen.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	public Connection getcon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/student?useUnicode=true&characterEncoding=utf-8";
			String user="root";
			String password="12345678";
			Connection conn=DriverManager.getConnection(url, user, password);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
