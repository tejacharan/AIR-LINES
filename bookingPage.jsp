<%@include file="userHeaderPage.jsp"%>
<center>
<br>
<script type="text/javascript">
function check()
{
if(f.fid.value==null||f.fid.value=="")
{
alert("fid hould not be empty");
return false;
}
else if(f.from.value==null||f.from.value=="")
{
alert("from should not be empty");
return false;
}
else if(f.to.value==null||f.to.value=="")
{
alert("to should not be empty");
return false;
}
else if(f.fullname.value==null||f.fullname.value=="")
{
alert("fullname should not be empty");
return false;
}
else if(f.email.value==null||f.email.value=="")
{
alert("email should not be empty");
return false;
}
else if(f.phno.value==null||f.phno.value=="")
{
alert("phno should not be empty");
return false;
}
else if(f.card.value==null||f.card.value=="")
{
alert("Card Number should not be empty");
return false;
}
else if(f.amount.value==null||f.amount.value=="")
{
alert("Amount should not be empty");
return false;
}
else if(f.tkts.value==null||f.tkts.value=="")
{
alert("tkts should not be empty");
return false;
}
}
</script>
<center>
<%
if(request.getParameter("message")!=null)
{
%>
<b><%out.println(request.getParameter("message"));%></b>
<%
}
%><br>
<font size="5" face="arial black" color="solid blue">BOOKING DETAILS</font><br>
<form name="f" action="bookingPgm.jsp" method="post" onsubmit="return check()">
<table>
<tr>
<td>FNum</td>
<td><input class="boxed" type="text" name="fid"></td>
</tr>
<tr>
<td>From</td>
<td><input class="boxed" type="text" name="from"></td>
</tr>
<tr>
<td>To</td>
<td><input class="boxed" type="text"name="to"></td>
</tr>
<tr>
<td>Fullname</td>
<td><input class="boxed" type="text" name="fullname"></td>
</tr>
<tr>
<td>Email</td>
<td><input class="boxed" type="text" name="email"></td>
</tr>
<tr>
<td>Phno</td>
<td><input class="boxed" type="text" name="phno"></td>
</tr>
<tr>
<td>Card Type</td>
<td>
<select name="card" class="boxed">
<option value="">-----SELECT----</option>
<option value="Debit Card">Debit Card</option>
<option value="Credit Card">Credit Card</option>
</select>
</option>
</td>
</tr>
<tr>
<td>Amount</td>
<td><input  class="boxed" type="text" name="amount"></td>
</tr>
<tr>
<td>Tickets</td>
<td><input class="boxed" type="text" name="tkts"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href="search.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;&nbsp;
<a href="bookingPage"><input type="submit" value="BOOK TICKET"></a></td>
</tr><br>
</table>
</form>
</center>
<br><br>
<br><br>
<br><br>
<br><br>
<%@include file="footerPage.jsp"%>



