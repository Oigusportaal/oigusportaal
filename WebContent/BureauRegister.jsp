<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�igusportaal</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
<script src="./js/RegistrationForm.js" type="text/javascript" ></script>

</head>
<body>
<div id="wrapper">
		<div id="header">
			<img src="images/o_logo.png" />
		</div>
		<!-- end #header -->
			
		<div id="menu">			
				<a href="."> <img src="images/kataloog_hover.png" /> </a>
-				<a href="http://www.google.com/" rel="nofollow"><img src="images/kiirkysimus.png" width="140" height="40"/></a>
-				<a href="<%=request.getContextPath()%>/BureauRegister.jsp" class="amenu"> <img src="images/red.png" /> </a>
		</div>
		
		<!-- end #menu -->
		<div class="page">
			<div class="content">
				<h1>Registreerimine</h1>
				<div class="post">
					<div class="entry">
						
						<form action="BureauRegistrationServlet" method="get" id="registration_form" onkeyup= "validateForm()" >
						  <fieldset>
						  
							<label for="registerEmail">E-mail:</label>
							<input type="text" name="email" id='registerEmail' onkeyup="validateEmail()"/>
							<span id ="emailErrorMessage"></span> </br>
							
							<label for="registerEmailConfirmation">Kinnita E-mail:</label>
							<input type="text" name="registerEmailConfirmation" id="registerEmailConfirmation" onkeyup="confirmEmail()"/>
							<span id ="confirmEmailMessage"></span> </br>
							
							<label for="registerPassword">Parool:</label>
							<input type="password" name="password" id="registerPassword" onkeyup="validatePassword()" />
							<span id = "passwordMessage"></span> </br>
							
							<label for="registerPasswordConfirmation">Parool uuesti:</label>
							<input type="password" name="register_password_confirmation" id="registerPasswordConfirmation" onkeyup="confirmPassword()" />
							<span id="confirmPasswordError"></span> </br>
							
							<label for="registerBureauName">B�roo nimi:</label>
							<input type="text" name="bureauname" id="registerBureauName" onkeyup="validateBureauName()"/>
							<span id="bureauNameMessage"></span> </br>
							
							<label for="registerRegcode">Registrikood:</label>
							<input type="text" name="regcode" id="registerRegcode" onkeyup="validateRegistrycode()"/>
							<span id="regcodeMessage"></span> </br>
							
							<label for="registerStreetAddress">T�nav:</label>
							<input type="text" name="street_address" id="registerStreetAddress" onkeyup="validateStreetAddress()" />
							<span id="streetAddressMessage"></span> </br>
							
							<label for="registerPostalcode">Postiindeks:</label>
							<input type="text" name="postal_code" id="registerPostalcode" onkeyup="validatePostalCode()"/>
							<span id="postalcodeMessage"></span> </br>
							
							
							<label for="registerPhone">Telefoninumber:</label>
							<input type="text" name="phone" id="registerPhone" onkeyup="validatePhoneNumber()"/>
							<span id="phoneMessage"></span> </br>
							
							<label for="registerRegion">Regioon:</label>
							<select name="regions" id="registerRegion" onchange="validateRegion()" >
								<option value="Region">-- Vali regioon --</option>
								<option value="Pohja-Eesti">P�hja-Eesti</option> <!-- /*Harjumaa, L��ne-Virumaa, Ida-Virumaa, J�rvamaa, Raplamaa */ -->
  								<option value="Ida-Eesti">Ida-Eesti</option>
  								<option value="Laane-Eesti">L��ne-Eesti</option> 
  								<option value="Louna-Eesti">L�una-Eesti</option>
							</select>
							<span id="registerRegionMessage"></span></br>
							
							<label for="registerCounty">Maakond:</label>
							<select name="counties" id="registerCounty" onchange="validateCounty()" disabled="true">
								<option value="County">-- Vali Maakond--</option>
								<option value="Harjumaa">Harjumaa</option>
								<option value="Hiiumaa">Hiiumaa</option>
								<option value="Ida-Virumaa">Ida-Virumaa</option>
								<option value="Jogevamaa">J�gevamaa</option>
								<option value="Jarvamaa">J�rvamaa</option>
								<option value="Laanemaa">L��nemaa</option>
								<option value="Laane-Virumaa">L��ne-Virumaa</option>
								<option value="Polvamaa">P�lvamaa</option>
								<option value="Parnumaa">P�rnumaa</option>
								<option value="Raplamaa">Raplamaa</option>
								<option value="Saaremaa">Saaremaa</option>
								<option value="Tartumaa">Tartumaa</option>
								<option value="Valgamaa">Valgamaa</option>
								<option value="Viljandimaa">Viljandimaa</option>
								<option value="Vorumaa">V�rumaa</option>
							</select>
							<span id="registerCountyMessage"></span></br>
							
							<label for="registerCity">Linn:</label>
							<select name="cities" id="registerCity" onchange="validateCity()" disabled="true">
								<option value="City">-- Vali Linn</option>
								<option value="Tallinn">Tallinn</option>
  								<option value="Tartu">Tartu</option>
  								<option value="Narva">Narva</option>
  								<option value="Kohtla-Jarve">Kohtla-J�rve</option>
  								<option value="Parnu">P�rnu</option>
  								<option value="Viljandi">Viljandi</option>
  								<option value="Rakvere">Rakvere</option>
  								<option value="Sillam�e">Sillam�e</option>
  								<option value="Maardu">Maardu</option>
  								<option value="Kuressaare">Kuressaare</option>
							</select>
							<span id = "registerCityMessage"></span></br>
								
							<!--  for testing disabled="", submit button available, and will submit.
									else it should be disabled="disabled", still have to fix this
							 -->
							<input type="submit" value="Registreeru" name="submit" id="Registreeru" disabled=""/>
							<span id="confirmInput"></span>
							
						  </fieldset>
						</form>
					</div>
				</div>
		</div>
		<!-- end #content -->
		<div style="clear: both;">&nbsp;</div>
		<!-- end #page -->
		<div id="footer">
			<p>(c) 2010 O� �igusportaal <a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kontakt</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
		</div>
		<!-- end #footer -->
	</div>
</div>
</body>

</html>