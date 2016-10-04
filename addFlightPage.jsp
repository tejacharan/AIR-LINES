<%@include file="adminHeaderPage.jsp"%>
<center>
<br>
<font size="5" face="arial black" color="solid blue">ADD FLIGHT</font><br><br>
<form action="addFlightPgm.jsp" method="post">
<table>
<tr>
<td>Flight Name</td>
<td><input class="boxed" type="text" name="flightname"></td>
</tr>
<tr>
<td>Flight Num</td>
<td><input class="boxed" type="text" name="fnum"></td>
</tr>
<tr>
<td>From</td>
<td><input class="boxed" type="text" name="from"></td>
</tr>
<tr>
<td>To</td>
<td><input class="boxed" type="text" name="to"></td>
</tr>
<tr>
<td>Depature Time</td>
<td><input class="boxed" type="text" name="depaturetime"></td>
</tr>
<tr>
<td>Arrival Time</td>
<td><input class="boxed" type="text" name="arrivaltime"></td>
</tr>
<tr>
<td>Flight Type</td>
<td>
<select name="flighttype" class="boxed">
<option value="">---SELECT---</option>
<option value="Domestic">Domestic</option>
<option value="Business">Business</option>
<option value="EuroBusiness">EuroBusiness</option>
<option value="Econamical">Econamical</option>
<option value="FirstClass">First Class</option>
<option value="Suits">Suits</option>
</select>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href="adminPage.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;<input type="submit" value="ADD FLIGHT"></td>
</tr>
</table>
</form>
<br><br>
</center>
<BR><BR>
<BR><BR>
<BR><BR>
<BR><BR>
<%@include file="footerPage.jsp"%>
