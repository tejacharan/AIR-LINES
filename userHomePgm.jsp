<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String uname=request.getParameter("uname");
//System.out.println("uname:"+uname);
String password1=request.getParameter("password1");

PreparedStatement pst=DBUtil1.createPreparedStatement("select * from studentRegTable where uname='"+uname+"' and password1='"+password1+"'");

ResultSet rs=pst.executeQuery();

if(rs.next())
{
response.sendRedirect("userPage.jsp");
}
else
{
response.sendRedirect("userHome.jsp?message=<font color='red'>Login is Not Successfully</font>");
}
%>
