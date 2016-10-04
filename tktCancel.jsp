<%@ include file="userHeaderPage.jsp"%>
<br><br>
<center>
<%
if(request.getParameter("message")!=null)
{
	out.println(request.getParameter("message"));
}
%><br>
<font size="5" face="arial black" color="solid blue">Ticket Cancel Page</font><br><br>
<form name="f" action="tktCanclPgm.jsp" method="post" onsubmit="return check()">
<table>
<tr>
<td>Enter Pass Id</td>
<td><input class="boxed" type="text" name="passid" required></td>
</tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><a href="Cancelation.jsp"><input type="button" value="BACK"></a>&nbsp;<a href="tktCancelPage.jsp"><input type="submit" value="SEND ID"></a></td>
</tr>
</center>
</table>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br>
<%@ include file="footerPage.jsp"%>


	
		
		
	
		
