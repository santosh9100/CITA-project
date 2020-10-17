<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
  src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/edit.css">

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
	String username=(String)request.getParameter("username");
	
	
	Edit_values obj_Edit_values=new Edit_values();
	
	User_Bean obj_User_Bean=obj_Edit_values.get_value_of_user(username);
	
	%>




<div class="wrapper">
       
  <p style="text-align:center;"><img src="image/logo.png" alt="cita logo"  width="240" height="100"></p>
        

 <h2>update information</h2><br>
  
  <form action="controller/edit_controller.jsp" >
    <div class="input_field">
       <input type="text" name="username" value="<%=username%>"><br>
    </div>
    <div class="input_field">
       <input type="text" name="full_name" value="<%=obj_User_Bean.getfull_name()%>"><br>
    </div>
    <div class="input_field">
       <input type="text" name="email" value="<%=obj_User_Bean.getEmail()%>"><br>
    </div>
    <div class="input_field">
       <input type="text" name="password" value="<%=obj_User_Bean.getpassword()%>"><br>
    </div>
   <br>
 
    <button>Update</button>
    
       
    
   
  </form>
  
</div>
 
</body>
</html>