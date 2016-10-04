<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String username=request.getParameter("username");
String password1=request.getParameter("password1");
String dateOfBirth=request.getParameter("dateOfBirth");
String gender=request.getParameter("gender");
String phoneno=request.getPrameter("phoneno");
String emailid=request.getParameter("emailid");
String address=request.getParameter("address"); 

PreparedStatement pst=DBUtil1.createPreparedStatement("insert into uselist values(?,?,?,?,?,?,?,?)");

                  pst.setString(1,username);
				  pst.setString(2,password1);
				  pst.setString(3,dateOfBirth);
				  pst.setString(4,gender);
				  pst.setString(5,phoneno);
				  pst.setString(6,emailid);
				  pst.setString(7,address);
				  pst.setString(8,null);
%>