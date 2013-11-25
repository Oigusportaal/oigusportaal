

<%@ page import="main.login.UserBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*"%>
<%@ page import="main.details.BureauDetails"%>
<%@ page import="main.details.AttorneyDetails"%>
<%@ page import="main.details.SuccessStoryDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/favicon.ico">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
<%@ include file="theme/style.css"%>
</style>
<title>Õigusportaal</title>
</head>

<body>
	<div id="wrapper">
		<!-- include header -->
		<%@include file='/header.jsp'%>

		<!-- end #menu -->
		<div class="page">
			<div class="content">
				<h1>Firma profiil</h1>
				<div class="post">
					<div class="entry">
											<%
						UserBean user = (UserBean) (request.getAttribute("user"));						
						%>
						<table>
						<tr>
						<td><img src="<%=user.getImage()%>" height="150px" alt="Pilti ei leitud!"></td>
						<tr>
							<td><label for="profileBureauName">Firma nimi:</label></td>
							<td><%=user.getBureauName()%></td>
						</tr>

						<tr>
							<td><label for="profileBureauRegistycode">Registrikood:</label></td>
							<td><%=user.getRegistryCode()%></td>
						</tr>

						<tr>
							<td><label for="profileBureauPhone">Telefon:</label></td>
							<td><%=user.getPhone()%></td>
						</tr>

						<tr>
							<td><label for="profileBureauEmail">E-mail:</label></td>
							<td><%=user.getEmail()%></td>
						</tr>

						<tr>
							<td><label for="profileBureauAddress">Aadress:</label></td>
							<td><%=user.getStreet()%></td>
						<tr>
							<td><label for="profilePostalCode">Postiindeks:</label>
							<td><%=user.getPostalcode()%>
						</tr>

						<tr>
							<td><label for="profileRegion">Regioon:</label>
							<td><%=user.getRegionName()%></td>
						</tr>

						<tr>
							<td><label for="profileCounties">Maakond:</label></td>
							<td><%=user.getCountyName()%></td>
						</tr>

						<tr>
							<td><label for="profileCities">Linn:</label>
							<td><%=user.getCityName()%></td>
						</tr>

						<tr>
							<td><label for="profileBureauAveragePrize">Keskmine tunnihind:</label></td>
							<td><%=user.getAveragePrice()%></td>
						</tr>
						<tr>
						<td>Valdkonnad:</td>						
												
												
						<%
						ArrayList<String> fields = (ArrayList<String>) request.getAttribute("fields");
						%>
						
						<td>
						<% for (int i = 0; i < fields.size(); i++) { %>
						<%=fields.get(i)%><br>
						<% } %>
						</td>
						</tr>
						</table>
						<%
							ArrayList<AttorneyDetails> att = (ArrayList<AttorneyDetails>) request
									.getAttribute("attorneys");
						%>
						
						<table>
							<tr>
								<td><label for="profileBureauLawyers">Juristid:</label></td>
							</tr>

							<tr>
								<%
									for (int i = 0; i < att.size(); i++) {
								%>

								<td width="20" align="center" class="borderdesign">
								<td width="100" class="borderdesign">
									<h3><%=att.get(i).getName()%></h3>
									<p><%=att.get(i).getEmail()%></p> <img src="<%=att.get(i).getPicturePath()%>" height="150px" alt="Pilti ei leitud!">
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
							</tr>

							<tr>
								<%
									for (int i = 0; i < stor.size(); i++) {
								%>

								<td width="20" align="center" class="borderdesign">
								<td width="100" class="borderdesign">
									<h3><%=stor.get(i).getParticipants()%></h3>
									<p><%=stor.get(i).getReference()%></p>
									<p><%=stor.get(i).getConclusion()%></p>
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

					</div>
				</div>
			</div>
		</div>


		<!-- include footer -->
		<%@include file='/footer.jsp'%>
	</div>
</body>
</html>