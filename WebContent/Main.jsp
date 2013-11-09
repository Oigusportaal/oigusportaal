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
			<div id="header">
				<div id="logo">
					<img src="images/o_logo.png" />
				</div>
				<div id="menu">
					<ul>
						<li><a href="." ><img src="images/kataloog2.png"></a></li>
						<li><a href="http://www.google.com/" class="amenu"> <img src="images/kiirkysimus.png" /> </a></li>
						<li><a href="<%=request.getContextPath()%>/Login.jsp"> <img src="images/red.png" /> </a></li>
					</ul>
				</div>
			</div>
			<div class="page">
				<div class="content">
					<img src="images/welcoming.png" />
				</div>
				<tr>
					<div class="image">
					  <img alt="" src="images/foe_bc.png" />
					  <div class="text">
					<a name="CivilLaw"        				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CivilLaw">Ehitus- ja planeerimisõigus</a> 
						<a name="Privitization" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=Privitization">Erastamine</a>
						<a name="DebtCollectionServices" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=DebtCollectionServices">Inkassoteenused</a>
						<a name="IntellectualProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=IntellectualProperty">Intellektuaalneomand</a> 
						<a name="ITLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=ITLaw">IT-õigus</a>
						<a name="EnvironmentalLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=EnvironmentalLaw">Keskkonnaõigus</a>
						<a name="InsuranceLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=InsuranceLaw">Kindlustusõigus</a>
						<a name="NonMovableProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=NonMovableProperty">Kinnisvaraõigus</a>
						<a name="CompetitionLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CompetitionLaw">Konkurentsiõigus</a>
					</div>
					<div class="text2">
						
						<a name="CriminalLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=CriminalLaw">Kriminaal-ja väärteoõigus</a>
						<a name="Divorce"  						href="<%=request.getContextPath()%>/FieldSearchServlet?param=Divorce">Lahutus</a>
						<a name="TrafficLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TrafficLaw">Liiklusõigus</a> 
						<a name="EconomicLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=EconomicLaw">Majandusõigus</a>
						<a name="TaxLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=TaxLaw">Maksuõigus</a> 
						<a name="MedicineLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MedicineLaw">Meditsiin ja ravimid</a> 
						<a name="MediaAndTelecommunicationLaw" 	href="<%=request.getContextPath()%>/FieldSearchServlet?param=MediaAndTelecommunicationLaw">Meedia- ja telekommunikatsiooniõigus</a> 
						<a name="PropertyReform" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=PropertyReform">Omandireform</a> 
						<a name="BankingAndFinancialFunds" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=BankingAndFinancialFunds">Pangandus- ja finantsõigus, kapitaliturud</a>
					</div>
					<div class="text3">
						<a name="FamilyLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=FamilyLaw">Perekonnaõigus</a> 
						<a name="HeritageLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=HeritageLaw">Pärimisõigus</a> 
						<a name="RestructingLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=RestructingLaw">Restruktureerimine, saneerimine ja maksejõuetus (pankrot)</a> 
						<a name="SocialWelfareLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=SocialWelfareLaw">Sotsiaalhoolekandeõigus</a>
						<a name="TransportTradeAndSeaLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TransportTradeAndSeaLaw">Transpordi-, kaubandus- ja mereõigus</a> 
						<a name="LaborLaw" 									href="<%=request.getContextPath()%>/FieldSearchServlet?param=LaborLaw">Tööõigus</a> 
						<a name="AliensLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=AliensLaw">Välismaalasteõigus</a> 
						<a name="MergersAndAcquisitions" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MergersAndAcquisitions">Ühinemised- ja ülevõtmised</a>
					  </div>
					</div>
				</tr>
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
			<div id="footer">
				<p>(c) 2013 OÜ Õigusportaal <a href="http://www.google.com/">|&nbsp;&nbsp;Kontakt&nbsp;|</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
			</div>
		</div>
	</body>

</html>