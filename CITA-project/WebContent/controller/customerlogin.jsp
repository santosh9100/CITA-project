<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
<%@page import="java.sql.*,java.util.*,javax.sql.*"%>
<%@page import="common.DB_Connection" %>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  
  String email = request.getParameter("email");
String password= request.getParameter("password");
  Class.forName("com.mysql.jdbc.Driver");
  Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/project?serverTimezone=UTC", "root", ""); 		
		Statement st = connection.createStatement();
		ResultSet rs= st.executeQuery("select * from customer where email = '"+ email +"'");

		if(rs.next())
		{
			if(rs.getString(4).equals(password))
			{
				%>
				<script>

				 window.location.href="http://localhost:8085/CITA-project/customer.html"
				</script>
				<% 
				
				
			}	
			 
			else {
				
				  %>
				  <script >

				  alert("OOpss, Invalid Credentials");
				  window.location.href="http://localhost:8085/CITA-project/customerlogin.html"
				</script>
				<% 
				
			}
		}
		
		else {
			 %>
			  <script>

			  alert("OOpss, Invalid Credentials");
			  window.location.href="http://localhost:8085/CITA-project/customerlogin.html"

			</script>
			<% 
			
			
		}
			%>
		
				

</body>
</html>