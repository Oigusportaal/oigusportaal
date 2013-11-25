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
							<li><a name="CivilLaw"        				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CivilLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Ehitus- ja planeerimisõigus</a> 
							<li><a name="Privitization" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=Privitization" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Erastamine</a>
							<li><a name="DebtCollectionServices" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=DebtCollectionServices" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Inkassoteenused</a>
							<li><a name="IntellectualProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=IntellectualProperty" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Intellektuaalneomand</a> 
							<li><a name="ITLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=ITLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">IT-õigus</a>
							<li><a name="EnvironmentalLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=EnvironmentalLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Keskkonnaõigus</a>
							<li><a name="InsuranceLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=InsuranceLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Kindlustusõigus</a>
							<li><a name="NonMovableProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=NonMovableProperty" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Kinnisvaraõigus</a>
							<li><a name="CompetitionLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CompetitionLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Konkurentsiõigus</a>
						</ul>	
					</div>
					<div id="valdkonnad2" class="text" >
						<ul>										
							<li><a name="CriminalLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=CriminalLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Kriminaal-ja väärteoõigus</a>
							<li><a name="Divorce"  						href="<%=request.getContextPath()%>/FieldSearchServlet?param=Divorce" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Lahutus</a>
							<li><a name="TrafficLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TrafficLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Liiklusõigus</a> 
							<li><a name="EconomicLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=EconomicLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Majandusõigus</a>
							<li><a name="TaxLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=TaxLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Maksuõigus</a> 
							<li><a name="MedicineLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MedicineLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Meditsiin ja ravimid</a> 
							<li><a name="MediaAndTelecommunicationLaw" 	href="<%=request.getContextPath()%>/FieldSearchServlet?param=MediaAndTelecommunicationLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Meedia- ja telekommunikatsiooniõigus</a> 
							<li><a name="PropertyReform" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=PropertyReform" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Omandireform</a> 
							<li><a name="BankingAndFinancialFunds" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=BankingAndFinancialFunds" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Pangandus- ja finantsõigus, kapitaliturud</a>
						</ul>
					</div>
					<div id="valdkonnad3" class="text" >
						<ul>
							<li><a name="FamilyLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=FamilyLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Perekonnaõigus</a> 
							<li><a name="HeritageLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=HeritageLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Pärimisõigus</a> 
							<li><a name="RestructingLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=RestructingLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Restruktureerimine, saneerimine ja maksejõuetus (pankrot)</a> 
							<li><a name="SocialWelfareLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=SocialWelfareLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Sotsiaalhoolekandeõigus</a>
							<li><a name="TransportTradeAndSeaLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TransportTradeAndSeaLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Transpordi-, kaubandus- ja mereõigus</a> 
							<li><a name="LaborLaw" 									href="<%=request.getContextPath()%>/FieldSearchServlet?param=LaborLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Tööõigus</a> 
							<li><a name="AliensLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=AliensLaw" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Välismaalasteõigus</a> 
							<li><a name="MergersAndAcquisitions" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MergersAndAcquisitions" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Ühinemised- ja ülevõtmised</a>
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