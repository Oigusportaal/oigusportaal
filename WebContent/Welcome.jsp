<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="container" style="width: 700px">

		<div id="header" style="background-color: #000080;">
			<table style="margin-bottom: 0; color: #F5FFFA;" border="0">

				<tr>
					<td><a href="http://www.w3schools.com""><h2
								style="margin-bottom: 0; color: #F5FFFA;">Home |</h2></a></td>
					<td><a href="http://www.w3schools.com""><h2
								style="margin-bottom: 0; color: #F5FFFA;">Quick Question |</h2></a></td>
					<td><a href="http://www.w3schools.com""><h2
								style="margin-bottom: 0; color: #F5FFFA;">Bureau</h2></a></td>
				</tr>
			</table>
		</div>


		<div id="Welcome" style="height: 30px; width: 365px; float: center;">
			<h2 id="Welcome">WELCOME TO LAW PORTAL</h2>
		</div>

		<div id="Table" style="height: 110px; width: 500px; float: center;">
			<table id="Table" border="0">

				<tr>
					<td><h3 style="color: RED;">Economic |</h3></td>
					<td><h3 style="color: BLUE;">Confidential |</h3></td>
					<td><h3 style="color: GREEN;">Quality |</h3></td>
					<td><h3 style="color: ORANGE;">Easy To Use</h3></td>
				</tr>
			</table>
		</div>


		



<form name="field" id="field" action="<%=request.getContextPath()%>/FieldSearchServlet" method="get">


<input type="radio" name="field" value="Divorce">Divorce<br>
<input type="radio" name="field" value="Robbery">Robbery<br>
<input type="radio" name="field" value="Crime">Crime<br>
<input type="radio" name="field" value="Rape">Rape<br>


<input type="submit" value="Go ->">
</form> 

	</div>


</body>
</html>