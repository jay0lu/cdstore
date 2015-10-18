package com.cdstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBDriver {
	
	public static Statement connectDb () {
		try{ 
		//loading jdbc Driver
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		}catch(Exception ex){
			System.out.println("Error loading jdbc Driver");
		}

		//connection to DB
		String url = "jdbc:mysql://localhost:3306/cdStore"; //DB connection url
		try{
			Connection myConn = DriverManager.getConnection(url, "root","abc123");

			//create statement
			Statement myStmt = myConn.createStatement();
			return myStmt;
		}catch (Exception exc){
			exc.printStackTrace();
		}
		return null;
	}

}