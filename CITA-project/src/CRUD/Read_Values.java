package CRUD;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.User_Bean;

public class Read_Values {

	
	public static void main(String[] args) {
		Read_Values obj_Read_Values=new Read_Values();
		
		obj_Read_Values.get_values();
	}
	
	
	public List<User_Bean> get_values(){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		 List<User_Bean> list=new ArrayList<User_Bean>();
		
		try {
			String querry="select * from admin";
			ps=connection.prepareStatement(querry);		
			rs=ps.executeQuery();
			
			
			while(rs.next()){
				
				User_Bean obj_User_Bean=new User_Bean();
				System.out.println(rs.getString("username"));
				System.out.println(rs.getString("full_name"));
				System.out.println(rs.getString("email"));
				System.out.println(rs.getString("password"));

				
				
				obj_User_Bean.setusername(rs.getString("username"));
				obj_User_Bean.setfull_name(rs.getString("full_name"));
                obj_User_Bean.setEmail(rs.getString("email"));
                obj_User_Bean.setpassword(rs.getString("password"));

                
				
				list.add(obj_User_Bean);
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return list;
		
		
		
	}
	
	
}
