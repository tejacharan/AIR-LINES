<%@include file="headerPage.jsp"%>
<center>
<%
if(request.getParameter("message")!=null)
{
%>
<b><%out.println(request.getParameter("message"));%></b>
<%
}
%><br>
<font size="15" face="Times New Roman" color="red"><b>USER LOGIN</b></font><br>
<form action="userHomePgm.jsp" method="post">
<table>
<tr>
<td>User Name</td>
<td><input class="boxed" type="text" name="uname"></td>
</tr>
<tr>
<td>PassWord</td>
<td><input class="boxed" type="password" name="password1"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" value="LOGIN">&nbsp;&nbsp;&nbsp <a href="userRegPage.jsp"><input type="button" value="REGISTRATION"></a></td>
</tr>
</table>
</form>
</center>
<%@include file="footerPage.jsp"%>