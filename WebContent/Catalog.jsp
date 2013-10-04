<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>


	<div id="container" style="width: 500px">

		<form action="SearchServlet" method="get">
			<div id="header" style="background-color: #000080;">
				<h1 style="margin-bottom: 0; color: #F5FFFA;">Büroole Otsi</h1>
			</div>

			<div id="averageprice"
				style="height: 200px; width: 165px; float: right;">

				<p>Average Price</p>
				<input id="averageprice" name="averageprice" type="range" min="1" max="100" value="0" step="1"
					onchange="showValue(this.value)" /> <span id="range">0</span>
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
						<option  value="Tartuuma" id="Tartuuma" >Tartuuma</option>
						<option value="Viljandiima" id="Viljandiima">Viljandiima</option>
					</optgroup>
				</select>
			</div>


			<div id="city" style="height: 200px; width: 165px; float: left;">

				<p>City</p>
				<select name="cities" >
					<optgroup label="City">
						<option value="Tartu" id="Tartu">Tartu</option>
						<option value="Tallinn" id="Tallinn">Tallinn</option>
					</optgroup>
				</select>

			</div>
			
			
			<div id="region" style="height: 200px; width: 165px; float: center;">

				<p>Region</p>
				<select name="regions" >
					<optgroup label="Region">
						<option value="Pohya-Eesti" id="Pohya-eesti">Pohja-Eesti</option>
						<option value="Ida-Eesti" id="Ida-eesti">Ida-Eesti</option>
					</optgroup>
				</select>

			</div>
			

			<div id="search" style="height: 200px; width: 365px; float: right;">

				<button type="submit" value="Search">Search</button>
			</div>

		</form>

	</div>

</body>
</html>