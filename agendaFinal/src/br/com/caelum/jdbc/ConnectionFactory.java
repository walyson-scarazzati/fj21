package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
public Connection getConnection() {
		
		System.out.println("Conectando ao banco");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String driver = "jdbc:mysql://localhost:3306/agenda";
			return DriverManager.getConnection(driver, "root", "123456");
		}
		catch(SQLException | ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
		
	}
}
