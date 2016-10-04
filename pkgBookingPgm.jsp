<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String address=request.getParameter("address");
String city=request.getParameter("city");
String country=request.getParameter("country");
String date=request.getParameter("date");
String pkgname=request.getParameter("pkgname");
String roomtype=request.getParameter("roomtype");
String numrooms=request.getParameter("numrooms");
String services=request.getParameter("services");

PreparedStatement pst=DBUtil1.createPreparedStatement("insert into packageTable values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
					pst.setString(1,name);
					pst.setString(2,gender);
					pst.setString(3,phone);
					pst.setString(4,email);
					pst.setString(5,address);
					pst.setString(6,city);
					pst.setString(7,country);
					pst.setString(8,date);
					pst.setString(9,pkgname);
					pst.setString(10,roomtype);	
					pst.setString(11,numrooms);
					pst.setString(12,services);
					pst.setString(13,null);

int i=pst.executeUpdate();

if(i>0)
{
response.sendRedirect("packageDetails.jsp?message=<font color='green'>PACKAGE Booking Successfully</font>");
}
else
{
response.sendRedirect("pkgBooking.jsp?message=<font color='green'> PACKAGE Booking is Not Successfully</font>");
}
%>

