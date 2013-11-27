<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/favicon.ico">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/style.css" type="text/css" />
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
					</div>
					
					
				</div>
				<div class="valdkonnad" >
					<table id="valdkonnadTabel">
						<tr class="valdkonnadHeading">
							<td colspan="3"><h2>Valdkonnad</h2>
						</tr>
						<tr class="valdkonnadLinks">
							<td class="firstLinks">					  
									<a name="CivilLaw"        				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CivilLaw" title="Detailplaneeringud. Ehitus- ja kasutuslubade väljastus. Vastavate haldusaktide vaidlustamine">Ehitus- ja planeerimisõigus</a> <br>
									<a name="Privitization" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=Privitization" title="maa tagastamise ja erastamisega seotud küsimused; ostueesõigusega erastamine">Erastamine</a><br>
									<a name="DebtCollectionServices" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=DebtCollectionServices" title="mulle ollakse võlgu; mina olen võlgu; sissenõutavate intressid võimalikkus ja suurused ">Inkassoteenused</a><br>
									<a name="IntellectualProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=IntellectualProperty" title="autoriõigusega seotud küsimused; kaubamärgid; domeeninimed; disainilahendused">Intellektuaalneomand</a><br>
									<a name="ITLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=ITLaw" title="autoriõiguste kaitse ja sellest loobumine nii töösuhtes kui ka töövõtulepinguga loodavatele programmidele ja andmebaasidele">IT-õigus</a><br>
									<a name="EnvironmentalLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=EnvironmentalLaw" title="keskkonnale tekitatud kahju; keskkonnamõjude hindamine; kaevandamisõigused; ">Keskkonnaõigus</a><br>
									<a name="InsuranceLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=InsuranceLaw" title="kohustusliku (nt sõidukikindlustus) ja vabatahtlik (nt KASKO) kindlustus; kindlustushüvitiste vähendamine; ">Kindlustusõigus</a><br>
									<a name="NonMovableProperty" 			href="<%=request.getContextPath()%>/FieldSearchServlet?param=NonMovableProperty" title="kinnisvaraga seotud tehingud (võõrandamine, üürimine); õigusauditite läbiviimine">Kinnisvaraõigus</a><br>
									<a name="CompetitionLaw" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=CompetitionLaw" title="koondumised; keelatud kokkulepped; turgu valitseva seisundi kuritarvitamine">Konkurentsiõigus</a><br>
									
							</td>
							
							<td class="secondLinks">
									<a name="CriminalLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=CriminalLaw" title="viivistasuotstsuste vaidlustamine; kriminaalmenetlus; kohtuasjade uuesti läbivaatamine">Kriminaal-ja väärteoõigus</a><br>
									<a name="Divorce"  						href="<%=request.getContextPath()%>/FieldSearchServlet?param=Divorce" title="Abielu lahutamise võimalused, vara jagamine ja lapse hooldusõigus">Lahutus</a><br>
									<a name="TrafficLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TrafficLaw" title="liiklustrahvid; joobeseisund ja selle tuvastamine; mootorsõidukite juhtimiskeelud">Liiklusõigus</a><br>
									<a name="EconomicLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=EconomicLaw" title="äriühingute loomine; äriühingu juhtkonna vastutus; osa ja aktsia võõrandamine (sh ostueesõigus); osanike ja aktsionäride vahelised vaidlused; ">Majandusõigus</a><br>
									<a name="TaxLaw" 						href="<%=request.getContextPath()%>/FieldSearchServlet?param=TaxLaw" title="maksusoodustused; maksuvaidlused; maksukohustused välisriikides">Maksuõigus</a> <br>
									<a name="MedicineLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MedicineLaw" title="meditsiiniteenustega seotud vaidlused; ravivead; load ja litsentsid; raviteenuse osutaja vastutus/andmekaitse/ravimiost">Meditsiin ja ravimid</a><br> 
									<a name="MediaAndTelecommunicationLaw" 	href="<%=request.getContextPath()%>/FieldSearchServlet?param=MediaAndTelecommunicationLaw" title="au ja väärikuse riivamine avalikus meedias; telekommunikatsiooni teenust pakkuvate operaatorite vahelised õigused; kasutajate õigused">Meedia- ja telekommunikatsiooniõigus</a><br> 
									<a name="PropertyReform" 				href="<%=request.getContextPath()%>/FieldSearchServlet?param=PropertyReform" title="maade tagastamine; sundüürnikud">Omandireform</a> <br>
									<a name="BankingAndFinancialFunds" 		href="<%=request.getContextPath()%>/FieldSearchServlet?param=BankingAndFinancialFunds" title="laenu- ja liisinglepingud krediidiasutustega; kinnisasjade finantseerimine (sh käendamine ja hüpoteek) ; võlakirjade emissioon; ">Pangandus- ja finantsõigus, kapitaliturud</a><br>
									
									
							</td>
							<td class="thirdLinks">
									<a name="FamilyLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=FamilyLaw" title="isaduse tuvastamine; lapse eeskoste; ülalpidamiskohustus; abieluvaralepingud; elatise nõuded ">Perekonnaõigus</a><br>
									<a name="HeritageLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=HeritageLaw" title="pärandist loobumine; seadusjärgne pärimine; testament ja selle vaidlustamine; sundosa; pärandvaralepingud; riigilõivud pärimismenetluses">Pärimisõigus</a> <br>
									<a name="RestructingLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=RestructingLaw" title="ettevõtte saneerimis protsess; pankrotiavalduse esitamine; restruktureerimisplaan ">Restruktureerimine, saneerimine ja maksejõuetus (pankrot)</a><br> 
									<a name="SocialWelfareLaw" 							href="<%=request.getContextPath()%>/FieldSearchServlet?param=SocialWelfareLaw" title="sotsiaaltoetused; hoolekandeteenused - rehabiliteerimine, ööpäevaringne hooldamine, töötamise toetamine">Sotsiaalhoolekandeõigus</a><br>
									<a name="TransportTradeAndSeaLaw" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=TransportTradeAndSeaLaw" title="rahvusvaheliste kaupade autoveolepingud (CRM); vedaja vastutus; merinõuded ja merivõlad">Transpordi-, kaubandus- ja mereõigus</a><br> 
									<a name="LaborLaw" 									href="<%=request.getContextPath()%>/FieldSearchServlet?param=LaborLaw" title="töölepingu sõlmimine; tähtajalised ja tähtajatud töölepingud; töölepingu lõpetamine (koondamine, poolte kokkuleppel, ülesütlemine); töötuskindlustus hüvitis; vähendatud palgaga töö">Tööõigus</a> <br>
									<a name="AliensLaw" 								href="<%=request.getContextPath()%>/FieldSearchServlet?param=AliensLaw" title="välismaalaste viibimine Eestis; elamis- ja töölubade väljastamine; kodakondsuse tekkimine ja andmine ">Välismaalasteõigus</a><br> 
									<a name="MergersAndAcquisitions" 					href="<%=request.getContextPath()%>/FieldSearchServlet?param=MergersAndAcquisitions" title="You can create a web page HTML mouseover text description, similar to an image alt tag, that will be viewed when your mouse is placed over the text link. ">Ühinemised- ja ülevõtmised</a><br>
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
					<p><strong>Õigusportaal OÜ</strong></p>
					<p>Reg: </p>
				</div>
			</div>
			<!-- include footer -->
			<%@include file='/footer.jsp'%>
		</div>
	</body>

</html>