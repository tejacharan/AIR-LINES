<%@include file="userHeaderPage.jsp"%>
<script type="text/javascript">
function check()
{
 if(f.name.value==null||f.name.value=="")
{
alert("Name Should not be Empty:");
return false;
}
else if((f.gender[0].checked == "" ) && ( f.gender[1].checked==""))
{
 alert("You have to select Genger");
 return false;
 }
else if(f.phone.value==null||f.phone.value=="")
{
alert("Phone Num should not be Empty:");
return false;
 }
else if(f.email.value==null||f.email.value=="")
{
alert("E-Mail Must be Matched");
return false;
}
else if(f.address.value==null||f.address.value=="")
{
alert("Address Should not be Empty:");
return false;
}
 else if(f.city.value==null||f.city.value=="")
{
 alert("City Should Not be Empty:");
 return false;
}
else if(f.country.value==null||f.country.value=="")
{
alert("Country Should Not be Emptyy:");
return false;
}
else if(f.date.value==null||f.date.value=="")
{
alert("Arrival Date Should Not be Emptyy:");
return false;
}
else if(f.pkgname.value==null||f.pkgname.value=="")
{
alert("Package Name Should Not be Emptyy:");
return false;
}
else if(f.roomtype.value==null||f.roomtype.value=="")
{
alert("RoomType Should Not be Emptyy:");
return false;
}
else if(f.numrooms.value==null||f.numrooms.value=="")
{
alert("Num Of Romms Should Not be Emptyy:");
return false;
}
else if(f.services.value==null||f.services.value=="")
{
alert("Services Should Not be Emptyy:");
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
<font size="5" face="arial black" color="solid blue">PACKAGE BOOKING</font><br><br>
<form name="f" action="pkgBookingPgm.jsp" method="post" onsubmit="return check()">
<table>
<tr>
<td>Guest Name</td>
<td><input class="boxed" type="text" name="name"></td>
</tr>
<tr>
<td>Gender</td>
<td><input class="boxed" type="radio" name="gender" value="male" checked>Male&nbsp;<input type="radio" name="gender" value="female">Female</td>
</tr>
<tr>
<td>Phone</td>
<td><input class="boxed" type="text" name="phone"></td>
</tr>
<tr>
<td>Email</td>
<td><input class="boxed" type="text" name="email"></td>
</tr>
<tr>
<td>Address</td>
<td><textarea class="boxed" rows="4" cols="16.5" name="address"></textarea></td>
</tr>
<tr>
<td>City</td>
<td><input class="boxed" type="text" name="city"></td>
</tr>
<tr>
<td>Country</td>
<td><input class="boxed" type="text" name="country"></td>
</tr>
<tr>
<td>Date</td>
<td><input class="boxed" type="text" name="date"></td>
</tr>
<tr>
<td>Package Type</td>
<td>
<select name="pkgname" class="boxed">
<option value="">----SELECT----</option>
<option value="2D/1N">2D/1N</option>
<option value="5D/4N">5D/4N</option>
</select>
</td>
</tr>
<tr>
<td>Room Type</td>
<td ><input class="boxed"  type="text" name="roomtype"></td>
</tr>
<tr>
<td>Rooms</td>
<td><input class="boxed" type="text" name="numrooms"></td>
</tr>
<tr>
<td>How to Find</td>
<td>
<select name="services" class="boxed">
<option value="">---SELECT---</option>
<option value="Our Website">Our Website</option>
<option value="Google">Google</option>
<option value="Magzines">Magzines</option>
<option value="Friends">Friends</option>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href="packageDetails.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;<input type="submit" value="BOOK"></td>
</tr>
</table>
</form>
</center>
<br><br>
<%@include file="footerPage.jsp"%>
