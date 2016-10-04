<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String name=request.getParameter("name");
String password=request.getParameter("password");

PreparedStatement pst=DBUtil1.createPreparedStatement("select * from adminLigin where name='"+name+"' and password='"+password+"'");

ResultSet rs=pst.executeQuery();

if(rs.next())
{
response.sendRedirect("adminPage.jsp");
}
else
{
response.sendRedirect("adminHome.jsp?message=<font color='red'>Login not successfull</font>");
}

%>