
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
<script>
	$(function() {
		$("#datepickerTwo").datepicker();
	});
</script>
<title>�igusportaal</title>


</head>

<body>
	<div id="wrapper">
		<!-- include header -->
		<%@include file='/header.jsp'%>
		<%
			SuccessStoryDetails story = (SuccessStoryDetails) request
					.getAttribute("story");
			boolean isNew = false;
			if (story == null) {
				isNew = true;
			}
		%>

		<!-- end #menu -->
		<div class="page">
			<h1>Redigeerimine</h1>
			<div class="entry">
				<form
					action="<%=request.getContextPath()%><%if (isNew) {%>/StoryAddServlet<%} else {%>/StoryEditServlet<%}%>"
					method="post" id="edit_form">
					<table id="storyProfileTable">
						<tr>
							<td><label for="storyParticipants">Osalejad</label></td>
							<td><input type="text" id="newParticipants"
								name="newParticipants"
								value="<%if (!isNew) {%><%=story.getParticipants()%><%}%>"></td>
						</tr>
						<tr>
							<td><label for="storyReference">Viide:</label></td>
							<td><input type="text" id="newReference" name="newReference"
								value="<%if (!isNew) {%><%=story.getReference()%><%}%>"></td>
						</tr>						
						<tr>
							<td><label for="storyDate">Kuup�ev:</label></td>
							<td><input type="date" name="newDate" value="<%if (!isNew) {%><%=story.getDate()%><%}%>"></td>
						</tr>
						
						<tr>
							<td><label for="storyConclusion">Kokkuv�te:</label>
							<td>
							<textarea rows="4" cols="3" name="newConclusion"><%if (!isNew) {%><%=story.getConclusion()%><%}%></textarea>
							</td>
						</tr>
							 
						</table>
						<div id="fieldsCheckBox">
						
							<p><b>Valdkonnad</b></p>
							
							<%
								ArrayList<String> fields = (ArrayList<String>) request
									.getAttribute("fieldRows");
							
								for (int i=0; i<fields.size(); i++){
							%>
							
							<%= fields.get(i) %>
							
							<% }%>	
					</div>
					
					<input type="hidden" name="bureauId"
						value="<%=request.getParameter("bureauId")%>" /> <input type="hidden"
						name="storyId" value="<%if (!isNew) {%><%=story.getSuccessStoryId()%><%}%>" /> <input
						type="submit" value="<%if (isNew) {%>Lisa<%} else%>Muuda<%;%>"
						id="addEdit" />
						<% if (!isNew) {%>
						 <input type="submit" value="Kustuta" id="delete"
						onclick="form.action='<%=request.getContextPath()%>/StoryDeleteServlet';">
						<%} %>
				</form>
			</div>
		</div>
		<!-- include footer -->
		<%@include file='/footer.jsp'%>
	</div>




</body>
</html>