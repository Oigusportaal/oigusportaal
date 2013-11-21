<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
		<title>�igusportaal</title>
	</head>
	
	<body>
		<div id="wrapper" style="clear:both;">
			
			<!-- including header file -->
			<%@include file='/header.jsp'%>
			
			<div class="page">
			
				<div class="content">
					<!-- <img src="images/welcoming.png" /> -->
					<div id="firstPageWelcome">
						<div id="firstPageWelcomeText">
							<p>Tere tulemast �igusportaali!</p>
							<p>Siit leiate kvaliteetse ja kiire lahenduse k�ikidele<br>
					  			legaalsetele probleemidele,	mille lahendamiseks on <br>
					  			teil vaja profesionaalide abi.</p>
					   	</div>
					  	<div id="firstPageWelcomeText2">
					  		<p>Valige sobiv valdkond allolevast nimekirjast</p>
						</div>
					</div>
					
					
				</div>
				<div class="image">
					<div id="valdkonnad1" class="text">
						<h2>Valdkonnad</h2>
						<ul >					  
							<li><a name="CivilLaw"        				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CivilLaw">Ehitus- ja planeerimis�igus</a> 
							<li><a name="Privitization" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=Privitization">Erastamine</a>
							<li><a name="DebtCollectionServices" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=DebtCollectionServices">Inkassoteenused</a>
							<li><a name="IntellectualProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=IntellectualProperty">Intellektuaalneomand</a> 
							<li><a name="ITLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=ITLaw">IT-�igus</a>
							<li><a name="EnvironmentalLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=EnvironmentalLaw">Keskkonna�igus</a>
							<li><a name="InsuranceLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=InsuranceLaw">Kindlustus�igus</a>
							<li><a name="NonMovableProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=NonMovableProperty">Kinnisvara�igus</a>
							<li><a name="CompetitionLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CompetitionLaw">Konkurentsi�igus</a>
						</ul>	
					</div>
					<div id="valdkonnad2" class="text" >
						<ul>										
							<li><a name="CriminalLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=CriminalLaw">Kriminaal-ja v��rteo�igus</a>
							<li><a name="Divorce"  						href="<%=request.getContextPath()%>/FieldSearchServlet?param=Divorce">Lahutus</a>
							<li><a name="TrafficLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TrafficLaw">Liiklus�igus</a> 
							<li><a name="EconomicLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=EconomicLaw">Majandus�igus</a>
							<li><a name="TaxLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=TaxLaw">Maksu�igus</a> 
							<li><a name="MedicineLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MedicineLaw">Meditsiin ja ravimid</a> 
							<li><a name="MediaAndTelecommunicationLaw" 	href="<%=request.getContextPath()%>/FieldSearchServlet?param=MediaAndTelecommunicationLaw">Meedia- ja telekommunikatsiooni�igus</a> 
							<li><a name="PropertyReform" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=PropertyReform">Omandireform</a> 
							<li><a name="BankingAndFinancialFunds" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=BankingAndFinancialFunds">Pangandus- ja finants�igus, kapitaliturud</a>
						</ul>
					</div>
					<div id="valdkonnad3" class="text" >
						<ul>
							<li><a name="FamilyLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=FamilyLaw">Perekonna�igus</a> 
							<li><a name="HeritageLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=HeritageLaw">P�rimis�igus</a> 
							<li><a name="RestructingLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=RestructingLaw">Restruktureerimine, saneerimine ja maksej�uetus (pankrot)</a> 
							<li><a name="SocialWelfareLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=SocialWelfareLaw">Sotsiaalhoolekande�igus</a>
							<li><a name="TransportTradeAndSeaLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TransportTradeAndSeaLaw">Transpordi-, kaubandus- ja mere�igus</a> 
							<li><a name="LaborLaw" 									href="<%=request.getContextPath()%>/FieldSearchServlet?param=LaborLaw">T���igus</a> 
							<li><a name="AliensLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=AliensLaw">V�lismaalaste�igus</a> 
							<li><a name="MergersAndAcquisitions" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MergersAndAcquisitions">�hinemised- ja �lev�tmised</a>
						</ul>
					</div>
				</div>
				<div class="blog">
					
				</div>
				<div class="contacts">
					<img src="images/contact_shadow.png" />
					<h2>Kontaktid</h2>
					<p>Telefon: </p>
					<p>E-mail: </p>
					<p><strong>�igusportaal O�</strong></p>
					<p>Reg: </p>
				</div>
			</div>
			<!-- include footer -->
			<%@include file='/footer.jsp'%>
		</div>
	</body>

</html>