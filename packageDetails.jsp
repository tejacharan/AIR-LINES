<html>
<center>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>
<body>
<%@ include file="userHeaderPage.jsp"%>
<body><br><br>
<%
if(request.getParameter("message")!=null)
{
%>
<b><%out.println(request.getParameter("message"));%></b>
<%
}
%>
<h5 align="center" color="orange">Tour Package Details</h5>
<style>
table.sample {
  border: 1px solid blue;
  width: 60%;
}
td.sample1 {
  border: 1px solid blue;
 }
 th.sample2 {
  border:1px solid blue;
</style>
<table border=1 class="sample">
<tr>
<td class="sample1" align="center">
<table border=1 class="sample">
<tr>
<td class="sample1" align="center" size="5" face="arial black">Type Of Package</td>
</tr>
<tr>
<td class="sample1" align="center" size="5" face="arial black">Package Type</td>
</tr>
</table>
</td>
<th class="sample2">Single</th>
<th class="sample2">Couple</th>
<th class="sample2">Quad</th>
<th class="sample2">With Bed</th>
</tr>
<tr>
<th class="sample2">2D/1N Package</th>
<td class="sample1">15,000</td>
<td class="sample1">25,000</td>
<td class="sample1">30,000</td>
<td class="sample1">1,000</td>
</tr>
<tr>
<th class="sample2">5D/4N Package</th>
<td class="sample1">35,000</td>
<td class="sample1">60,000</td>
<td class="sample1">75,000</td>
<td class="sample1">800</td>
</tr>
<tr>
<th class="sample2">Extension Night</td>
<td class="sample1">5,000</td>
<td class="sample1">8,500</td>
<td class="sample1">10,000</td>
<td class="sample1">900</td>
</tr>
</table>
<br>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><a href="userPage.jsp"><input type="button" value="BACK"></a>&nbsp;&nbsp;<a href="pkgBooking.jsp"><input type="submit" value="BOOK PACKAGE"></td>


<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<%@ include file="footerPage.jsp"%>
</body>
</center>
</html>


	
		
		
	
		