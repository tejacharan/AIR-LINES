<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String passid=request.getParameter("passid");
System.out.println("passid &&&&&&&&:"+passid);
session.setAttribute("passid1",passid);
PreparedStatement pst=DBUtil1.createPreparedStatement("select * from flightCancelTable where passid='"+passid+"'");

ResultSet rs=pst.executeQuery();

if(rs.next())
{
response.sendRedirect("tktCancelPage.jsp");
}
else
{
response.sendRedirect("tktCancel.jsp?message=<font color='red'>Enter Valid PassID</font>");
}

%>