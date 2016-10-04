<%@include file="userHeaderPage.jsp"%>
<script type="text/javascript">
function check()
{
if(f.title.value==null||f.title.value=="")
{
alert("Title Name should not be empty");
return false;
}
else if(f.name.value==null||f.name.value=="")
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
else if(if.address.value==null||f.address.value=="")
{
alert("Address Should not be Empty:");
return false;
}
else if(if.zipcode.value==null||f.zipcode.value=="")
 { 
alert("Zipcode Should Not be Empty:");
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
else if(f.hotelname.value==null||f.hotelname.value=="")
{
alert("HotelName Should Not be Emptyy:");
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
<font size="5" face="arial black" color="solid blue">HOTEL BOOKING</font><br><br>
<form name="f" action="hotelBookingPgm.jsp" method="post" onsubmit="return check()">
<table>
<tr>
<td>Title</td>
<td><input class="boxed" type="text" name="title"></td>
</tr>
<tr>
<td>Guest Name</td>
<td><input class="boxed" type="text" name="name"></td>
</tr>
<tr>
<td>Gender</td>
<td><input class="boxed" type="radio" name="gender" value="male" checked>Male&nbsp;<input type="radio" name="gender" value="female">Female</td>
</tr>
<tr>
<td>Email</td>
<td><input class="boxed" type="text" name="email"></td>
</tr>
<tr>
<td>Phone</td>
<td><input class="boxed" type="text" name="phone"></td>
</tr>
<tr>
<td>Address</td>
<td><textarea class="boxed" rows="4" cols="16.5" name="address"></textarea></td>
</tr>
<tr>
<td>Postal Code</td>
<td><input class="boxed" type="text" name="zipcode"></td>
</tr>
<td>City</td>
<td><input class="boxed" type="text" name="city"></td>
</tr>
<td>Country</td>
<td><input class="boxed" type="text" name="country"></td>
</tr>
<tr>
<td>Date</td>
<td><input class="boxed" type="text" name="date"></td>
</tr>
<tr>
<td>Hotel Name</td>
<td>
<select name="hotelname" class="boxed">
<option value="">----SELECT----</option>
<option value="Vivan Taj">VIVAN TAJ</option>
<option value="Taj Residency">TAJ RESIDENCY</option>
<option value="Raddian">RADDIAN</option>
<option value="Business Class">BUSINESS CLASS</option>
<option value="FORTUNE KENSES">FORTUME KENSES</option>
<option value="Hotel Bliss">HOTEL BLISS</option>
</select>
</td>
</tr>
<tr>
<td>Room Type</td>
<td>
<select name="roomtype" class="boxed">
<option value="">  ----SELECT----   </option>
<option value="Ex.Suit">Ex.Suit</option>
<option value="Single">Single</option>
<option value="Double">Double</option>
<option value="Triple">Triple</option>
<option value="Family Room">Family Room</option>
</select>
</td>
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
<td><a href="userPage.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;<input type="submit" value="BOOK"></td>
</tr>
</table>
</form>
</center>
<br><br>
<%@include file="footerPage.jsp"%>
