<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<style type="text/css">
    <%@include file="mainstyle.css" %>
    </style>
		<title>�igusportaal</title>
	</head>
	
	<body>
		<div id="wrapper">
			<div id="header">
				<img id="logo" src="MainImages/o_logo.png" />
			</div>
			<div id="menu">
				<a href="." class="amenu"> <img src="MainImages/kataloog_hover.png" /> </a>
				<a href="http://www.google.com/" class="amenu"> <img src="MainImages/kiirkysimus.png" /> </a>
				<a href="http://www.google.com/" class="amenu"> <img src="MainImages/red.png" /> </a>
			</div>
			
			<div class="page">
				<div class="content">
					<img src="MainImages/welcoming.png" />
				</div>
				<tr>
					<div class="image">
					  <img alt="" src="MainImages/foe_bc.png" />
					  <div class="text">
					<a name="CivilLaw"        				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CivilLaw">Ehitus- ja planeerimis�igus</a> 
						<a name="Divorce"  						href="<%=request.getContextPath()%>/FieldSearchServlet?param=Divorce">Lahutus</a>
						<a name="Privitization" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=Privitization">Erastamine</a>
						<a name="DebtCollectionServices" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=DebtCollectionServices">Inkassoteenused</a>
						<a name="IntellectualProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=IntellectualProperty">Intellektuaalneomand</a> 
						<a name="ITLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=ITLaw">IT-�igus</a>
						<a name="EnvironmentalLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=EnvironmentalLaw">Keskkonna�igus</a>
						<a name="InsuranceLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=InsuranceLaw">Kindlustus�igus</a>
						<a name="NonMovableProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=NonMovableProperty">Kinnisvara�igus</a>
					</div>
					<div class="text2">
						<a name="CompetitionLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CompetitionLaw">Konkurentsi�igus</a>
						<a name="CriminalLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=CriminalLaw">Kriminaal-ja v��rteo�igus</a> 
						<a name="TrafficLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TrafficLaw">Liiklus�igus</a> 
						<a name="EconomicLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=EconomicLaw">Majandus�igus</a>
						<a name="TaxLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=TaxLaw">Maksu�igus</a> 
						<a name="MedicineLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MedicineLaw">Meditsiin ja ravimid</a> 
						<a name="MediaAndTelecommunicationLaw" 	href="<%=request.getContextPath()%>/FieldSearchServlet?param=MediaAndTelecommunicationLaw">Meedia- ja telekommunikatsiooni�igus</a> 
						<a name="PropertyReform" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=PropertyReform">Omandireform</a> 
						<a name="BankingAndFinancialFunds" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=BankingAndFinancialFunds">Pangandus- ja finants�igus, kapitaliturud</a>
					</div>
					<div class="text3">
						<a name="FamilyLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=FamilyLaw">Perekonna�igus</a> 
						<a name="HeritageLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=HeritageLaw">P�rimis�igus</a> 
						<a name="RestructingLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=RestructingLaw">Restruktureerimine, saneerimine ja maksej�uetus (pankrot)</a> 
						<a name="SocialWelfareLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=SocialWelfareLaw">Sotsiaalhoolekande�igus</a>
						<a name="TransportTradeAndSeaLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TransportTradeAndSeaLaw">Transpordi-, kaubandus- ja mere�igus</a> 
						<a name="LaborLaw" 									href="<%=request.getContextPath()%>/FieldSearchServlet?param=LaborLaw">T���igus</a> 
						<a name="AliensLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=AliensLaw">V�lismaalaste�igus</a> 
						<a name="MergersAndAcquisitions" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MergersAndAcquisitions">�hinemised- ja �lev�tmised</a>
					  </div>
					</div>
				</tr>
				<div class="blog">
					
				</div>
				<div class="contacts">
					<img src="MainImages/contact_shadow.png" />
					<h2>Kontaktid</h2>
					<p>Telefon: </p>
					<p>E-mail: </p>
					<p><strong>�igusportaal O�</strong></p>
					<p>Reg: </p>
				</div>
			</div>
			<div id="footer">
				<p>(c) 2010 O� �igusportaal <a href="http://www.google.com/">|&nbsp;&nbsp;Kontakt&nbsp;|</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Kasutajatingimused</a><a href="http://www.google.com/">&nbsp;|&nbsp;&nbsp;Konfidentsiaalsus</a></p>
			</div>
		</div>
	</body>

</html>