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
			<img src="imagesBureauRegister/o_logo.png" />
		</div>
		<!-- end #header -->
			
		<div id="menu">
			<ul>
				<li class="current_page_item"/>
				<li><a href="http://www.google.com/" rel="nofollow"><img src="imagesBureauRegister/kataloog.png" width="120" height="40"/></a></li>
				<li><a href="http://www.google.com/" rel="nofollow"><img src="imagesBureauRegister/kiirkysimus.png" width="140" height="40"/></a></li>
				<li><a href="http://www.google.com/" rel="nofollow"><img src="imagesBureauRegister/red_hover.png" width="120" height="40"/></a></li>
			</ul>
		</div>
		
		<!-- end #menu -->
		<div id="page">
			<div id="content">
				<h1>Registreerimine</h1>
				<div class="post">
					<div class="entry">
						<form action="#registration_url" method="post" id="registration_form">
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
							<label for="register_address">Aadress:</label>
							<input type="text" name="address" id="register_address" />
							<label for="register_phone">Telefoninumber:</label>
							<input type="integer" name="phone" id="register_phone" />
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