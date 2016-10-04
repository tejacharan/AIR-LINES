
<%@ include file="userHeaderPage.jsp"%>
<script type="text/javascript">
function check()
{	
    if(f.name.value==null||f.name.value=="")
	{
	alert("Name should not be empty");
	return false;
    }
	else if(f.phoneno.value==null||f.phoneno.value=="")
	{
	alert("Phone No should not be empty");
	return false;
    }
	else if(f.emailid.value==null||f.emailid.value=="")
	{
	alert("Email-Id should not be empty");
	return false;
    }
	else if(f.reason.value==null||f.reson.value=="")
	{
	alert("Reason should not be empty");
	return false;
    }

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
<%
if(request.getParameter("message")!=null)
{
	out.println(request.getParameter("message"));
}
%>
<center>
<font face="arial black" color="solid blue">Ticket Cancelation </font><br><br>
<form name="f" action="tktCancelPgm.jsp" method="post" onsubmit="return check()">
<table>
<tr>
<td>Name</td>
<td><input class="boxed" type="text" name="name"></td>
</tr>
<tr>
<td>Phone No</td>
<td><input class="boxed" type="text" name="phoneno"></td>
</tr>
<tr>
<td>Email-Id</td>
<td><input class="boxed"  type="text" name="emailid"></td>
</tr>
<tr>
<td>Cancelation</td>
<td>
<select name="reason" class="boxed">
<option value="">-------REASON------</option>
<option value="Injurious Problems">INJURIOUS PROBLEMS</option>
<option value="Natural Disatser">NATURAL DISASTER </option>
<option value="Finacial Problem">FINACIAL PROBLEMS</option>
<option value="Traffic Accident">TRAFFIC ACCIDENT</option>
<option value="Terrorism Attack">TERRORISM ATTACK</option>
<option value="Death Occurence">DEATH OCCURENCE</option>
</select>
</td>
</tr>
<tr>
<td>Cancelation</td>
<td>
<select name="type" class="boxed">
<option value="">-----TYPE----</option>
<option value="Flight Ticket Cancel">FLIGHTTICKET CANCEL</option>
<option value="Hotel Booking Cancel">HOTELBOOKING CANCEL</option>
<option value="Package Tour Cancel">PACKAGE CANCEL</option>
</select>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href="tktCancel.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;<input type="submit" value="NEXT"></td>
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
<%@ include file="footerPage.jsp"%>




	
		
		
	
		
