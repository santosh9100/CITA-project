<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script
     src="https://kit.fontawesome.com/64d58efce2.js"
     ></script>
<link rel="stylesheet" href="css/eventform.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eventform</title>
    </head>
    <body>
        
        
        
        <div class="wrapper"><br>
              
 <h2>Event Details</h2>
  
        <form action="FileUploadServelet" method="post" enctype="multipart/form-data">
    <div class="input_field">
     <input type="text" name="event" placeholder="Event Name" /><br>
    </div>
    <div class="input_field">
       <input type="text" name="location"  placeholder="Location" ><br>
    </div>
    <div class="input_field">
       <input type="text" name="time"  placeholder="Time" ><br>
    </div><br>
     <h2>Catering</h2>
     <div class="input_field">
       <input type="text" name="c_name"  placeholder="Name" ><br>
    </div>
    <div class="input_field">
       <input type="text" name="c_location"  placeholder="Location" ><br>
    </div>
    
    <div class="input_field">
       <input type="text" name="c_email"   placeholder="Email Address"><br>
    </div>
   <br>
    <h2>Hotel</h2>
     <div class="input_field">
       <input type="text" name="h_name"  placeholder="Name">
    </div>
    <div class="input_field">
       <input type="text" name="h_location"  placeholder="Location" >
    </div>
    
    <div class="input_field">
       <input type="text" name="h_email"   placeholder="Email Address">
    </div>
    <br>
     <h2>Sponsers</h2> <br>
     <div class="input_field">
       <input type="text" name="s_name"  placeholder="Name" >
    </div>
    <div class="input_field">
       <input type="text" name="s_email"   placeholder="Email Address">
    </div>
    <br>
    <h1>Upload the event image or logo</h1><br>
     <center><div>
       <input type="file" name="file"> 
    </div></center>
    <br><br>
    
 <a href="#">Cancel </a>
    <button>Submit</button>
    
    
       
    
   
  </form>
  
</div>
        
        
        
           
      
    <center><a href="viewAll.jsp">View All </a></center>
</body>
</html>
