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
PreparedStatement pst=DBUtil1.createPreparedStatement("select * from flightTable");

ResultSet rs=pst.executeQuery();

System.out.println("query is executed");
%>
<%@include file="adminHeaderPage.jsp"%>
<center>
<br>
<font size="5" face="arial black" color="solid blue">FLIGHT DETAILS</font><br><br>
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
<th class="sample1">Flight Name</th>
<th class="sample1">Flight Num</th>
<th class="sample1">From</th>
<th class="sample1">To</th>
<th class="sample1">Depature Time</th>
<th class="sample1">Arrival Time</th>
<th class="sample1">Flight Type</th>

</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="sample2"><%=rs.getString("flightname")%></td>
<td class="sample2"><%=rs.getString("fnum")%></td>
<td class="sample2"><%=rs.getString("from")%></td>
<td class="sample2"><%=rs.getString("to")%></td>
<td class="sample2"><%=rs.getString("depaturetime")%></td>
<td class="sample2"><%=rs.getString("arrivaltime")%></td>
<td class="sample2"><%=rs.getString("flighttype")%></td>
<%}%>
</table><br><br>
<a href="adminHome.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;&nbsp;
<a href="addFlightPage.jsp"><input type="button" value="ADD FLIGHT"></a>
</center>
<br><br>
<br><br>
<BR><BR>
<BR><BR>
<%@include file="footerPage.jsp"%>
