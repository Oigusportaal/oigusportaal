<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Oigusportaal</title>
<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
</head>
<body>
	<div id="wrapper">
		<div id="header">
					<div id="logo">
						<img src="images/o_logo.png" />
					</div>
					<div id="menu">
						<ul>
							<li><a href="." ><img src="images/kataloog2.png"></a></li>
							<li><a href="http://www.google.com/" class="amenu"> <img src="images/kiirkysimus.png" /> </a></li>
							<li><a href="<%=request.getContextPath()%>/Login.jsp"> <img src="images/red.png" /> </a></li>
						</ul>
					</div>
		</div>
		<div id="login">
			<div id="login_container">
				<form method="get" action="BureauLoginServlet">
					<table>
						<h1>Logi sisse</h1>
						<tr>
							<td><label for="loginEmail">E-mail</label></td>
							<td><input id="loginEmail" type="text" name="email"></td>
						</tr>
					
						<tr>
							<td><label>Passsword</label></td>
							<td><input type="password" name="password"></td>
						</tr>
					
						<tr>
							<td><input type="submit" value="submit"></td>
							<td><input type="reset" value="Reset"></td>
						</tr>	
					
						<tr>
							<td><b>New User!</b><td>
							<a href="<%=request.getContextPath()%>/BureauRegister.jsp">Register here!</a>
						</tr>
					</table>
				</form>
			</div>
		</div>

	</div>
</body>
</html>