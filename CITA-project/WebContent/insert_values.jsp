<%@page import="java.util.Iterator"%>
<%@page import="common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="CRUD.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script
     src="https://kit.fontawesome.com/64d58efce2.js"
     ></script>
<link rel="stylesheet" href="css/edit.css">
<script
  src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script> 
$(function(){
  $("#header").load("heading.html"); 
  $("#sidebar").load("navigationside.html"); 
  
});
</script>

</head>

<div id="header"></div>
<div id="sidebar"></div>

<body>



<div class="wrapper">
       
  <p style="text-align:center;"><img src="image/logo.png" alt="cita logo"  width="400px" height="80"></p>
        

 <h2>add new member</h2><br>
  
<form action="controller/insert_controller.jsp">
    <div class="input_field">
     <input type="text" name="username" placeholder="Username" /><br>
    </div>
    <div class="input_field">
       <input type="text" name="full_name"  placeholder="Full_name" ><br>
    </div>
    <div class="input_field">
       <input type="text" name="email"  placeholder="Email" ><br>
    </div>
    <div class="input_field">
       <input type="text" name="password"   placeholder="Password"><br>
    </div>
   <br>
 
    <button >ADD</button>
    
       
    
   
  </form>
  
</div>


</body>
</html>




