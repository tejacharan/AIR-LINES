<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String title=request.getParameter("title");
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String address=request.getParameter("address");
String  zipcode=request.getParameter("zipcode");
String city=request.getParameter("city");
String country=request.getParameter("country");
String date=request.getParameter("date");
String hotelname=request.getParameter("hotelname");
String roomtype=request.getParameter("roomtype");
String numrooms=request.getParameter("numrooms");
String services=request.getParameter("services");

PreparedStatement pst=DBUtil1.createPreparedStatement("insert into hotelBookingTable values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

                  pst.setString(1,title);
                  pst.setString(2,name);
                  pst.setString(3,gender);
                  pst.setString(4,phone);
                  pst.setString(5,email);
                  pst.setString(6,address);
                  pst.setString(7,zipcode);
                  pst.setString(8,city);
				  pst.setString(9,country);
				  pst.setString(10,date);
				  pst.setString(11,hotelname);
				  pst.setString(12,roomtype);
				  pst.setString(13,numrooms);
				  pst.setString(14,services);
				  pst.setString(15,null);
				  
int i=pst.executeUpdate();

if(i>0)
{
response.sendRedirect("hotelSearch.jsp?message=<font color='green'>Hotel Booking Is Successfull</font>");
}
else
{
response.sendRedirect("?message=<font color='red'>Hotel Booking Not Successful</font>");
}
%>
