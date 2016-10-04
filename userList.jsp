<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<style>
table.sample {
  border: 1px solid blue;
  width: 70%;
}
th.sample1 {
  border: 1px solid blue;  
}
td.sample2 {
  border: 1px solid blue;
 }
</style>
<%
PreparedStatement pst=DBUtil1.createPreparedStatement("select * from studentRegTable");

ResultSet rs=pst.executeQuery();

System.out.println("query is executed");
%>
<%@include file="adminHeaderPage.jsp"%>
<center>
<br>
<font size="5" face="arial black" color="solid blue">USER DETAILS</font><br><br>
<%
if(request.getParameter("message")!=null)
{
%>
<b><%out.println(request.getParameter("message"));%></b>
<%
}
%>
<table class="sample">
<tr>
<th class="sample1">User Name</th>
<th class="sample1">Password</th>
<th class="sample1">RE-PASSWORD</th>
<th class="sample1">DOB</th>
<th class="sample1">Gender</th>
<th class="sample1">Phone Num</th>
<th class="sample1">Email Id</th>
<th class="sample1">Address</th>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="sample2"><%=rs.getString("uname")%></td>
<td class="sample2"><%=rs.getString("password1")%></td>
<td class="sample2"><%=rs.getString("password2")%></td>
<td class="sample2"><%=rs.getString("dateOfBirth")%></td>
<td class="sample2"><%=rs.getString("gender")%></td>
<td class="sample2"><%=rs.getString("phoneno")%></td>
<td class="sample2"><%=rs.getString("emailid")%></td>
<td class="sample2"><%=rs.getString("address")%></td>
</tr>
<%}%>
</table><br><br>
</center>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><BR>
<br>

<%@include file="footerPage.jsp"%>