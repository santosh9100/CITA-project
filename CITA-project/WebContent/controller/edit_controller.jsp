<%@page import="CRUD.Edit_values"%>
<%@page import="common.User_Bean"%>
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


User_Bean obj_User_Bean=new User_Bean();
obj_User_Bean.setusername(username);
obj_User_Bean.setfull_name(full_name);
obj_User_Bean.setEmail(email);
obj_User_Bean.setpassword(password);
 

Edit_values obj_Edit_values=new Edit_values();

obj_Edit_values.edit_user(obj_User_Bean);
 

%>

<script type="text/javascript">

 window.location.href="http://localhost:8085/CITA-project/staff.jsp"
</script>


</body>
</html>