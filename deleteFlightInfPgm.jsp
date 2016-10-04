<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String fid=request.getParameter("fid");

PreparedStatement pst=DBUtil.createPreparedStatement("delete from flightTable where fid='"+fid+"'");

int i=pst.executeUpdate();

if(i>0)
{
response.sendRedirect("adminPage.jsp?message=<font color='blue'>Flight information is deleted successfully</font>");
}
else
{
response.sendRedirect("adminPage.jsp?message=<font color='blue'>Flight information is not deleted successfully</font>");
}
%>
