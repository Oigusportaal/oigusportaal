<%

String email = "admin@admin.com";
try{
UserBean currentUser = (UserBean) (session.getAttribute("user"));
if (!currentUser.getEmail().equals(email)  ){ 
	pageContext.forward("Login.jsp");
}

session.setMaxInactiveInterval(9000);
response.setDateHeader("Expires", 0);  
// Set standard HTTP/1.1 no-cache headers.  
   response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
// Set IE extended HTTP/1.1 no-cache headers (use addHeader).  
   response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
// Set standard HTTP/1.0 no-cache header.  
    response.setHeader("Pragma", "no-cache");  
if (!currentUser.isValid() ){ 
	pageContext.forward("Login.jsp");
}
 %>

<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="main.details.BureauDetails"%>
<%@ page import="main.login.UserBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
		<script src="js/jquery.js"></script>
		<script src="js/functions.js"></script>
		<title>Õigusportaal</title>
	</head>
	
	<body>
	
	<%
		ArrayList<BureauDetails> br = (ArrayList<BureauDetails>) request
				.getAttribute("bureau");
	


	%>
	
		<div id="wrapper">
			<!-- inlude header -->
			<%@include file='/header.jsp'%>
			
			
			<div class="page">
				<h2>Otsing</h2>
		
			<div class="page">
			<h2>--Bureaus--</h2>
		<table width="95%" border="1">
		
		<tr>
  <td class="borderdesign">Bureau Name</td>
  <td class="borderdesign">Status</td>
  <td class="borderdesign">Manage</td>
</tr>
			<tr>
				<%
					for (int i = 0; i < br.size(); i++) {
						
					
				%>

				<td width="20" align="center" class="borderdesign">
				<h1> <%=br.get(i).getBureauName() %></h1>
				</td>
				<td width="100" class="borderdesign"><%  String dummy=null;	
	if(br.get(i).active==1)
		dummy="Active";
	else if(br.get(i).active==0)
		dummy="Inactive";
 %>
					<h3><%=dummy %> </h3>
				</td>
				
				
			
					
				<td width="100" class="tdnonborder">				<a href="<%=request.getContextPath()%>/DeleteBureauServlet?param=<%=br.get(i).getEmail() %>&paramTwo=<%=br.get(i).getBureauId() %>" ><span style="color:#FE062F;">Delete <%=br.get(i).getBureauName() %></span></a>
				
				<% 	
	if(br.get(i).active==1) {
		dummy="Active";
%>
				<a href="<%=request.getContextPath()%>/ActivateInActivateServlet?param=<%=br.get(i).getActive() %>&paramTwo=<%=br.get(i).getBureauId() %>" ><span style="color:#4C06FE;">Inactivate</span></a>
				
				<% } %>
				
			<%	if(br.get(i).active==0) {
		dummy="Inactive";
				 %>		
				 
				 				<a href="<%=request.getContextPath()%>/ActivateInActivateServlet?param=<%=br.get(i).getActive() %>&paramTwo=<%=br.get(i).getBureauId() %>" ><span style="color:#12FE06;">Activate</span></a>
				 <% } %>
				 
				</td>

			
			</tr>
			<tr>
				<%
					}

					
				%>

			</tr>
			</table>
			</div>
<button onclick="location.href='a.jsp'">Logout</button>			
			<!-- include footer -->
			<%@include file='/footer.jsp'%>
		</div>
	</body>

</html>
   <%}catch(Exception e){
	 
	 System.out.println("ERRORR FOR SESSION");
		pageContext.forward("Login.jsp");
 } %>
   