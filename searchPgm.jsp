<%@page import="java.io.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
String source=request.getParameter("source");
String destination=request.getParameter("destination");
String date=request.getParameter("date");

PreparedStatement pst=DBUtil1.createPreparedStatement("insert into searchTable values(?,?,?,?)");

				   pst.setString(1,source);	
                  pst.setString(2,destination);
                  pst.setString(3,date);
                  pst.setInt(4,null);
				  
ResultSet rs=pst.executeQuery();

if(i>0)
{
response.sendRedirect("bookingPage.jsp=<font color='Blue'>Enter Valid Sucessfully</font>");
}
else
{
response.sendRedirect("search.jsp?message=<font color='red'>Enter Valid Information</font>");
}
%>