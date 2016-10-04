<%@page import="com.hline.DBUtil1"%>
<%@page import="java.sql.*"%>
<%
 
	
	String uname = request.getParameter("user");
	
		System.out.println("******"+uname);
		
		String query1 = "select username from  where username='"+uname+"'";	
		Statement pstmt = DBUtil.createStatement();
		ResultSet rs = pstmt.executeQuery(query1);

		if(rs.next())
		{	
			session.setAttribute("un",uname);
			out.println("<font color=red>Try Other User Name</font>");
		}
		
	
%>