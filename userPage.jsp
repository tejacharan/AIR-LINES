<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<style>
table.sample {
  border: 1px solid blue;
  width: 70%;
}
td.sample1 {
  border: 1px solid blue;
 }
</style><%
PreparedStatement pst=DBUtil1.createPreparedStatement("select * from flightTable");


ResultSet rs=pst.executeQuery();

System.out.println("query is executed");
%>
<%@include file="userHeaderPage.jsp"%>
<center>
<br><br>

<font size="5" face="arial black" color="solid blue">VIEW FLIGHT DETAILS</font><br><br>
<%
if(request.getParameter("message")!=null)
{
%>
<font color="blue"><%out.println(request.getParameter("message"));%></font>
<%}%>
<table class="sample">
<tr>
<td class="sample1">Flight Name</td>
<td class="sample1">Flight Num</td>
<td class="sample1">From</td>
<td class="sample1">To</td>
<td class="sample1">Depature Time</td>
<td class="sample1">Arrival Time</td>
<td class="sample1">Flight Type</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="sample1"><%=rs.getString("flightname")%></td>
<td class="sample1"><%=rs.getString("fnum")%></td>
<td class="sample1"><%=rs.getString("from")%></td>
<td class="sample1"><%=rs.getString("to")%></td>
<td class="sample1"><%=rs.getString("depaturetime")%></td>
<td class="sample1"><%=rs.getString("arrivaltime")%></td>
<td class="sample1"><%=rs.getString("flighttype")%></td>
</tr>
<%
}
%>
</table>
<br> 
<tr>
<td>&nbsp;&nbsp;</td>
<td><a href="search.jsp"><input type="button" value="SEARCH FLIGHT"></a></td>
</tr>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br>

</center>

<%@include file="footerPage.jsp"%>