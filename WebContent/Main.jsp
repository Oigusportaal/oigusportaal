<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/favicon.ico">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/style.css" type="text/css" />
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
					</div>
					
					
				</div>
				<div class="valdkonnad" >
					<table id="valdkonnadTabel">
						<tr class="valdkonnadHeading">
							<td colspan="3"><h2>Valdkonnad</h2>
						</tr>
						<tr class="valdkonnadLinks">
							<td class="firstLinks">					  
									<a name="CivilLaw"        				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CivilLaw" title="Detailplaneeringud. Ehitus- ja kasutuslubade v�ljastus. Vastavate haldusaktide vaidlustamine">Ehitus- ja planeerimis�igus</a> <br>
									<a name="Privitization" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=Privitization" title="maa tagastamise ja erastamisega seotud k�simused; ostuees�igusega erastamine">Erastamine</a><br>
									<a name="DebtCollectionServices" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=DebtCollectionServices" title="mulle ollakse v�lgu; mina olen v�lgu; sissen�utavate intressid v�imalikkus ja suurused ">Inkassoteenused</a><br>
									<a name="IntellectualProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=IntellectualProperty" title="autori�igusega seotud k�simused; kaubam�rgid; domeeninimed; disainilahendused">Intellektuaalneomand</a><br>
									<a name="ITLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=ITLaw" title="autori�iguste kaitse ja sellest loobumine nii t��suhtes kui ka t��v�tulepinguga loodavatele programmidele ja andmebaasidele">IT-�igus</a><br>
									<a name="EnvironmentalLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=EnvironmentalLaw" title="keskkonnale tekitatud kahju; keskkonnam�jude hindamine; kaevandamis�igused; ">Keskkonna�igus</a><br>
									<a name="InsuranceLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=InsuranceLaw" title="kohustusliku (nt s�idukikindlustus) ja vabatahtlik (nt KASKO) kindlustus; kindlustush�vitiste v�hendamine; ">Kindlustus�igus</a><br>
									<a name="NonMovableProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=NonMovableProperty" title="kinnisvaraga seotud tehingud (v��randamine, ��rimine); �igusauditite l�biviimine">Kinnisvara�igus</a><br>
									<a name="CompetitionLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CompetitionLaw" title="koondumised; keelatud kokkulepped; turgu valitseva seisundi kuritarvitamine">Konkurentsi�igus</a><br>
									
							</td>
							
							<td class="secondLinks">
									<a name="CriminalLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=CriminalLaw" title="viivistasuotstsuste vaidlustamine; kriminaalmenetlus; kohtuasjade uuesti l�bivaatamine">Kriminaal-ja v��rteo�igus</a><br>
									<a name="Divorce"  						href="<%=request.getContextPath()%>/FieldSearchServlet?param=Divorce" title="Abielu lahutamise v�imalused, vara jagamine ja lapse hooldus�igus">Lahutus</a><br>
									<a name="TrafficLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TrafficLaw" title="liiklustrahvid; joobeseisund ja selle tuvastamine; mootors�idukite juhtimiskeelud">Liiklus�igus</a><br>
									<a name="EconomicLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=EconomicLaw" title="�ri�hingute loomine; �ri�hingu juhtkonna vastutus; osa ja aktsia v��randamine (sh ostuees�igus); osanike ja aktsion�ride vahelised vaidlused; ">Majandus�igus</a><br>
									<a name="TaxLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=TaxLaw" title="maksusoodustused; maksuvaidlused; maksukohustused v�lisriikides">Maksu�igus</a> <br>
									<a name="MedicineLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MedicineLaw" title="meditsiiniteenustega seotud vaidlused; ravivead; load ja litsentsid; raviteenuse osutaja vastutus/andmekaitse/ravimiost">Meditsiin ja ravimid</a><br> 
									<a name="MediaAndTelecommunicationLaw" 	href="<%=request.getContextPath()%>/FieldSearchServlet?param=MediaAndTelecommunicationLaw" title="au ja v��rikuse riivamine avalikus meedias; telekommunikatsiooni teenust pakkuvate operaatorite vahelised �igused; kasutajate �igused">Meedia- ja telekommunikatsiooni�igus</a><br> 
									<a name="PropertyReform" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=PropertyReform" title="maade tagastamine; sund��rnikud">Omandireform</a> <br>
									<a name="BankingAndFinancialFunds" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=BankingAndFinancialFunds" title="laenu- ja liisinglepingud krediidiasutustega; kinnisasjade finantseerimine (sh k�endamine ja h�poteek) ; v�lakirjade emissioon; ">Pangandus- ja finants�igus, kapitaliturud</a><br>
									
									
							</td>
							<td class="thirdLinks">
									<a name="FamilyLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=FamilyLaw" title="isaduse tuvastamine; lapse eeskoste; �lalpidamiskohustus; abieluvaralepingud; elatise n�uded ">Perekonna�igus</a><br>
									<a name="HeritageLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=HeritageLaw" title="p�randist loobumine; seadusj�rgne p�rimine; testament ja selle vaidlustamine; sundosa; p�randvaralepingud; riigil�ivud p�rimismenetluses">P�rimis�igus</a> <br>
									<a name="RestructingLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=RestructingLaw" title="ettev�tte saneerimis protsess; pankrotiavalduse esitamine; restruktureerimisplaan ">Restruktureerimine, saneerimine ja maksej�uetus (pankrot)</a><br> 
									<a name="SocialWelfareLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=SocialWelfareLaw" title="sotsiaaltoetused; hoolekandeteenused - rehabiliteerimine, ��p�evaringne hooldamine, t��tamise toetamine">Sotsiaalhoolekande�igus</a><br>
									<a name="TransportTradeAndSeaLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TransportTradeAndSeaLaw" title="rahvusvaheliste kaupade autoveolepingud (CRM); vedaja vastutus; merin�uded ja meriv�lad">Transpordi-, kaubandus- ja mere�igus</a><br> 
									<a name="LaborLaw" 									href="<%=request.getContextPath()%>/FieldSearchServlet?param=LaborLaw" title="t��lepingu s�lmimine; t�htajalised ja t�htajatud t��lepingud; t��lepingu l�petamine (koondamine, poolte kokkuleppel, �les�tlemine); t��tuskindlustus h�vitis; v�hendatud palgaga t��">T���igus</a> <br>
									<a name="AliensLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=AliensLaw" title="v�lismaalaste viibimine Eestis; elamis- ja t��lubade v�ljastamine; kodakondsuse tekkimine ja andmine ">V�lismaalaste�igus</a><br> 
									<a name="MergersAndAcquisitions" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MergersAndAcquisitions" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">�hinemised- ja �lev�tmised</a><br>
							</td>
						</tr>
					</table>
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