
<%
	UserBean currentUser = (UserBean) (session
			.getAttribute("currentSessionUser"));
	session.setMaxInactiveInterval(9000);
	response.setDateHeader("Expires", 0);
	// Set standard HTTP/1.1 no-cache headers.  
	response.setHeader("Cache-Control",
			"no-store, no-cache, must-revalidate");
	// Set IE extended HTTP/1.1 no-cache headers (use addHeader).  
	response.addHeader("Cache-Control", "post-check=0, pre-check=0");
	// Set standard HTTP/1.0 no-cache header.  
	response.setHeader("Pragma", "no-cache");
	if (!currentUser.isValid()) {
		System.out.println("Not from this session");
	}
	//	if (!currentUser.isValid() || currentUser.getCategory() == null ){ 
	//		pageContext.forward("Login.jsp");
	//	}
%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="main.details.BureauDetails"%>
<%@ page import="main.login.UserBean"%>
<%@ page import="main.details.AttorneyDetails"%>
<%@ page import="main.details.SuccessStoryDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@include file="theme/style.css"%>
</style>
<script src="js/jquery.js"></script>
<script src="js/functions.js"></script>
<title>Õigusportaal</title>


</head>

<body>
	<div id="wrapper">
		<!-- include header -->
		<%@include file='/header.jsp'%>
		<%
			AttorneyDetails attorney = (AttorneyDetails) request
					.getAttribute("attorney");
		%>

		<!-- end #menu -->
		<div class="page">
			<h1>Redigeerimine</h1>
			<div class="entry">
				<form action="<%=request.getContextPath()%>/LawyerEditServlet"
					method="post" id="edit_form">
					<table id="lawyerProfileTable">
						<tr>
							<td><label for="lawyerName">Nimi:</label></td>
							<td style="border: 1px solid #000"><input type="text"
								id="newName" name="newName"
								value="<%=attorney.getName()%>"></td>
						</tr>
						<tr>
							<td><label for="lawyerEmail">E-mail:</label></td>
							<td style="border: 1px solid #000"><input type="text"
								id="newEmail" name="newEmail"
								value="<%=attorney.getEmail()%>"></td>
						</tr>

					</table>
					<input type="submit" value="Muuda" id="searchingEdit"/> 
					</form>
			</div>
		</div>
	</div>


	<!-- include footer -->
	<%@include file='/footer.jsp'%>

</body>
</html>