package CRUD;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.User_Bean;

public class Edit_values {
	
	
	
	public User_Bean get_value_of_user(String username){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		User_Bean obj_User_Bean=new User_Bean();
		
		 
		try {
			String querry="select * from admin where username=?";
			ps=connection.prepareStatement(querry);		
			ps.setString(1, username);;
			rs=ps.executeQuery();
			
			
			while(rs.next()){
			 
				
				
				obj_User_Bean.setusername(rs.getString("username"));
				obj_User_Bean.setfull_name(rs.getString("full_name"));	
				obj_User_Bean.setEmail(rs.getString("email"));
				obj_User_Bean.setpassword(rs.getString("password"));
				 
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return obj_User_Bean;
		
		
		
	}


	public void edit_user(User_Bean obj_User_Bean){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		  
		 
		try {
			String querry="update admin set full_name=?,email=?,password=? where username=?";
			ps=connection.prepareStatement(querry);		
			ps.setString(1, obj_User_Bean.getfull_name());;
			ps.setString(2, obj_User_Bean.getEmail());;
			ps.setString(3, obj_User_Bean.getpassword());;
			ps.setString(4, obj_User_Bean.getusername());;
			ps.executeUpdate();
			
			
			 
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
	 
		
		
	}



}
