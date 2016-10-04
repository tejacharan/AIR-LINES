function checkUser(user)
{
	//alert("alt name:"+user);
	
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  //alert(xmlhttp);
   
xmlhttp.onreadystatechange=function()
  {  //alert(xmlhttp.readyState);
  if (xmlhttp.readyState==4 )
    {
	  //alert("response"+xmlhttp.responseText);
    document.getElementById("result").innerHTML=xmlhttp.responseText;
    
	}
	//file1='';
	//file2='';
  }
var url="checkUser.jsp?user="+user;
xmlhttp.open("POST",url,true);
xmlhttp.send();
}