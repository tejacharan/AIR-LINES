<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String fid=request.getParameter("fid");
String from=request.getParameter("from");
String to=request.getParameter("to");
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
String phno=request.getParameter("phno");
String card=request.getParameter("card");
String amount=request.getParameter("amount");
String tkts=request.getParameter("tkts");

PreparedStatement pst=DBUtil1.createPreparedStatement("insert into bookingTable values(?,?,?,?,?,?,?,?,?,?)");
					pst.setString(1,fid);
					pst.setString(2,from);
					pst.setString(3,to);
					pst.setString(4,fullname);
					pst.setString(5,email);
					pst.setString(6,phno);
					pst.setString(7,card);
					pst.setString(8,amount);
					pst.setString(9,tkts);
					pst.setString(10,null);

int i=pst.executeUpdate();

if(i>0)
{
response.sendRedirect("search.jsp?message=<font color='blue'>Ticket Booking Successfully</font>");
}
else
{
response.sendRedirect("bookingPage.jsp?message=<font color='blue'>The Ticket Booking is Not Successfully</font>");
}
%>

