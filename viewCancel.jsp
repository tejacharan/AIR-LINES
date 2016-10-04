<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<style>
table.sample {
  border: 1px solid blue;
  width: 50%;
}
td.sample1 {
  border: 1px solid blue;
 }
</style><%
PreparedStatement pst=DBUtil1.createPreparedStatement("select * from flightCancelTable");

ResultSet rs=pst.executeQuery();

System.out.println("query is executed");
%>
<%@include file="adminHeaderPage.jsp"%>
<center>
<br>
<font size="5" face="arial black" color="solid blue">VIEW CANCELATION TICKETS</font><br><br>
<%
if(request.getParameter("message")!=null)
{
%>
<font color="blue"><%out.println(request.getParameter("message"));%></font>
<%}%>
<table class="sample">
<tr>
<td class="sample1"><b>Name</b></td>
<td class="sample1"><b>Phone Num</b></td>
<td class="sample1"><b>E-Mail</b></td>
<td class="sample1"><b>Reason To Cancel</b></td>
<td class="sample1"><b>Cancelation Type</b></td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="sample1"><%=rs.getString("name")%></td>
<td class="sample1"><%=rs.getString("phoneno")%></td>
<td class="sample1"><%=rs.getString("emailid")%></td>
<td class="sample1"><%=rs.getString("reason")%></td>
<td class="sample1"><%=rs.getString("type")%></td>
</tr>
<%
}
%>
</table>
<br> 
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>

</center>

<%@include file="footerPage.jsp"%>