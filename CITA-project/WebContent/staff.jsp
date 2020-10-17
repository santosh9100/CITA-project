<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
    
<html>
<head>
<script
  src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
 <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/staff.css">

<script> 
$(function(){
  $("#header").load("heading.html"); 
  $("#sidebar").load("navigationside.html"); 
  
});
</script>
</head>
<body>
<div id="header"></div>
<div id="sidebar"></div>
<%
Read_Values obj_Read_Values=new Read_Values();

List<User_Bean> list=obj_Read_Values.get_values(); 


Iterator<User_Bean> it_list=list.iterator();
%>


  <table class="content-table">
  

<thead>

<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>


    <td>
  <form action="insert_values.jsp"  >
   
   <button>add</button>
   
   </form>
   </td>
   
    </tr>
    </thead>
  
  <tbody>
  
    <tr>
    
      <th>User_name</th>
      <th>Full_Name</th>
      <th>Email</th>
      <th>Password </th>
      <th colspan="2">Action </th>
      
       
    </tr>
    
  </tbody>
  
 
  <tfoot>
  <%
while(it_list.hasNext()){
	User_Bean obj_User_Bean=new User_Bean();
	obj_User_Bean=it_list.next();
	
	
%>
 
   <tr>	
					<td><%=obj_User_Bean.getusername() %></td>
					<td><%=obj_User_Bean.getfull_name() %></td>
					<td><%=obj_User_Bean.getEmail() %></td>
					<td><%=obj_User_Bean.getpassword() %></td>
						<td>
					<a href="edit.jsp?username=<%=obj_User_Bean.getusername() %>"><i class="far fa-edit" style="color: #FF8C00"></i></a>
					</td>
					<td>
					<a href="controller/delete_controller.jsp?username=<%=obj_User_Bean.getusername()%>"><i class="far fa-trash-alt" style="color: #FF8C00"></i></a>
					
					</td>		
					
						
						
			</tr>
			 <% } %>
  </tfoot>
 
</table>
</body>
</html>