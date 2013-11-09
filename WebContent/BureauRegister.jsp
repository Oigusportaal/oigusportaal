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
<title>Õigusportaal</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
<script src="./js/RegistrationForm.js" type="text/javascript" ></script>
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

</head>

<!-- Keha -->
<body>
<div id="wrapper">
		<!-- Päis -->
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
		<div class="page" >
			<div id="registering" >
				<h1>Registreerimine</h1>
					<form action="BureauRegistrationServlet" method="get" class="cascade" id="registration_form" onsubmit="return validateForm()">
					 	<table>
						  	<tr>
						  		<td class="registerColumnName"><label for="registerEmail">E-mail:</label></td>
								<td><input type="text" name="email" id='registerEmail' onkeyup="validateEmail()"/></td>
								<td><span id ="emailErrorMessage"></span></td> 
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerEmailConfirmation">Kinnita E-mail:</label></td>
								<td><input type="text" name="registerEmailConfirmation" id="registerEmailConfirmation" onkeyup="confirmEmail()"/></td>
								<td><span id ="confirmEmailMessage"></span> </td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerPassword">Parool:</label></td>
								<td><input type="password" name="password" id="registerPassword" onkeyup="validatePassword()" /></td>
								<td><span id = "passwordMessage"></span> </td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerPasswordConfirmation">Parool uuesti:</label></td>
								<td><input type="password" name="register_password_confirmation" id="registerPasswordConfirmation" onkeyup="confirmPassword()" /></td>
								<td><span id="confirmPasswordError"></span> </td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerBureauName">Büroo nimi:</label></td>
								<td><input type="text" name="bureauname" id="registerBureauName" onkeyup="validateBureauName()"/></td>
								<td><span id="bureauNameMessage"></span> </td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerRegcode">Registrikood:</label></td>
								<td><input type="text" name="regcode" id="registerRegcode" onkeyup="validateRegistrycode()"/></td>
								<td><span id="regcodeMessage"></span> </td>
							</tr>
	
							<tr>
								<td class="registerColumnName"><label for="registerStreetAddress">Tänav:</label></td>
								<td><input type="text" name="street_address"
									id="registerStreetAddress" onkeyup="validateStreetAddress()" /></td>
								<td><span id="streetAddressMessage"></span></td>
							</tr>
	
							<tr>
								<td class="registerColumnName"><label for="registerPostalcode">Postiindeks:</label></td>
								<td><input type="text" name="postal_code" id="registerPostalcode" onkeyup="validatePostalCode()"/></td>
								<td><span id="postalcodeMessage"></span> </td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerPhone">Telefoninumber:</label></td>
								<td><input type="text" name="phone" id="registerPhone" onkeyup="validatePhoneNumber()"/></td>
								<td><span id="phoneMessage"></span> </td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerRegion">Regioon:</label></td>
								<td>
									<select name="regions" id="registerRegion" class="regSelect" onchange="validateRegion()" >
										<option value="0">-- Vali regioon --</option>
										<option value="1">Põhja-Eesti</option> <!-- /*Harjumaa, , Järvamaa, Raplamaa */ -->
	 										<option value="2">Ida-Eesti</option>    <!-- Ida-Virumaa, Lääne-Virumaa, Jõgevamaa -->
	 										<option value="3">Lääne-Eesti</option> <!--  Läänemaa, Hiiumaa, Saaremaa, Pärnumaa -->
	 										<option value="4">Lõuna-Eesti</option> <!--  Viljandimaa, Tartumaa, Põlvamaa, Valgamaa, Võrumaa -->
									</select>
								</td>
								<td><span id="registerRegionMessage"></span></td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerCounty">Maakond:</label></td>
								<td>
									<select name="counties" id="registerCounty" class="countySelect" onchange="validateCounty()" >
										<option value="0" class="static">--Vali maakond--</option>
										<option value="1" class="sub_1">Harjumaa</option>
										<option value="2" class="sub_1">Järvamaa</option>
										<option value="3" class="sub_1">Raplamaa</option>
										<option value="4" class="sub_2">Ida-Virumaa</option>
										<option value="5" class="sub_2">Jõgevamaa</option>
										<option value="6" class="sub_2">Lääne-Virumaa</option>
										<option value="7" class="sub_3">Hiiumaa</option>
										<option value="8" class="sub_3">Läänemaa</option>
										<option value="9" class="sub_3">Pärnumaa</option>
										<option value="10" class="sub_3">Saaremaa</option>
										<option value="11" class="sub_4">Põlvamaa</option>
										<option value="12" class="sub_4">Tartumaa</option>
										<option value="13" class="sub_4">Valgamaa</option>
										<option value="14" class="sub_4">Viljandimaa</option>
										<option value="15" class="sub_4">Võrumaa</option>
   									</select>
								</td>
								<td><span id="registerCountyMessage"></span></td>
							</tr>
							
							<tr>
								<td class="registerColumnName"><label for="registerCity">Linn:</label></td>
								<td>
									<select name="cities" id="registerCity" class="citySelect" onblur="validateForm()" onchange="validateCity()" >
										<option value="0" class="static">--Vali linn--</option>
										<option value="1" class="sub_1">Tallinn</option>
										<option value="2" class="sub_2">Paide</option>
										<option value="3" class="sub_3">Rapla</option>
										<option value="4" class="sub_4">Jõhvi</option>
										<option value="5" class="sub_5">Jõgeva</option>
										<option value="6" class="sub_6">Rakvere</option>
										<option value="7" class="sub_7">Kärdla</option>
										<option value="8" class="sub_8">Haapsalu</option>
										<option value="9" class="sub_9">Pärnu</option>
										<option value="10" class="sub_10">Kuressaare</option>
										<option value="11" class="sub_11">Põlva</option>
										<option value="12" class="sub_12">Tartu</option>
										<option value="13" class="sub_13">Valga</option>
										<option value="14" class="sub_14">Viljandi</option>
										<option value="15" class="sub_15">Võru</option> 
									</select>
								</td>
								<td><span id = "registerCityMessage"></span></td>
							</tr>								
						
							<tr>
								<td></td>
								<td><input type="submit" value="Registreeru" name="submit" id="Registreeru" /></td>
								
								<td><span id="confirmInput"></span></tr>
							<tr>
						</table>
					</form>
				
		</div>
		<!-- end #content -->
		<!-- <div style="clear: both;">&nbsp;</div> -->
		<!-- end #page -->
		
		<!-- end #footer -->
	</div>
	<div id="footer" style="clear:both;">
			<p>(c) 2010 OÜ Õigusportaal <a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kontakt</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/" rel="nofollow">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
		</div>
</div>
</body>

</html>