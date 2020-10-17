package CRUD;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.Customer;

public class Edit_Cus_values {
	
	
	
	public Customer get_value_of_user(String email){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		Customer obj_Customer=new Customer();
		
		 
		try {
			String querry="select * from customer where email=?";
			ps=connection.prepareStatement(querry);		
			ps.setString(3, email);;
			rs=ps.executeQuery();
			
			
			while(rs.next()){
			 
				
				
				obj_Customer.setusername(rs.getString("username"));
				obj_Customer.setfull_name(rs.getString("full_name"));	
				obj_Customer.setEmail(rs.getString("email"));
				obj_Customer.setpassword(rs.getString("password"));
				 
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return obj_Customer;
		
		
		
	}


	public void edit_user(Customer obj_Customer){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		  
		 
		try {
			String querry="update customer set username=?, full_name=?,password=? where email=?";
			ps=connection.prepareStatement(querry);	
			ps.setString(1, obj_Customer.getusername());;
			ps.setString(2, obj_Customer.getfull_name());;
			ps.setString(3, obj_Customer.getpassword());;
			ps.setString(4, obj_Customer.getEmail());;
			
			ps.executeUpdate();
			
			
			 
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
	 
		
		
	}



}
