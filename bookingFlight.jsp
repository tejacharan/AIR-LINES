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
PreparedStatement pst=DBUtil1.createPreparedStatement("select * from bookingTable");

ResultSet rs=pst.executeQuery();

System.out.println("query is executed");
%>
<%@include file="adminHeaderPage.jsp"%>
<center>
<br>
<font size="5" face="arial black" color="solid blue">BOOKING DETAILS</font><br><br>
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
<th class="sample1">Fid</th>
<th class="sample1">From</th>
<th class="sample1">To</th>
<th class="sample1">FullName</th>
<th class="sample1">Email</th>
<th class="sample1">Phone No</th>
<th class="sample1">Card Type</th>
<th class="sample1">Amount</th>
<th class="sample1">Tickets</th>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="sample2"><%=rs.getString("fid")%></td>
<td class="sample2"><%=rs.getString("from")%></td>
<td class="sample2"><%=rs.getString("to")%></td>
<td class="sample2"><%=rs.getString("fullname")%></td>
<td class="sample2"><%=rs.getString("email")%></td>
<td class="sample2"><%=rs.getString("phno")%></td>
<td class="sample2"><%=rs.getString("card")%></td>
<td class="sample2"><%=rs.getString("amount")%></td>
<td class="sample2"><%=rs.getString("tkts")%></td>
</tr>
<%}%>
</table><br><br>
</center>
<br><br>
<br><br>
<br><br>
<br><br>
<BR><BR>
<BR>
<%@include file="footerPage.jsp"%>