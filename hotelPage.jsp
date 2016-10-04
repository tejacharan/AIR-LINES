<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.hline.DBUtil1"%>
<style>
table.sample {
  border: 1px solid blue;
  width: 100%;
}
td.sample1 {
  border: 1px solid blue;
 }
</style><%
PreparedStatement pst=DBUtil1.createPreparedStatement("select * from hotelBookingTable");

ResultSet rs=pst.executeQuery();

System.out.println("query is executed");
%>
<%@include file="adminHeaderPage.jsp"%>
<center>
<br>
<font size="5" face="arial black" color="solid blue">VIEW HOTELBOOKING DETAILS</font><br><br>
<%
if(request.getParameter("message")!=null)
{
%>
<font color="blue"><%out.println(request.getParameter("message"));%></font>
<%}%>
<table class="sample">
<tr>
<td class="sample1">Title</td>
<td class="sample1">Guest Name</td>
<td class="sample1">Gender</td>
<td class="sample1">Phone</td>
<td class="sample1">E-Mail</td>
<td class="sample1">Address</td>
<td class="sample1">Zip Code</td>
<td class="sample1">City</td>
<td class="sample1">Country</td>
<td class="sample1">Date</td>
<td class="sample1">Hotel Name</td>
<td class="sample1">Room Type</td>
<td class="sample1">Rooms</td>
<td class="sample1">Services</td>
</tr>
<%
while(rs.next())
{
%>
<tr>
<td class="sample1"><%=rs.getString("title")%></td>
<td class="sample1"><%=rs.getString("name")%></td>
<td class="sample1"><%=rs.getString("gender")%></td>
<td class="sample1"><%=rs.getString("phone")%></td>
<td class="sample1"><%=rs.getString("email")%></td>
<td class="sample1"><%=rs.getString("address")%></td>
<td class="sample1"><%=rs.getString("zipcode")%></td>
<td class="sample1"><%=rs.getString("city")%></td>
<td class="sample1"><%=rs.getString("country")%></td>
<td class="sample1"><%=rs.getString("date")%></td>
<td class="sample1"><%=rs.getString("hotelname")%></td>
<td class="sample1"><%=rs.getString("roomtype")%></td>
<td class="sample1"><%=rs.getString("numrooms")%></td>
<td class="sample1"><%=rs.getString("services")%></td>
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
<br>

</center>

<%@include file="footerPage.jsp"%>