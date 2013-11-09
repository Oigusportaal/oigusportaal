<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="logo">
				<img src="images/o_logo.png" />
			</div>
			<div id="menu">
				<ul>
					<li><a href="." ><img src="images/kataloog.png"></a></li>
					<li><a href="http://www.google.com/" class="amenu"> <img src="images/kiirkysimus.png" /> </a></li>
					<li><a href="<%=request.getContextPath()%>/Login.jsp"> <img src="images/red_hover.png" /> </a></li>
				</ul>
			</div>
		</div>
		<div class="page">
			<p>DB SHUTDOWN & NOT LOGGED IN</p>
		</div>
		<div id="footer">
				<p>(c) 2013 OÜ Õigusportaal <a href="http://www.google.com/">|&nbsp;&nbsp;Kontakt&nbsp;|</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
		</div>
</body>
</html>