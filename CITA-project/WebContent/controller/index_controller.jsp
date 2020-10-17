<%@page import="CRUD.Insert_Values"%>
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
String username=request.getParameter("username");
String full_name=request.getParameter("full_name");
String email=request.getParameter("email");
String password=request.getParameter("password");

 
Insert_Values obj_Insert_Values=new Insert_Values();

obj_Insert_Values.insert_values(username,full_name, email,password);


%>
<script type="text/javascript">

 window.location.href="http://localhost:8085/CITA-project/adminlogin.html"
</script>	

</body>
</html>