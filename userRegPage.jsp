<%@include file="headerPage.jsp"%>
<link type="text/css" rel="stylesheet" href="dhtmlgoodies_calendar/dhtmlgoodies_calendar.css?random=20051112" media="screen"></link>
<script type="text/javascript" src="dhtmlgoodies_calendar/dhtmlgoodies_calendar.js?random=20060118"></script>
<script type="text/javascript">
function check()
{
if(f.uname.value==null||f.uname.value=="")
{
alert("User Name should not be empty");
return false;
}
else if(f.password1.value==null||f.password1.value=="")
{
alert("Password should not be empty");
return false;
}
else if(f.password2.value==null||f.password2.value=="")
{
alert("Retype Password should not be empty");
return false;
}
else if(f.password1.value!=f.password2.value)
{
alert("Passwored must be matched");
return false;
}
else if(f.dateOfBirth.value==null||f.dateOfBirth.value=="")
{
alert("Date Of Birth should not be empty");
return false;
}
else if((f.gender[0].checked == "" ) && ( f.gender[1].checked==""))
{
alert("You have to select Genger");
return false;
}
else if(f.phoneno.value==null||f.phoneno.value=="")
{
alert("Phoneno should not be empty");
return false;
}
else if(f.emailid.value==null||f.emailid.value=="")
{
alert("Email Id should not be empty");
return false;
}
else if(f.address.value==null||f.address.value=="")
{
alert("Address should not be empty");
return false;
}
return true;
}
function validatephone(xxxxx) {
	 var maintainplus = '';
 	var numval = xxxxx.value
 	if ( numval.charAt(0)=='+' ){ var maintainplus = '+';}
	//if(numval.charAt(0)='9'||numval.charAt(0)=='7'||numval.charAt(0)=='8'){}
 	curphonevar = numval.replace(/[\\A-Za-z!"£$%^&*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g,'');
 	xxxxx.value = maintainplus + curphonevar;
 	var maintainplus = '';
 	xxxxx.focus;
}

function isValidEmail(content)
{
valid = false;
var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
if (filter.test(content)) {
valid=true;
}else{
alert("not a valid emailid");
document.getElementById('emailid').focus();
valid = false;
}
return valid;
}	
</script>

<center>

<%
if(session.getAttribute("passid")!=null)
{
%>
<script>
alert('This Pass Code :<%=(Integer)session.getAttribute("passid")%>')
</script>
<%
}
%>
<br>
<font size="10" face="Times New Roman" color="red"><b>PASSENGER REGISTRATION</b></font> <br><br>
<form name="f" action="userRegPgm.jsp" method="post" onsubmit="return check()">
<table><img src="images/registration.gif" width="100" height="150" border="" alt="" align="left"  float="left">
<td>User Name</td>
<td><input class="boxed" type="text" name="uname"></td>
</tr>
<tr>
<td>Password</td>
<td><input class="boxed"  type="password" name="password1"></td>
</tr>
<tr>
<td>Re-Password</td>
<td><input class="boxed" type="password" name="password2"></td>
</tr>
<tr>
<td>Date Of Birth</td>
<td><input class="boxed" type="text" name="dateOfBirth" readonly><input type="button" value="Calendar" onclick="displayCalendar(document.forms[0].dateOfBirth,'yyyy/mm/dd',this)"></td>
</tr>
<tr>
<td>Gender</td>
<td><input class="boxed" type="radio" name="gender" value="male" checked>Male&nbsp;<input type="radio" name="gender" value="female">Female</td>
</tr>
<tr>
<td>Phone No:</td>
<td><input class="boxed" type="text" name="phoneno" maxlength="10" onkeyup="validatephone(this)"></td>
</tr>
<tr>
<td>Email Id</td>
<td><input class="boxed" type="text" name="emailid" onblur="isValidEmail(this.value)"></td>
</tr>
<tr>
<td>Address</td>
<td><textarea class="boxed" rows="3" cols="16.5" name="address"></textarea></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href="userHome.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;<input type="submit" value="REGISTER"></td>
</tr>
</table>
</form>
</center>
<br>
<%@include file="footerPage.jsp"%>
