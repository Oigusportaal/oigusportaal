<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Õigusportaal</title>
<style type="text/css">
    <%@include file="theme/style.css" %>
</style>
</head>
<body>
	<div id="wrapper">
		<!-- include header -->
		<%@include file='/header.jsp'%>
		
		<!-- end #menu -->
		<div class="page">
			<div class="content">
				<h1>Redigeerimine</h1>
				<div class="post">
					<div class="entry">
						<form action="" method="post" id="edit_form">
						  <table id="bureauProfileTable">
						  	<tr>
						  		<td><label for="profileBureauName">Firma nimi:</label></td>
						  		<td>See firma</td>
						  		<td id="logo" rowspan="6" >
						  			<img src="./images/logo.png" height="150px" ><br>
						  			<input type="button">
								</td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauPhone">Telefon:</label></td>
						  		<td ><input type="text" id="profileBureauPhone" name="profileBureauPhone" value="56465"></td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauAddress">Aadress:</label></td>
						  		<td><input type="profileBureauAddress" id="profileBureauAddress" name="profileBureauAddress" value=""></td>
						  	</tr>	
						  	
						  	<tr>
						  		<td><label for="profileBureauAveragePrize">Keskmine tunnihind:</label></td>
						 	  	<td><input type="text" id="profileBureauAveragePrize" name="profileBureauAveragePrize" value=""></td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauRegistycode">Registrikood:</label></td>
						  		<td><input type="text" id="profileBureauRegistrycode" name="profileBureauRegistrycode" value=""></td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauEmail">E-mail:</label></td>
						  		<td><input type="text" id="profileBureauEmail" name="profileBureauEmail" value="" ></td>
						  	</tr>
						  	
						  	<tr>
								<td><label for="profileBureauLaweyers">Juristid:</label></td>
							</tr>
							
							<tr>
								<td>Juristide info</td>
							</tr>
							
							<tr>
								<td><label for="profileBureauSuccessStory">Edulood:</label></td>
							</tr>
							
							<tr>
								<td>Edulugude nimerkiri</td>
							</tr>
							
							<tr>
								<td><label for="profileNewBureauPassword">Uus parool:</label></td>
								<td><input type="password" id="profileNewBureauProfile" name="profileNewBureauProfile" value="" ></td>
							</tr>
							
							<tr>
								<td><label for="profileConfirmBureauPassword">Parool uuesti:</label></td>
								<td><input type="password" id="profileConfirmBureauProfile" name="profileConfirmBureauProfile" value=""></td>
							</tr>
						  </table>
						</form>
					</div>
				</div>
			</div>
		</div>
	
	
		<!-- include footer -->
		<%@include file='/footer.jsp'%>
	</div>
</body>
</html>