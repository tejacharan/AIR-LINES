<%@include file="userHeaderPage.jsp" %>
<center>
<%
if(request.getParameter("message")!=null)
{
%>
<b><%out.println(request.getParameter("message"));%></b>
<%
}
%><br>
<font size="5" face="arial black" color="solid blue">CANCELATION PAGE</font><br><br>
<form action="userHomePgm.jsp" method="post">
<table>
<tr>
<td>Cancelation Tickets</td>
<td><a href="tktCancel.jsp"><input type="button" value="Cancel  Ticket"></a></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;</td>
<td><a href="userPage.jsp"><input type="button" value="BACK"></a></td>
</tr>
</table>
</form>
</center>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<BR>
<%@include file="footerPage.jsp"%>