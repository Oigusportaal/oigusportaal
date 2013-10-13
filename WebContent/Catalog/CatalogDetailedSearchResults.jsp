<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="Details.BureauSearchResults"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
		ArrayList<BureauSearchResults> br = (ArrayList<BureauSearchResults>) request
				.getAttribute("bureauSR");
	%>


	<div id="container" style="width: 700px">

		<form action="SearchServlet" method="get">
			<div id="header" style="background-color: #000080;">
				<h1 style="margin-bottom: 0; color: #F5FFFA;">Büroole Otsi</h1>
			</div>

			<div id="averageprice"
				style="height: 200px; width: 165px; float: right;">

				<p>Average Price</p>
				<input id="averageprice" name="averageprice" type="range" min="1"
					max="100" value="0" step="1" onchange="showValue(this.value)" /> <span
					id="range">0</span>
				<script type="text/javascript">
					function showValue(newValue) {
						document.getElementById("range").innerHTML = newValue;
					}
				</script>
			</div>

			<div id="county" style="height: 200px; width: 165px; float: left;">

				<p>County</p>
				<select name="counties">
					<optgroup label="County">
						<option value="Tartuuma" id="Tartuuma">Tartuuma</option>
						<option value="Viljandiima" id="Viljandiima">Viljandiima</option>
					</optgroup>
				</select>
			</div>


			<div id="city" style="height: 200px; width: 165px; float: left;">

				<p>City</p>
				<select name="cities">
					<optgroup label="City">
						<option value="Tartu" id="Tartu">Tartu</option>
						<option value="Tallinn" id="Tallinn">Tallinn</option>
					</optgroup>
				</select>

			</div>


			<p>Region</p>
			<select name="regions">
				<optgroup label="Region">
					<option value="Pohja-Eesti" id="Pohja-eesti">Pohja-Eesti</option>
					<option value="Ide-Eesti" id="Ide-Eesti">Ide-Eesti</option>
				</optgroup>
			</select>
	</div>

<div id ="SSDateSearch" style="height: 200px; width:500; float: left;">
	<p>Latest Success Story</p>
	<input type="date" name="SSDateFrom">
	</br>
	<p>to</p>
	<input type="date" name="SSDateTo">

</div>

	<div id="search" style="height: 200px; width: 365px; float: left;">
		<button type="submit" value="Search">Search</button>

	</div>


	<div id="region" style="height: 200px; width: 165px; float: center;">
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
				<td width="100" class="tdnonborder"><p> </p></td>

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
			</div>

			</form>

			</div>
</body>
</html>