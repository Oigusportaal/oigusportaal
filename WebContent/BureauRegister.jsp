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
<script src="./js/RegistrationForm.js" type="text/javascript" ></script>

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
		
		<!-- end #menu -->
		<div class="page">
			<div class="content">
				<h1>Registreerimine</h1>
				<div class="post">
					<div class="entry">
						
						<form action="BureauRegistrationServlet" method="get" id="registration_form" onsubmit="return validateForm()">
						  <table>
						  	<tr>
						  		<td><label for="registerEmail">E-mail:</label></td>
								<td><input type="text" name="email" id='registerEmail' onkeyup="validateEmail()"/></td>
								<td><span id ="emailErrorMessage"></span></td> 
							</tr>
							
							<tr>
								<td><label for="registerEmailConfirmation">Kinnita E-mail:</label></td>
								<td><input type="text" name="registerEmailConfirmation" id="registerEmailConfirmation" onkeyup="confirmEmail()"/></td>
								<td><span id ="confirmEmailMessage"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerPassword">Parool:</label></td>
								<td><input type="password" name="password" id="registerPassword" onkeyup="validatePassword()" /></td>
								<td><span id = "passwordMessage"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerPasswordConfirmation">Parool uuesti:</label></td>
								<td><input type="password" name="register_password_confirmation" id="registerPasswordConfirmation" onkeyup="confirmPassword()" /></td>
								<td><span id="confirmPasswordError"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerBureauName">Büroo nimi:</label></td>
								<td><input type="text" name="bureauname" id="registerBureauName" onkeyup="validateBureauName()"/></td>
								<td><span id="bureauNameMessage"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerRegcode">Registrikood:</label></td>
								<td><input type="text" name="regcode" id="registerRegcode" onkeyup="validateRegistrycode()"/></td>
								<td><span id="regcodeMessage"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerStreetAddress">Tänav:</label></td>
								<td><input type="text" name="street_address" id="registerStreetAddress" onkeyup="validateStreetAddress()" /></td>
								<td><span id="streetAddressMessage"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerPostalcode">Postiindeks:</label></td>
								<td><input type="text" name="postal_code" id="registerPostalcode" onkeyup="validatePostalCode()"/></td>
								<td><span id="postalcodeMessage"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerPhone">Telefoninumber:</label></td>
								<td><input type="text" name="phone" id="registerPhone" onkeyup="validatePhoneNumber()"/></td>
								<td><span id="phoneMessage"></span> </td>
							</tr>
							
							<tr>
								<td><label for="registerRegion">Regioon:</label></td>
								<td>
									<select name="regions" id="registerRegion" onchange="validateRegion()" >
										<option value="Region">-- Vali regioon --</option>
										<option value="Pohja-Eesti">Põhja-Eesti</option> <!-- /*Harjumaa, , Järvamaa, Raplamaa */ -->
  										<option value="Ida-Eesti">Ida-Eesti</option>    <!-- Ida-Virumaa, Lääne-Virumaa, Jõgevamaa -->
  										<option value="Laane-Eesti">Lääne-Eesti</option> <!--  Läänemaa, Hiiumaa, Saaremaa, Pärnumaa -->
  										<option value="Louna-Eesti">Lõuna-Eesti</option> <!--  Viljandimaa, Tartumaa, Põlvamaa, Valgamaa, Võrumaa -->
									</select>
								</td>
								<td><span id="registerRegionMessage"></span></td>
							</tr>
							
							<tr>
								<td><label for="registerCounty">Maakond:</label></td>
								<td>
									<select name="counties" id="registerCounty" onchange="validateCounty()" >
										<option value="County">-- Vali Maakond--</option>
									</select>
								</td>
								<td><span id="registerCountyMessage"></span></td>
							</tr>
							
							<tr>
								<td><label for="registerCity">Linn:</label></td>
								<td>
									<select name="cities" id="registerCity" onblur="validateForm()" onchange="validateCity()" >
										<option value="City">-- Vali Linn --</option>
									</select>
								</td>
								<td><span id = "registerCityMessage"></span></td>
							</tr>								
							<!--  for testing disabled="", submit button available, and will submit.
									else it should be disabled="disabled", still have to fix this
							 -->
							<tr>
								<td><input type="submit" value="Registreeru" name="submit" id="Registreeru" /></td>
								<td></td>
								<td><span id="confirmInput"></span></tr>
							<tr>
						  </table>
						</form>
					</div>
				</div>
		</div>
		<!-- end #content -->
		<!-- <div style="clear: both;">&nbsp;</div> -->
		<!-- end #page -->
		<div id="footer">
			<p>(c) 2010 OÜ Õigusportaal <a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kontakt</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
		</div>
		<!-- end #footer -->
	</div>
</div>
</body>

</html>