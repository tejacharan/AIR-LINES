<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<%
String passid=(String)session.getAttribute("passid1");
System.out.println("passid :"+passid);
String name=request.getParameter("name");
String phoneno=request.getParameter("phoneno");
String emailid=request.getParameter("emailid");
String reason=request.getParameter("reason");
String type=request.getParameter("type");

   PreparedStatement pst=DBUtil1.createPreparedStatement("insert into flightCancelTable values(?,?,?,?,?,?,?)");

             	  pst.setString(1,passid);
				  pst.setString(2,name);
				  pst.setString(3,phoneno);
				  pst.setString(4,emailid);
				  pst.setString(5,reason);
				  pst.setString(6,type);
				  pst.setString(7,null);
								  
				  int i1=pst.executeUpdate();

			if(i1>0)
			{
				response.sendRedirect("Cancelation.jsp?message=<font color='green'>Ticket Cancelation  is Sucess</font>");
			}
			else
			{
				response.sendRedirect("tktCancelPage.jsp?message=<font color='red'>Ticket Cancelation  is Failure</font>");
			}

%>

