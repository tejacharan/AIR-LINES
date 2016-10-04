<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%@page import="java.util.Random"%>
<%
String uname=request.getParameter("uname");
System.out.println("uname:"+uname);
String password1=request.getParameter("password1");
String password2=request.getParameter("password2");
String dateOfBirth=request.getParameter("dateOfBirth");
String gender=request.getParameter("gender");
String phoneno=request.getParameter("phoneno");
String emailid=request.getParameter("emailid");
String address=request.getParameter("address");

Random obj=new Random();
   int passid=obj.nextInt(10000);
   session.setAttribute("passid",passid);
   System.out.println("&&&&&&&&&"+session.getAttribute("passid"));

PreparedStatement pst=DBUtil1.createPreparedStatement("insert into studentRegTable values(?,?,?,?,?,?,?,?,?,?)");

				   pst.setInt(1,passid);	
                  pst.setString(2,uname);
                  pst.setString(3,password1);
                  pst.setString(4,password2);
                  pst.setString(5,dateOfBirth);
                  pst.setString(6,gender);
                  pst.setString(7,phoneno);
                  pst.setString(8,emailid);
                  pst.setString(9,address);
				  pst.setString(10,null);
                 
int i=pst.executeUpdate();

if(i>0)
{
response.sendRedirect("userRegPage.jsp?message=<font color='green'>User is Registered Successfully</font>");
}
else
{
response.sendRedirect("userRegPage.jsp?message=<font color='red'>User is Not Registered Successfully</font>");
}
%>
