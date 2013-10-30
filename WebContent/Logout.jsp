 <% session.invalidate(); 
 response.setDateHeader("Expires", 0);  
 // Set standard HTTP/1.1 no-cache headers.  
    response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
 // Set IE extended HTTP/1.1 no-cache headers (use addHeader).  
    response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
 // Set standard HTTP/1.0 no-cache header.  
     response.setHeader("Pragma", "no-cache");  
 response.sendRedirect("/oigusportaal");
      	 
      %>
<%@ page import="Login.UserBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout Page</title>
</head>
<body>


<p>Logged out</p>
</body>
</html>