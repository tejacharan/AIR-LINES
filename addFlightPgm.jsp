<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String flightname=request.getParameter("flightname");
String fnum=request.getParameter("fnum");
String from=request.getParameter("from");
String to=request.getParameter("to");
String depaturetime=request.getParameter("depaturetime");
String arrivaltime=request.getParameter("arrivaltime");
String flighttype=request.getParameter("flighttype");

PreparedStatement pst=DBUtil1.createPreparedStatement("insert into flighttable values(?,?,?,?,?,?,?,?)");

                  pst.setString(1,flightname);
                  pst.setString(2,fnum);
                  pst.setString(3,from);
				  pst.setString(4,to);
				  pst.setString(5,depaturetime);
				  pst.setString(6,arrivaltime);
				  pst.setString(7,flighttype);
                  pst.setString(8,null);


int i=pst.executeUpdate();

if(i>0)
{
response.sendRedirect("adminPage.jsp?message=<font color='green'>flight is added successfully</font>");
}
else
{
response.sendRedirect("addFlightPage.jsp?message=<font color='green'>flight is not added successfully</font>");
}
%>
