<%@page import="CRUD.Delete_event"%>
<%@page import="CRUD.Edit_values"%>
<%@page import="common.Event"%>
<%@page import="CRUD.Read_events"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body>


<%
String event=request.getParameter("event");
 

Delete_event obj_Delete_event=new Delete_event();

obj_Delete_event.delete_event(event);
 

%>

<script type="text/javascript">

 window.location.href="http://localhost:8085/CITA-project/event.jsp"
</script>


</body>
</html>