<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="Details.BureauDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
    <%@include file="srchstyle.css" %>
    </style>		
		<script src="js/jquery.js"></script>
		<script src="js/functions.js"></script>
		<title>�igusportaal</title>
	</head>
	
	<body>
	
	<%
		ArrayList<BureauDetails> br = (ArrayList<BureauDetails>) request
				.getAttribute("bureau");
	%>
	
		<div id="wrapper">
			<div id="header">
				<img id="logo" src="CatalogImages/o_logo.png" />
			</div>
			<div id="menu">
				<a href="."> <img src="CatalogImages/kataloog_hover.png" /> </a>
				<a href="http://www.google.com/"> <img src="CatalogImages/kiirkysimus.png" /> </a>
				<a href="http://www.google.com/"> <img src="CatalogImages/red.png" /> </a>
			</div>
			
			<div class="page">
				<h2>Otsing</h2>
				<div class="content">
					<form action="<%=request.getContextPath()%>/SearchServlet" method="get">
					<p>Asukoht</p>
					<select name="regions">
						<option value="P�hja-Eesti" >P�hja-Eesti</option>
						<option value="L�una-Eesti">L�una-Eesti</option>
						<option value="L��ne-Eesti">L��ne-Eesti</option>
						<option value="Ida-Eesti">Ida-Eesti</option>
					</select>
					<select name="counties">
						<option value="Harjumaa">Harjumaa</option>
						<option value="Tartumaa">Tartumaa</option>
						<option value="Viljandimaa">Viljandimaa</option>
						<option value="Parnumaa">P�rnumaa</option>
					</select>
					<select name="cities">
						<option value="Tallinn">Tallinn</option>
						<option value="Tartu">Tartu</option>
						<option value="Viljandi">Viljandi</option>
						<option value="P�rnu">P�rnu</option>
					</select>
					<input type="checkbox" name="includeToSearchLoc" value="IncludeLoc">Kasuta otsingus
				
					<p>Keskmine tunnihind</p>
					<div id="avgprice">
						<input name="averageprice" type="range" min=1 max=100 value=50 style="width: 40%">
						<output for="foo">1</output>
						<input type="checkbox" name="includeToSearchPrice" value="IncludePrice" >Kasuta otsingus	
					</div>
					<input type="hidden" name="fieldName" value=" <%= request.getAttribute("fieldName") %>">
					
					<p id="success">Viimane edulugu</p>
					<input type="submit" value="Otsi" id="searching"/>
					</form>
			</div>
			
			<div class="page">
			<h2>--Selected Burueas for the Related filed --</h2>
		<table width="95%" border="1">
			<tr>
				<%
					for (int i = 0; i < br.size(); i++) {
				%>

				<td width="20" align="center" class="borderdesign">
				<td width="100" class="borderdesign">
					<h3><%=br.get(i).getBureauName() + " "
						+ br.get(i).getEmail() %></h3>
				</td>
				<td width="100" class="tdnonborder"><p>�</p></td>

				<%
					if ((i + 1) % 2 == 0) {
				%>
			</tr>
			<tr>
				<%
					}

					}
				%>

			</tr>
			</table>
			</div>
			<div id="footer">
				<p>(c) 2010 O� �igusportaal <a href="http://www.google.com/">|&nbsp;&nbsp;Kontakt&nbsp;|</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
			</div>
		</div>
	</body>

</html>