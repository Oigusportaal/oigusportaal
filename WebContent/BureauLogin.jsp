<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form method="get" action="BureauLoginServlet">
		<table>
			<tr>
				<td>E-mail </td>
				<td><input type="text" name="email"></td>
			</tr>
			
			<tr>
				<td>Passsword</td>
				<td><input type="password" name="password"></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="submit"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>

			<tr>
				<td><b>New User!</b></td>
				<td><a href="<%=request.getContextPath()%>/BureauRegister.jsp">Register here!</a></td>
			</tr>
			
		</table>
	</form>


</body>
</html>