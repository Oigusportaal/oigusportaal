<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<style type="text/css">
    <%@include file="theme/style.css" %>
    </style>
		<title>Õigusportaal</title>
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
							<p>Tere tulemast õigusportaali!</p>
							<p>Siit leiate kvaliteetse ja kiire lahenduse kõikidele<br>
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
							<li><a name="CivilLaw"        				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CivilLaw">Ehitus- ja planeerimisõigus</a> 
							<li><a name="Privitization" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=Privitization">Erastamine</a>
							<li><a name="DebtCollectionServices" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=DebtCollectionServices">Inkassoteenused</a>
							<li><a name="IntellectualProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=IntellectualProperty">Intellektuaalneomand</a> 
							<li><a name="ITLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=ITLaw">IT-õigus</a>
							<li><a name="EnvironmentalLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=EnvironmentalLaw">Keskkonnaõigus</a>
							<li><a name="InsuranceLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=InsuranceLaw">Kindlustusõigus</a>
							<li><a name="NonMovableProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=NonMovableProperty">Kinnisvaraõigus</a>
							<li><a name="CompetitionLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CompetitionLaw">Konkurentsiõigus</a>
						</ul>	
					</div>
					<div id="valdkonnad2" class="text" >
						<ul>										
							<li><a name="CriminalLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=CriminalLaw">Kriminaal-ja väärteoõigus</a>
							<li><a name="Divorce"  						href="<%=request.getContextPath()%>/FieldSearchServlet?param=Divorce">Lahutus</a>
							<li><a name="TrafficLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TrafficLaw">Liiklusõigus</a> 
							<li><a name="EconomicLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=EconomicLaw">Majandusõigus</a>
							<li><a name="TaxLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=TaxLaw">Maksuõigus</a> 
							<li><a name="MedicineLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MedicineLaw">Meditsiin ja ravimid</a> 
							<li><a name="MediaAndTelecommunicationLaw" 	href="<%=request.getContextPath()%>/FieldSearchServlet?param=MediaAndTelecommunicationLaw">Meedia- ja telekommunikatsiooniõigus</a> 
							<li><a name="PropertyReform" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=PropertyReform">Omandireform</a> 
							<li><a name="BankingAndFinancialFunds" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=BankingAndFinancialFunds">Pangandus- ja finantsõigus, kapitaliturud</a>
						</ul>
					</div>
					<div id="valdkonnad3" class="text" >
						<ul>
							<li><a name="FamilyLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=FamilyLaw">Perekonnaõigus</a> 
							<li><a name="HeritageLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=HeritageLaw">Pärimisõigus</a> 
							<li><a name="RestructingLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=RestructingLaw">Restruktureerimine, saneerimine ja maksejõuetus (pankrot)</a> 
							<li><a name="SocialWelfareLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=SocialWelfareLaw">Sotsiaalhoolekandeõigus</a>
							<li><a name="TransportTradeAndSeaLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TransportTradeAndSeaLaw">Transpordi-, kaubandus- ja mereõigus</a> 
							<li><a name="LaborLaw" 									href="<%=request.getContextPath()%>/FieldSearchServlet?param=LaborLaw">Tööõigus</a> 
							<li><a name="AliensLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=AliensLaw">Välismaalasteõigus</a> 
							<li><a name="MergersAndAcquisitions" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MergersAndAcquisitions">Ühinemised- ja ülevõtmised</a>
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
					<p><strong>Õigusportaal OÜ</strong></p>
					<p>Reg: </p>
				</div>
			</div>
			<!-- include footer -->
			<%@include file='/footer.jsp'%>
		</div>
	</body>

</html>