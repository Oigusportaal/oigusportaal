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
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
    <%@include file="theme/style.css" %>    
    </style>
		<script src="js/jquery.js"></script>
		<script src="js/functions.js"></script>		
		<title>’igusportaal</title>	
		
		
	</head>
	
	<body>
	<div id="wrapper">
		<!-- include header -->
		<%@include file='/header.jsp'%>
		
		<!-- end #menu -->
		<div class="page">
			<div class="content">
				<h1>Redigeerimine</h1>
				<% if (request.getAttribute("passChanged") != null){ %>
				<div class="passChanged">
				<p>Teie parool on edukalt muudetud!</p>
				</div>
				<%
				}
				%>
				<div class="post">
					<div class="entry">
					<%
								ArrayList<AttorneyDetails> att = (ArrayList<AttorneyDetails>) request
									.getAttribute("attorneys");
							%>
							<table>
						  	<tr>
								<td><label for="profileBureauLawyers">Juristid:</label></td>								
								<td>
								<form action="<%=request.getContextPath()%>/LawyerProfile.jsp" method="post" id="lawyerAddbId">
								<input type="hidden" name="bureauId" id="bureauId" value="<%= request.getAttribute("bureauId") %>" />								
								<input type="submit" value="Lisa uus jurist" id="lawyer">
								</form>
								</td>								
							</tr>
							
							<tr>
								<%									
									for (int i = 0; i < att.size(); i++) {
								%>
				
								<td width="20" align="center" class="borderdesign">
								<td width="100" class="borderdesign">
									<h3><%=att.get(i).getName()  %></h3>
									<p><%=att.get(i).getEmail() %> </p>
									<form action="<%=request.getContextPath()%>/LawyerProfileServlet" method="post" id="lawyerProfile">									
									<input type="hidden" name="attorneyId" value="<%=att.get(i).getAttorneyId() %>"/>																	
									<input type="submit" value="Muuda" id="lawyer">
									</form>
								</td>
								
				
								<%
									if ((i + 1) % 3 == 0) {
								%>
							</tr>
							<tr>
								<%
									}
				
									}
									
								%>
				
							</tr>
							</table>
							<%
								ArrayList<SuccessStoryDetails> stor = (ArrayList<SuccessStoryDetails>) request
									.getAttribute("successStories");
							%>
							<table>
							<tr>
								<td><label for="profileBureauSuccessStory">Edulood:</label></td>
								<td>
								<form action="<%=request.getContextPath()%>/StoryInitServlet" method="post" id="storyAdd">
								<input type="hidden" name="bureauId" id="bureauId" value="<%= request.getAttribute("bureauId") %>" />								
								<input type="submit" value="Lisa uus edulugu" id="lawyer">
								</form>
								</td>	
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
									<form action="<%=request.getContextPath()%>/StoryProfileServlet" method="post" id="storyProfile">									
									<input type="hidden" name="storyId" value="<%=stor.get(i).getSuccessStoryId() %>"/>																	
									<input type="submit" value="Muuda" id="successStory">
									</form>
								</td>
								
				
								<%
									if ((i + 1) % 3 == 0) {
								%>
							</tr>
							<tr>
								<%
									}
				
									}
								%>
				
							</tr>
							</table>
						
							<form action="<%=request.getContextPath()%>/ImageUploadServlet" method="post" enctype="multipart/form-data" id="upload">
						  	<table id="bureauImageTable">
						  	
						  	<tr id="logo">
						  	<td><p>Lae ¸les uus logo: <input type="file" name="img" ></p><br>
						  	<input type="submit" value="Lae ¸les" id="upladIt">						  	
						  	<input type="hidden" name="generalId" value="<%= request.getAttribute("bureauId") %>">
						  	<input type="hidden" name="isBureau" value="1">
						  	</td>
						  	<td><img src="<%= currentUser.getImage() %>" height="150px" alt="Pilti ei leitud"></td>						  	
						 	</tr>
						  	</form>
						  	</table>
						  	<form action="<%=request.getContextPath()%>/BureauEditServlet" method="post" id="edit_form">
						  	<table id="bureauProfileTable">
						  	<tr>
						  		<td><label for="profileBureauName">Firma nimi:</label></td>
						  		<td> <%= currentUser.getBureauName() %> </td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauRegistycode">Registrikood:</label></td>
						  		<td><%= currentUser.getRegistryCode() %>	
						  		<input type="hidden" id="oldPhone" name="oldRegistryCode" value="<%=currentUser.getRegistryCode()%>">					  		
						  		</td>
						  	</tr>
						  							  	
						  	<tr>
						  		<td><label for="profileBureauPhone">Telefon:</label></td>
						  		<td style="border: 1pz solid #000"><input type="text" id="profileBureauPhone" name="profileBureauPhone" value="<%=currentUser.getPhone()%>">
						  		<input type="hidden" id="oldPhone" name="oldPhone" value="<%=currentUser.getPhone()%>">
						  		</td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauEmail">E-mail:</label></td>
						  		<td><input type="text" id="profileBureauEmail" name="profileBureauEmail" value="<%= currentUser.getEmail() %>" >
						  		<input type="hidden" id="oldEmail" name="oldEmail" value="<%=currentUser.getEmail()%>">
						  		</td>
						  	</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauAddress">Aadress:</label></td>
						  		<td><input type="text" id="profileBureauAddress" name="profileBureauAddress" value="<%=currentUser.getStreet()%>">
						  		<input type="hidden" id="oldAddress" name="oldAddress" value="<%=currentUser.getStreet()%>">
						  		</td>
						  	</tr>	
						  	<tr>
						  		<td><label for="profilePostalCode">Postiindeks:</label>
								<td><input type="text" name="profilePostalCode" id="profilePostalCode" value="<%=currentUser.getPostalcode() %>" />
								<input type="hidden" id="oldPostalCode" name="oldPostalCode" value="<%=currentUser.getPostalcode() %>">
								</td>
								
							</tr>						
							
							<tr>
								<td><label for="profileRegion">Regioon:</label>
								<td>
									<%									
									int region = (Integer) request.getAttribute("regionValue");
									%>
									<select name="regions" id="registerRegion" class="regSelect">
										<option value="0">-- Vali regioon --</option>
										<option value="1" <%if (region == 1){%>selected<%}%>>Pıhja-Eesti</option> <!-- /*Harjumaa, , J‰rvamaa, Raplamaa */ -->
	 										<option value="2" <%if (region == 2){%>selected<%}%>>Ida-Eesti</option>    <!-- Ida-Virumaa, L‰‰ne-Virumaa, Jıgevamaa -->
	 										<option value="3" <%if (region == 3){%>selected<%}%>>L‰‰ne-Eesti</option> <!--  L‰‰nemaa, Hiiumaa, Saaremaa, P‰rnumaa -->
	 										<option value="4" <%if (region == 4){%>selected<%}%>>Lıuna-Eesti</option> <!--  Viljandimaa, Tartumaa, Pılvamaa, Valgamaa, Vırumaa -->
									</select>
									<input type="hidden" name="oldRegion" value="<%= request.getAttribute("regionValue") %>">
								</td>
								
							</tr>
							
							<tr>
								<td><label for="profileCounties">Maakond:</label></td>
								<td>
									<%									
									int county = (Integer) request.getAttribute("countyValue");
									%>
									<select name="counties" id="registerCounty" class="countySelect" placeholder="Maakond" onchange="validateCounty()" >
										<option value="0" class="static">--Vali maakond--</option>
										<option value="1" class="sub_1" <%if (county == 1){%>selected<%}%>>Harjumaa</option>
										<option value="2" class="sub_1" <%if (county == 2){%>selected<%}%>>J‰rvamaa</option>
										<option value="3" class="sub_1" <%if (county == 3){%>selected<%}%>>Raplamaa</option>
										<option value="4" class="sub_2" <%if (county == 4){%>selected<%}%>>Ida-Virumaa</option>
										<option value="5" class="sub_2" <%if (county == 5){%>selected<%}%>>Jıgevamaa</option>
										<option value="6" class="sub_2" <%if (county == 6){%>selected<%}%>>L‰‰ne-Virumaa</option>
										<option value="7" class="sub_3" <%if (county == 7){%>selected<%}%>>Hiiumaa</option>
										<option value="8" class="sub_3" <%if (county == 8){%>selected<%}%>>L‰‰nemaa</option>
										<option value="9" class="sub_3" <%if (county == 9){%>selected<%}%>>P‰rnumaa</option>
										<option value="10" class="sub_3" <%if (county == 10){%>selected<%}%>>Saaremaa</option>
										<option value="11" class="sub_4" <%if (county == 11){%>selected<%}%>>Pılvamaa</option>
										<option value="12" class="sub_4" <%if (county == 12){%>selected<%}%>>Tartumaa</option>
										<option value="13" class="sub_4" <%if (county == 13){%>selected<%}%>>Valgamaa</option>
										<option value="14" class="sub_4" <%if (county == 14){%>selected<%}%>>Viljandimaa</option>
										<option value="15" class="sub_4" <%if (county == 15){%>selected<%}%>>Vırumaa</option>
   									</select>
   									<input type="hidden" name="oldCounty" value="<%= request.getAttribute("countyValue") %>">
								</td>								
							</tr>
							
							<tr>
								<td><label for="profileCities">Linn:</label>
								<td>
									<%
									int city = (Integer) request.getAttribute("cityValue");
									%>
									<select name="cities" id="registerCity" class="citySelect" onblur="validateForm()" placeholder="Linn" onchange="validateCity()" >
										<option value="0" class="static">--Vali linn--</option>
										<option value="1" class="sub_1" <%if (city == 1){%>selected<%}%>>Tallinn</option>
										<option value="2" class="sub_2" <%if (city == 2){%>selected<%}%>>Paide</option>
										<option value="3" class="sub_3" <%if (city == 3){%>selected<%}%>>Rapla</option>
										<option value="4" class="sub_4" <%if (city == 4){%>selected<%}%>>Jıhvi</option>
										<option value="5" class="sub_5" <%if (city == 5){%>selected<%}%>>Jıgeva</option>
										<option value="6" class="sub_6" <%if (city == 6){%>selected<%}%>>Rakvere</option>
										<option value="7" class="sub_7" <%if (city == 7){%>selected<%}%>>K‰rdla</option>
										<option value="8" class="sub_8" <%if (city == 8){%>selected<%}%>>Haapsalu</option>
										<option value="9" class="sub_9" <%if (city == 9){%>selected<%}%>>P‰rnu</option>
										<option value="10" class="sub_10" <%if (city == 10){%>selected<%}%>>Kuressaare</option>
										<option value="11" class="sub_11" <%if (city == 11){%>selected<%}%>>Pılva</option>
										<option value="12" class="sub_12" <%if (city == 12){%>selected<%}%>>Tartu</option>
										<option value="13" class="sub_13" <%if (city == 13){%>selected<%}%>>Valga</option>
										<option value="14" class="sub_14" <%if (city == 14){%>selected<%}%>>Viljandi</option>
										<option value="15" class="sub_15" <%if (city == 15){%>selected<%}%>>Vıru</option> 
									</select>
									<input type="hidden" name="oldCity" value="<%= request.getAttribute("cityValue") %>">
								</td>								
							</tr>
						  	
						  	<tr>
						  		<td><label for="profileBureauAveragePrize">Keskmine tunnihind:</label></td>
						 	  	<td><input type="text" id="profileBureauAveragePrize" name="profileBureauAveragePrize" value="<%= currentUser.getAveragePrice()%>">
						 	  	<input type="hidden" id="oldPrice" name="oldPrice" value="<%=currentUser.getAveragePrice()%>">						 	 
						 	  	</td>
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
						  
							<div id="fieldsCheckBox">
						
							<p><b>Valdkonnad</b></p>
							<table>
							<tr>
							<td>
							<%
								ArrayList<String> fields = (ArrayList<String>) request
									.getAttribute("fieldRows");
							
								for (int i=0; i<fields.size(); i++){
							%>
							
							<%= fields.get(i) %>
							<% if ((i+1) == (fields.size()/2)) { %>
							</td>
							<td>
							<% }} %>
							</td>	
							</tr>								  
							</table>
						</div>
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