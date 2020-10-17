<%@page import="CRUD.Edit_values"%>
<%@page import="common.Customer"%>
<%@page import="CRUD.Edit_Cus_values"%>
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


Customer obj_Customer=new Customer();
obj_Customer.setusername(username);
obj_Customer.setfull_name(full_name);
obj_Customer.setEmail(email);
obj_Customer.setpassword(password);
 

Edit_Cus_values obj_Edit_Cus_values=new Edit_Cus_values();

obj_Edit_Cus_values.edit_user(obj_Customer);
 

%>

<script type="text/javascript">

 window.location.href="http://localhost:8085/CITA-project/attendees.jsp"
</script>


</body>
</html>