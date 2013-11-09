<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Õigusportaal</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
		
		<!-- end #menu -->
		<div class="page">
			<div class="content">
				<div class="regSuccess">
					<p>Teie konto pole edukalt registreeritud! Palun avage aktiveerimislink õigesti või laske endale uus saata.</p>
					</div>
				</div>
		</div>
		<!-- end #content -->
		<div style="clear: both;">&nbsp;</div>
		<!-- end #page -->
		<div id="footer">
			<p>(c) 2013 OÜœ Õigusportaal <a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kontakt</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
		</div>
		<!-- end #footer -->
	</div>
</body>

</html>