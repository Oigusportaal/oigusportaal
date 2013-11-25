<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/favicon.ico">
<title>Õigusportaal</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
				<div class="regSuccess">
					<p>Teie meilile on saadetud teie uus parool. Palun vahetage see peale sisselogimist ära.</p>
					</div>
				</div>
		</div>
		<!-- end #content -->
		<div style="clear: both;">&nbsp;</div>
		<!-- end #page -->
		<!-- include footer -->
		<%@include file='/footer.jsp'%>
		<!-- end #footer -->
	</div>
</body>

</html>