package CRUD;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.Event;

public class Read_events {

	
	public static void main(String[] args) {
		Read_events obj_Read_Values=new Read_events();
		
		obj_Read_Values.get_values();
	}
	
	
	public List<Event> get_values(){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		 List<Event> list=new ArrayList<Event>();
		
		try {
			String querry="select * from event";
			ps=connection.prepareStatement(querry);		
			rs=ps.executeQuery();
			
			
			while(rs.next()){
				
				
				
				Event obj_Event=new Event();
				System.out.println(rs.getString("event"));
				System.out.println(rs.getString("location"));
				System.out.println(rs.getString("time"));
				System.out.println(rs.getString("filename"));
				System.out.println(rs.getString("path"));
				System.out.println(rs.getString("c_name"));
				System.out.println(rs.getString("c_location"));
				System.out.println(rs.getString("c_email"));
				System.out.println(rs.getString("h_name"));
				System.out.println(rs.getString("h_location"));
				System.out.println(rs.getString("h_email"));
				System.out.println(rs.getString("s_name"));
				System.out.println(rs.getString("s_email"));
				

				
				
				obj_Event.setEvent(rs.getString("event"));
				obj_Event.setLocation(rs.getString("location"));
                obj_Event.setTime(rs.getString("time"));
                obj_Event.setFilename(rs.getString("filename"));
				obj_Event.setPath(rs.getString("path"));
                obj_Event.setC_name(rs.getString("c_name"));
                obj_Event.setC_location(rs.getString("c_location"));
				obj_Event.setC_email(rs.getString("C_email"));
                obj_Event.setH_name(rs.getString("h_name"));
                obj_Event.setH_location(rs.getString("h_location"));
				obj_Event.setH_email(rs.getString("h_email"));
                obj_Event.setS_name(rs.getString("s_name"));
				obj_Event.setS_email(rs.getString("s_email"));
                
                
                
                
               
				
				list.add(obj_Event);
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return list;
		
		
		
	}
	
	
}
