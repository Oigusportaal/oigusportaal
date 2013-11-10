<%
UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));
session.setMaxInactiveInterval(9000);
response.setDateHeader("Expires", 0);  
// Set standard HTTP/1.1 no-cache headers.  
   response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");  
// Set IE extended HTTP/1.1 no-cache headers (use addHeader).  
   response.addHeader("Cache-Control", "post-check=0, pre-check=0");  
// Set standard HTTP/1.0 no-cache header.  
    response.setHeader("Pragma", "no-cache");  
if (!currentUser.isValid()){System.out.println("Not from this session");}
//	if (!currentUser.isValid() || currentUser.getCategory() == null ){ 
//		pageContext.forward("Login.jsp");
//	}
%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="main.details.BureauDetails"%>
<%@ page import="main.login.UserBean" %>
<%@ page import="main.details.AttorneyDetails" %>
<%@ page import="main.details.SuccessStoryDetails" %>
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
		<title>�igusportaal</title>
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
						<form action="<%=request.getContextPath()%>/BureauEditServlet" method="post" id="edit_form">
						  <table id="bureauProfileTable" style="border: 1px solid black">
						  	<tr>
						  		<td><label for="profileBureauName">Firma nimi:</label></td>
						  		<td> <%= currentUser.getBureauName() %> </td>
						  		<td id="logo" rowspan="6" >
						  			<img src="<%= currentUser.getImage() %>" height="150px" ><br>
						  			Lae �les uus logo: <input type="file" name="img">
								</td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauPhone">Telefon:</label></td>
						  		<td style="border: 1pz solid #000"><input type="text" id="profileBureauPhone" name="profileBureauPhone" value="<%=currentUser.getPhone()%>">
						  		<input type="hidden" id="oldPhone" name="oldPhone" value="<%=currentUser.getPhone()%>">
						  		</td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauAddress">Aadress:</label></td>
						  		<td><input type="profileBureauAddress" id="profileBureauAddress" name="profileBureauAddress" value="<%=currentUser.getStreet()%>">
						  		<input type="hidden" id="oldAddress" name="oldAddress" value="<%=currentUser.getStreet()%>">
						  		</td>
						  	</tr>	
						  	
						  	<tr>
						  		<td><label for="profileBureauAveragePrize">Keskmine tunnihind:</label></td>
						 	  	<td><input type="text" id="profileBureauAveragePrize" name="profileBureauAveragePrize" value="<%= currentUser.getAveragePrice()%>">
						 	  	<input type="hidden" id="oldPrice" name="oldPrice" value="<%=currentUser.getAveragePrice()%>">
						 	  	</td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauRegistycode">Registrikood:</label></td>
						  		<td><input type="text" id="profileBureauRegistrycode" name="profileBureauRegistrycode" value="<%= currentUser.getRegistryCode() %>">
						  		<input type="hidden" id="oldRegistryCode" name="oldRegistryCode" value="<%=currentUser.getRegistryCode()%>">
						  		</td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauEmail">E-mail:</label></td>
						  		<td><input type="text" id="profileBureauEmail" name="profileBureauEmail" value="<%= currentUser.getEmail() %>" >
						  		<input type="hidden" id="oldEmail" name="oldEmail" value="<%=currentUser.getEmail()%>">
						  		</td>
						  	</tr>
						  	<%
								ArrayList<AttorneyDetails> att = (ArrayList<AttorneyDetails>) request
									.getAttribute("attorneys");
							%>
						  	<tr>
								<td><label for="profileBureauLawyers">Juristid:</label></td>
							</tr>
							
							<tr>
								<%									
									for (int i = 0; i < att.size(); i++) {
								%>
				
								<td width="20" align="center" class="borderdesign">
								<td width="100" class="borderdesign">
									<h3><%=att.get(i).getName()  %></h3>
									<p><%=att.get(i).getEmail() %> </p>
								</td>
								
				
								<%
									if ((i + 1) % 2 == 0) {
								%>
							</tr>
							<tr>
								<%
									}
				
									}
									
								%>
				
							</tr>
							<%
								ArrayList<SuccessStoryDetails> stor = (ArrayList<SuccessStoryDetails>) request
									.getAttribute("successStories");
							%>
							<tr>
								<td><label for="profileBureauSuccessStory">Edulood:</label></td>
							</tr>
							
							<tr>
								<%
									
									for (int i = 0; i < stor.size(); i++) {
								%>
				
								<td width="20" align="center" class="borderdesign">
								<td width="100" class="borderdesign">
									<h3><%=stor.get(i).getParticipants() %></h3>
									<p><%=stor.get(i).getReference() %> </p>
									<p><%=stor.get(i).getConclusion() %> </p>
								</td>
								
				
								<%
									if ((i + 1) % 2 == 0) {
								%>
							</tr>
							<tr>
								<%
									}
				
									}
								%>
				
							</tr>
							
							<tr>
								<td><label for="profileNewBureauPassword">Uus parool:</label></td>
								<td><input type="password" id="profileNewBureauProfile" name="profileNewBureauProfile" value="" >
								<input type="hidden" id="oldPassword" name="oldPassword" value="<%=currentUser.getPassword()%>">
								</td>
							</tr>
							
							<tr>
								<td><label for="profileConfirmBureauPassword">Parool uuesti:</label></td>
								<td><input type="password" id="profileConfirmBureauProfile" name="profileConfirmBureauProfile" value=""></td>
							</tr>
							<% session.setAttribute("currentSessionUser", currentUser); %>
						  </table>
						  <input type="submit" value="Muuda" id="searchingEdit"/>						  
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