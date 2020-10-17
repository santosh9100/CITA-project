<%@page import="email.send_email"%>
<%@page import="common.Customer"%>
<%@page import="CRUD.Edit_Cus_values"%>
<%@page import="common.Customer"%>
<%@page import="email.send_email"%>



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
<link rel="stylesheet" href="css/email.css">

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
	String email=(String)request.getParameter("email");
Edit_Cus_values obj_Edit_Cus_values=new Edit_Cus_values();
	
	Customer obj_Customer=obj_Edit_Cus_values.get_value_of_user(email);
	
	%>


	%>

	

<div class="wrapper">
               

 <h2>Send Email</h2><br>
  
  <form action= "sendmail.jsp" >
  
  
   <table>

                <tr>
                <td>To

                    </td>
                    <td><input type="text" name="mail" value="<%=email%>"><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                       Subject

                    </td>

                    <td>

                        <input type="text" name="sub" ><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                       Message

                    </td>

                    <td>

                        <textarea rows="20" cols="80" name="mess"></textarea><br/>

                    </td>

                </tr>

                <tr>

                    <td>
                        <input type="submit" value="Send">

                    </td>

                    <td>

                        <input type="reset" value="Reset">

                    </td>

                </tr>

            </table>
  
  
  
    
  
</div>


 
</body>
</html>