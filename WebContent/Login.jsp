<% response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
// Set IE extended HTTP/1.1 no-cache headers (use addHeader).  
   response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
// Set standard HTTP/1.0 no-cache header.  
    response.setHeader("Pragma", "no-cache");  
    %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>		
		<title>Õigusportaal</title>
		
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
							<!--  login  -->
			<div id="login">
				<h2>Logi sisse</h2>
				<form action="<%=request.getContextPath()%>/LoginServlet" method="post">
					<tabel>
					
						<tr>
							<td><input type="text" name="email" value="Email" class="loginInput"><br></td>
						</tr>
							
						<tr>
							<td><input type="password" name="password" value="Password" class="loginInput"><br></td>
						</tr>
							
						<tr>
							<td>
								<select name="userCategories" class="loginInputSpecial" >
									<option value="0" class="static">--Select User Type--</option>
									<option value="1" class="sub_1">Admin</option>
									<option value="2" class="sub_2">Bureau</option>
								</select>
							</td>
						</tr>
					
						<tr>
							<td><input type="submit" value="Logi sisse"  class="loginInputSpecial"/></td>
						</tr>
								
						<tr>
							<td colspan="2"><a href="<%=request.getContextPath()%>/ForgotPassword.jsp" style="">Unustasid parooli?</a>
							<a href="<%=request.getContextPath()%>/BureauRegister.jsp">Registreeru</a></td>
						</tr>
				</tabel>
				</form>
			</div>
			</div>
			<div id="footer">
				<p>(c) 2010 OÜ Õigusportaal <a href="http://www.google.com/">|&nbsp;&nbsp;Kontakt&nbsp;|</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
			</div>
		</div>
	</body>
</html>