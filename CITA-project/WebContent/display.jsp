<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="css/eventdisplay.css">
    <div>  <form action="eventform.jsp" >
   <button>add events</button>
   </form>
   </div>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Show</title>
    </head>
    <body>
    <div class="wrapper">
     <div>  <form action="eventform.jsp" >
   <button>add events</button>
   </form>
   </div>
   
   
   
   
   
   
    <div class="wrapper">
   
    
 
    <h> ONGOING EVENTS </h><br><br>
  
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/project?serverTimezone=UTC", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM event";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    String event = rs.getString("event");
                    String location = rs.getString("location");
                    String time= rs.getString("time");
                    String filename = rs.getString("filename");
        %>


    
 <div class="row">
  <div class="column left" style="background-color:#fafafa;">
    <a></a><image src="image/<%=filename%>" width="200" height="210"/></a>
</div>
  <div class="column right" style="background-color:#ffffff;">
    <ul>
    <li><%=event%></li>
     <li><%=location%></li>
      <li><%=time%></li></br>
 	<li><a href="controller/delete_event.jsp?event=<%=event%>">Delete</a></li>
 
    </ul>
  </div>



        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
          </div>
          </div>
          </div>
    </body>
</html>