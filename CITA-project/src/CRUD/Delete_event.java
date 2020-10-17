package CRUD;

import java.sql.Connection;


import java.sql.PreparedStatement;

import common.DB_Connection;

public class Delete_event {

	
	public void delete_event(String event){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
	 
		 
		 
		try {
			String querry="delete from event where event=?";
			ps=connection.prepareStatement(querry);		
			ps.setString(1, event);;
			ps.executeUpdate();
			
			
			 
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		 
		
		
	}

}
