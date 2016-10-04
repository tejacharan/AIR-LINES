<%@include file="userHeaderPage.jsp"%>
<link type="text/css" rel="stylesheet" href="dhtmlgoodies_calendar/dhtmlgoodies_calendar.css?random=20051112" media="screen"></link>
<script type="text/javascript" src="dhtmlgoodies_calendar/dhtmlgoodies_calendar.js?random=20060118"></script>
<script type="text/javascript">
function check()
   {	
    if(f.source.value==null||f.source.value=="")
	{
	alert("Source Name should not be empty");
	return false;
    }
	else if(f.destination.value==null||f.destination.value=="")
	{
	alert("DESTINATION Name  should not be empty");
	return false;
    }
	else if(f.date.value==null||f.date.value=="")
	{
	alert("DATE should not be empty");
	return false;
    }
}
</script>

<%
if(request.getParameter("message")!=null)
{
	out.println(request.getParameter("message"));
}
%>   
<center> <h1>Search For Flights</h1>
<br/><br/><br/>
<table>	<form action="searchPgm.jsp" name="f" method="post"  onSubmit="return check()">
		<tr>
		<td><p>SOURCE AIRPORT</p></td>
		<td><p>DESTINATION AIRPORT</p></td>
		</tr>
		<tr>
		<td><p><input class="boxed" type="text" name="source"></p></td>
		<td><p><input class="boxed" type="text" name="destination"></p></td>
		</tr>
		<tr>
		<td><p>CALENDER</p></td>
		</tr>
		<tr>
<td><input class="boxed" type="text" name="date" readonly><input type="button" value="DATE" onclick="displayCalendar(document.forms[0].date,'yyyy/mm/dd',this)"></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><center><a href="userPage.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;
<a href="bookingPage.jsp"><input type="button" value="BOOK SEAT"></a></center></td>
</tr>
</table>
</form>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>

<%@include file="footerPage.jsp"%>