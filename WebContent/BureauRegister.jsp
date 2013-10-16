<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="styleBureauRegister.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
		<div id="header">
			<img src="images/o_logo.png" />
		</div>
		<!-- end #header -->
			
		<div id="menu">
			<ul>
				<li class="current_page_item"/>
				<li><a href="http://www.google.com/" rel="nofollow"><img src="images/kataloog.png" width="120" height="40"/></a></li>
-				<li><a href="http://www.google.com/" rel="nofollow"><img src="images/kiirkysimus.png" width="140" height="40"/></a></li>
-				<li><a href="http://www.google.com/" rel="nofollow"><img src="images/red_hover.png" width="120" height="40"/></a></li>
			</ul>
		</div>
		
		<!-- end #menu -->
		<div id="page">
			<div id="content">
				<h1>Registreerimine</h1>
				<div class="post">
					<div class="entry">
						<form action="BureauRegistrationServlet" method="get" id="registration_form">
						  <fieldset>
							<label for="register_email">E-mail:</label>
							<input type="text" name="email" id="register_email" />
							
							<label for="register_email_confirmation">E-mail uuesti:</label>
							<input type="text" name="register_email_confirmation" id="register_email_confirmation" />
							
							<label for="register_password_confirmation">Parool:</label>
							<input type="password" name="password" id="register_password" />
							
							<label for="register_password_confirmation">Parool uuesti:</label>
							<input type="password" name="register_password_confirmation" id="register_password_confirmation" />
							
							<label for="register_bureauname">Büroo nimi:</label>
							<input type="text" name="bureauname" id="register_bureauname" />
							
							<label for="register_regcode">Registrikood:</label>
							<input type="text" name="regcode" id="register_regcode" />
							
							<label for="register_street_address">Tänav:</label>
							<input type="text" name="street_address" id="register_street_address" />
							
							<label for="register_postalcode">Postiindeks:</label>
							<input type="text" name=postal_code id="register_postalcode"/>
							
							<label for="register_phone">Telefoninumber:</label>
							<input type="text" name="phone" id="register_phone" />
							
							<label for="register_region_name">Regioon:</label>
							<select name="regions" id="register_region_name">
								<option value="Pohja-Eesti">Põhja-Eesti</option>
  								<option value="Ida-Eesti">Ida-Eesti</option>
  								<option value="Laane-Eesti">Lääne-Eesti</option>
  								<option value="Louna-Eesti">Lõuna-Eesti</option>
							</select></br>
							
							<label for="register_city_name">Linn:</label>
							<select name="cities" id="register_city_name">
								<option value="Tallinn">Tallinn</option>
  								<option value="Tartu">Tartu</option>
  								<option value="Narva">Narva</option>
  								<option value="Kohtla-Jarve">Kohtla-Järve</option>
  								<option value="Parnu">Pärnu</option>
  								<option value="Viljandi">Viljandi</option>
  								<option value="Rakvere">Rakvere</option>
  								<option value="Sillamäe">Sillamäe</option>
  								<option value="Maardu">Maardu</option>
  								<option value="Kuressaare">Kuressaare</option>
							</select></br>
							
							
							<label for="register_county_name">Maakond:</label>
							<select name="counties" id="register_county_name">
								<option value="Harjumaa">Harjumaa</option>
								<option value="Hiiumaa">Hiiumaa</option>
								<option value="Ida-Virumaa">Ida-Virumaa</option>
								<option value="Jogevamaa">Jõgevamaa</option>
								<option value="Jarvamaa">Järvamaa</option>
								<option value="Laanemaa">Läänemaa</option>
								<option value="Laane-Virumaa">Lääne-Virumaa</option>
								<option value="Polvamaa">Põlvamaa</option>
								<option value="Parnumaa">Pärnumaa</option>
								<option value="Raplamaa">Raplamaa</option>
								<option value="Saaremaa">Saaremaa</option>
								<option value="Tartumaa">Tartumaa</option>
								<option value="Valgamaa">Valgamaa</option>
								<option value="Viljandimaa">Viljandimaa</option>
								<option value="Vorumaa">Võrumaa</option>
							</select></br>
							
							
							
							<input type="submit" value="Registreeru" />
							
						  </fieldset>
						</form>
					</div>
				</div>
		</div>
		<!-- end #content -->
		<div style="clear: both;">&nbsp;</div>
		<!-- end #page -->
		<div id="footer">
			<p>(c) 2010 OÜ Õigusportaal <a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kontakt</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
		</div>
		<!-- end #footer -->
	</div>
</div>
</body>

</html>