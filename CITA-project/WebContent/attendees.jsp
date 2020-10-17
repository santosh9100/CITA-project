<%@page import="java.util.Iterator"%>
<%@page import="common.Customer"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Read_Cus_Values"%>
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
Read_Cus_Values obj_Read_Cus_Values=new Read_Cus_Values();

List<Customer> list=obj_Read_Cus_Values.get_values(); 


Iterator<Customer> it_list=list.iterator();
%>


  <table class="content-table">
  

<thead>

<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>


   
    </tr>
    </thead>
  
  <tbody>
  
    <tr>
    
      <th>User_name</th>
      <th>Full_Name</th>
      <th>Email</th>
      <th colspan="2">Action </th>
      
       
    </tr>
    
  </tbody>
  
 
  <tfoot>
  <%
while(it_list.hasNext()){
	Customer obj_Customer=new Customer();
	obj_Customer=it_list.next();
	
	
%>
 
   <tr>	
					<td><%=obj_Customer.getusername() %></td>
					<td><%=obj_Customer.getfull_name() %></td>
					<td><%=obj_Customer.getEmail() %></td>
					
					
					
						<td>
					<a href="email.jsp?email=<%=obj_Customer.getEmail() %>"><i class="far fa-paper-plane" style="color: #FF8C00"></i></a>
					</td>
					
		</tr>
			 <% } %>
  </tfoot>
 
</table>
</body>
</html>