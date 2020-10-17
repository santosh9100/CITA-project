package CRUD;

import java.sql.Connection;


import java.sql.PreparedStatement;

import common.DB_Connection;

public class Insert_Cus_Values {
	
	
	public void insert_values(String username,String full_name, String email, String password){
		
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		
		
		try {
			
		
		
		String query="insert into customer(username,full_name,email,password) values(?,?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, username);
		 ps.setString(2, full_name);
		 ps.setString(3, email);
		 ps.setString(4, password);
		
		 
		 ps.executeUpdate();
		 
		 
		 
		 
		} catch (Exception e) {
			System.err.println(e);
		}
		 
	}
	
	
	

}
