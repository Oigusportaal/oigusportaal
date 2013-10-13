<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link type="text/css" rel="stylesheet" href="srchstyle.css"/>
		<script src="js/jquery.js"></script>
		<script src="js/functions.js"></script>
		<title>’igusportaal</title>
	</head>
	
	<body>
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
					<form action="#search_url" method="post">
					<p>Asukoht</p>
					<select>
						<option value="PE">Pıhja-Eesti</option>
						<option value="LoE">Lıuna-Eesti</option>
						<option value="LaE">L‰‰ne-Eesti</option>
						<option value="IE">Ida-Eesti</option>
					</select>
					<select>
						<option value="Harjumaa">Harjumaa</option>
						<option value="Tartumaa">Tartumaa</option>
						<option value="Viljandimaa">Viljandimaa</option>
						<option value="Parnumaa">P‰rnumaa</option>
					</select>
					<select>
						<option value="Tallinn">Tallinn</option>
						<option value="Tartu">Tartu</option>
						<option value="Viljandi">Viljandi</option>
						<option value="Parnu">P‰rnu</option>
					</select>
					<input type="checkbox" name="dontuse" value="Bike">Kasuta otsingus
				
					<p>Keskmine tunnihind</p>
					<div id="avgprice">
						<input name="foo" type="range" min=1 max=100 value=50 style="width: 40%">
						<output for="foo">1</output>
						<input type="checkbox" name="dontuse" value="Car">Kasuta otsingus	
					</div>
					</form>
					<p id="success">Viimane edulugu</p>
					<input type="submit" value="Otsi" id="searching"/>
			</div>
			
			<div id="footer">
				<p>(c) 2010 O‹ ’igusportaal <a href="http://www.google.com/">|&nbsp;&nbsp;Kontakt&nbsp;|</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
			</div>
		</div>
	</body>

</html>