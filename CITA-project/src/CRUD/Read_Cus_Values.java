package CRUD;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.Customer;

public class Read_Cus_Values {

	
	public static void main(String[] args) {
		Read_Cus_Values obj_Read_Cus_Values=new Read_Cus_Values();
		
		obj_Read_Cus_Values.get_values();
	}
	
	
	public List<Customer> get_values(){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		 List<Customer> list=new ArrayList<Customer>();
		
		try {
			String querry="select * from customer";
			ps=connection.prepareStatement(querry);		
			rs=ps.executeQuery();
			
			
			while(rs.next()){
				
				Customer obj_Customer=new Customer();
				System.out.println(rs.getString("username"));
				System.out.println(rs.getString("full_name"));
				System.out.println(rs.getString("email"));
				System.out.println(rs.getString("password"));

				
				
				obj_Customer.setusername(rs.getString("username"));
				obj_Customer.setfull_name(rs.getString("full_name"));
                obj_Customer.setEmail(rs.getString("email"));
                obj_Customer.setpassword(rs.getString("password"));

                
				
				list.add(obj_Customer);
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return list;
		
		
		
	}
	
	
}
