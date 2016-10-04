<%@include file="headerPage.jsp"%>
<center><br>
<font face="arial black" size="6" color="solidblue">ADMIN LOGIN</font><br><br>
<form action="adminLoginPgm.jsp" method="post">
<table>
<tr>
<td>Name</td>
<td><input class="boxed" type="text" name="name" required></td>
</tr>
<tr>
<td>Password</td>
<td><input class="boxed" type="password" name="password" required></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href="adminPge.jsp"><input type="submit" value="LOGIN"></a></td>
</tr>
</table>
</form>
</center>
<br>
<%@include file="footerPage.jsp"%>
