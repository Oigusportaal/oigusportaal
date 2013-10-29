<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="main.details.BureauSearchResults"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
	<script type="text/javascript" defer="defer">
		function cascadeSelect(parent, child){
				var childOptions = child.find('option:not(.static)');
					child.data('options',childOptions);
 
				parent.change(function(){
					childOptions.remove();
					child
						.append(child.data('options').filter('.sub_' + this.value))
						.change();
				})
 
				childOptions.not('.static, .sub_' + parent.val()).remove();
 
		}
 
		$(function(){
			cascadeForm = $('.cascade');
			orgSelect = cascadeForm.find('.regSelect');
			terrSelect = cascadeForm.find('.countySelect');
			locSelect = cascadeForm.find('.citySelect');
 
			cascadeSelect(orgSelect, terrSelect);
			cascadeSelect(terrSelect, locSelect);
		});
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
		<script src="js/jquery.js"></script>
		<script src="js/functions.js"></script>
		<title>’igusportaal</title>
	</head>
	
	<body>
	
	<%
		ArrayList<BureauSearchResults> br = (ArrayList<BureauSearchResults>) request
				.getAttribute("bureauSR");
	%>
	
		<div id="wrapper">
			<div id="header">
				<img id="logo" src="images/o_logo.png" />
			</div>
			<div id="menu">
				<a href="."> <img src="images/kataloog_hover.png" /> </a>
				<a href="http://www.google.com/"> <img src="images/kiirkysimus.png" /> </a>
				<a href="<%=request.getContextPath()%>/BureauRegister.jsp" class="amenu"> <img src="images/red.png" /> </a>
			</div>
			
			<div class="page">
				<h2>Otsing</h2>
				<div class="content">
					<form action="<%=request.getContextPath()%>/SearchServlet" method="get" class="cascade">
					<p>Asukoht</p>
					<select name="regions" class="regSelect">
						<option value="0">--Select a Region--</option>
						<option value="1" >Pıhja-Eesti</option>
						<option value="2">Lıuna-Eesti</option>
						<option value="3">L‰‰ne-Eesti</option>
						<option value="4">Ida-Eesti</option>
					</select>
					<select name="counties" class="countySelect">
						<option value="0" class="static">--Select a County--</option>
						<option value="1" class="sub_1">Harjumaa</option>
						<option value="2" class="sub_2">Tartumaa</option>
						<option value="3" class="sub_3">Viljandimaa</option>
						<option value="4" class="sub_4">P‰rnumaa</option>
					</select>
					<select name="cities" class="citySelect">
						<option value="0" class="static">--Select a City--</option>
						<option value="1" class="sub_1">Tallinn</option>
						<option value="2" class="sub_2">Tartu</option>
						<option value="3" class="sub_3">Viljandi</option>
						<option value="4" class="sub_4">P‰rnu</option>
					</select>
					
					<p>Keskmine tunnihind</p>
					<div id="avgprice">
						<input name="averageprice" type="range" min=1 max=100 value=50 style="width: 40%">
						<output for="foo">1</output>
						<input type="checkbox" name="Price" value="Price" checked="checked">   Kasuta otsingus
					</div>
					<input type="hidden" name="fieldName" value="<%= request.getAttribute("fieldName") %>">    
					<p id="success">Viimane edulugu</p>
					<div id="success_date">
					 From: <input type="date" name="From" >
  					 To:   <input type="date" name="To" > 
  					<input type="checkbox" name="Date" value="Date" checked="checked">  Kasuta otsingus
  					 </div>
					<input type="submit" value="Otsi" id="searching"/>
					</form>
			</div>
			
			<div class="page">
		<h2>--Selected Burueas for Detailed Search --</h2>
		<table width="95%" border="1">
			<tr>
				<%
					for (int i = 0; i < br.size(); i++) {
				%>

				<td width="20" align="center" class="borderdesign">
				<td width="100" class="borderdesign">
					<h3><%=br.get(i).getFieldName() + " " + br.get(i).getName() + " " + br.get(i).getEmail() 
					+ " " + br.get(i).averagePrice + " " + br.get(i).getStreet() + " " + br.get(i).postalcode 
					+ " " + br.get(i).phoneNumber + " " + br.get(i).getCity()  %></h3>
				</td>
				<td width="100" class="tdnonborder"><img src="<%=br.get(i).getImage()%>"/></td>

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
				<p>(c) 2010 O‹ ’igusportaal <a href="http://www.google.com/">|&nbsp;&nbsp;Kontakt&nbsp;|</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
			</div>
		</div>
	</body>

</html>