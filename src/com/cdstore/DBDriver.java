package com.cdstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBDriver {
	
	public static Statement connectDb () {
		try{
			//connection to DB
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cdStore", "root","abc123");
			
			//create statement
			Statement myStmt = myConn.createStatement();
			

			return myStmt;
		}
		catch (Exception exc){
			exc.printStackTrace();
		}
		return null;
	}

}