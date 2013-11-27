package main.search;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.bureauEdit.NameToValueDecrypter;
import main.details.BureauSearchResults;
import main.details.StorySearch;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		ArrayList<BureauSearchResults> bureauSR = new ArrayList<BureauSearchResults>();

		int fieldId = 1;

		
		String sql;
		String sql2;
		String sql3;
		String sql4;

		String fieldName;

		String county = null;
		int countyId;

		String city = null;
		int cityId;

		String region = null;
		int regionId;

		String averagePrice;
		String SSDateFrom;
		String SSDateFromFix;
		String SSDateTo;
		String SSDateToFix;
		boolean checkBoxDate;
		boolean checkBoxPrice;

		int ap;

		SSDateFrom = request.getParameter("From");
		if (SSDateFrom.isEmpty())
		{
			SSDateFrom = "01-01-1000";
			System.out.println(SSDateFrom);
		}
		else 
		{
		SSDateFromFix = SSDateFrom.replaceAll("/", "-");
		System.out.println(SSDateFromFix);
		}
		
		SSDateTo = request.getParameter("To");
		if (SSDateTo.isEmpty())
		{
			SSDateTo = "01-01-1010";
			System.out.println(SSDateTo);
		}
		else 
		{
		SSDateToFix = SSDateTo.replaceAll("/", "-");
		System.out.println(SSDateToFix);
		}
		
	

		checkBoxDate = request.getParameter("Date") != null;
		checkBoxPrice = request.getParameter("Price") != null;

		fieldName = request.getParameter("fieldName");
		System.out.println(fieldName);

		String ffs = fieldName.replaceAll("\\s", "");
		
		
		switch (ffs) {
		case "CivilLaw":
			fieldId = 1;
			break;
		case "Privitization":
			fieldId = 2;
			break;
		case "DebtCollectionServices":
			fieldId = 3;
			break;
		case "IntellectualProperty":
			fieldId = 4;
			break;
		case "ITLaw":
			fieldId = 5;
			break;
		case "EnvironmentalLaw":
			fieldId = 6;
			break;
		case "InsuranceLaw":
			fieldId = 7;
			break;
		case "NonMovableProperty":
			fieldId = 8;
			break;
		case "CompetitionLaw":
			fieldId = 9;
			break;
		case "CriminalLaw":
			fieldId = 10;
			break;
		case "Divorce":
			fieldId = 11;
			break;
		case "TrafficLaw":
			fieldId = 12;
			break;
		case "EconomicLaw":
			fieldId = 13;
			break;
		case "TaxLaw":
			fieldId = 14;
			break;
		case "MedicineLaw":
			fieldId = 15;
			break;
		case "MediaAndTelecommunicationLaw":
			fieldId = 16;
			break;
		case "PropertyReform":
			fieldId = 17;
			break;
		case "BankingAndFinancialFunds":
			fieldId = 18;
			break;
		case "FamilyLaw":
			fieldId = 19;
			break;
		case "HeritageLaw":
			fieldId = 20;
			break;
		case "RestructingLaw":
			fieldId = 21;
			break;
		case "SocialWelfareLaw":
			fieldId = 22;
			break;
		case "TransportTradeAndSeaLaw":
			fieldId = 23;
			break;
		case "LaborLaw":
			fieldId = 24;
			break;
		case "AliensLaw":
			fieldId = 25;
			break;
		case "MergersAndAcquisitions":
			fieldId = 26;
			break;
		}
		
		
	System.out.println(fieldId);
		
		
		
		
		

		System.out.println(ffs);

		cityId = Integer.parseInt(request.getParameter("cities"));
		countyId = Integer.parseInt(request.getParameter("counties"));
		regionId = Integer.parseInt(request.getParameter("regions"));
		
		NameToValueDecrypter names = new NameToValueDecrypter(cityId, regionId, countyId);
		city = names.getCityName();
		county = names.getCountyName();
		region = names.getRegionName();
		

		averagePrice = request.getParameter("averageprice");
		System.out.println(averagePrice);


		ap = Integer.parseInt(averagePrice);

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();

		Statement stmt = null;
		ResultSet rs = null;
		
		Statement sstory = null;
		ResultSet rsstory = null;

		sql = "SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname, bureau.image"
				+ " FROM bureau, fieldbureaujunction, successstory "
				+ " Where fieldbureaujunction.bureauid=bureau.bureauid and fieldbureaujunction.fieldid="+ fieldId +""
				+ "and  successstory.bureauid=bureau.bureauid and successstory.date BETWEEN '"
				+ SSDateFrom
				+ "' and '"
				+ SSDateTo
				+ "' "
				+ "and bureau.cityname='"
				+ city
				+ "' and bureau.regionname='"
				+ region
				+ "'"
				+ " and bureau.averageprice="
				+ ap
				+ " and bureau.countyname='" + county + "' ;";

		sql2 = "SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname, bureau.image"
				+ " FROM bureau, fieldbureaujunction, successstory "
				+ " Where fieldbureaujunction.bureauid=bureau.bureauid and fieldbureaujunction.fieldid="+ fieldId +""
				+ "and  successstory.bureauid=bureau.bureauid and successstory.date BETWEEN '"
				+ SSDateFrom
				+ "' and '"
				+ SSDateTo
				+ "' "
				+ "and bureau.cityname='"
				+ city
				+ "' and bureau.regionname='"
				+ region + "'" + "  and bureau.countyname='" + county + "' ;";

		sql3 = "SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname, bureau.image"
				+ " FROM bureau, fieldbureaujunction "
				+ " Where fieldbureaujunction.bureauid=bureau.bureauid and fieldbureaujunction.fieldid="+ fieldId +""
				+ " and bureau.cityname='"
				+ city
				+ "' and bureau.regionname='"
				+ region
				+ "'"
				+ "  and bureau.countyname='"
				+ county
				+ "' and bureau.averageprice<=" + ap + " ;";

		sql4 = "SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname, bureau.image"
				+ " FROM bureau, fieldbureaujunction "
				+ " Where fieldbureaujunction.bureauid=bureau.bureauid and fieldbureaujunction.fieldid="+ fieldId +""
				+ " and bureau.cityname='"
				+ city
				+ "' and bureau.regionname='"
				+ region
				+ "'"
				+ "  and bureau.countyname='" + county + "' ;";

		try {
			stmt = curConnection.createStatement();

			if (checkBoxDate == true && checkBoxPrice == true)
				rs = stmt.executeQuery(sql);
			else if (checkBoxDate == true && checkBoxPrice == false)
				rs = stmt.executeQuery(sql2);
			else if (checkBoxDate == false && checkBoxPrice == true)
				rs = stmt.executeQuery(sql3);
			else if (checkBoxDate == false && checkBoxPrice == false)
				rs = stmt.executeQuery(sql4);

			while (rs.next()) {

				BureauSearchResults br = new BureauSearchResults();

				int bureauId = rs.getInt("bureauid");
				String bureauName = rs.getString("name");
				String bureauEmail = rs.getString("email");
				int bureauAveragePrice = rs.getInt("averageprice");
				String bureauStreet = rs.getString("street");
				String bureauPostalcode = rs.getString("postalcode");
				String bureauPhone = rs.getString("phone");
				String bureauCity = rs.getString("cityname");
				String bureauImage = rs.getString("image");
				
				
				br.setFieldName(fieldName);
				br.setName(bureauName);
				br.setEmail(bureauEmail);
				br.setAveragePrice(bureauAveragePrice);
				br.setStreet(bureauStreet);
				br.setPostalcode(bureauPostalcode);
				br.setPhoneNumber(bureauPhone);
				br.setCity(bureauCity);
				br.setImage(bureauImage);
				br.setBureauId(bureauId);

				System.out.println("Bureau Id: " + bureauId);
				System.out.println("Bureau Name: " + bureauName);
				System.out.println("Bureau Email: " + bureauEmail);
				System.out.println("Bureau AveragePrice " + bureauAveragePrice);
				System.out.println("Bureau Street " + bureauStreet);
				System.out.println("Bureau Postal " + bureauPostalcode);
				System.out.println("Bureau Phone " + bureauPhone);
				System.out.println("Bureau Cityname " + bureauCity);
				System.out.println("Bureau Image: " + bureauImage);

				System.out
						.println("--------------------------------------------");

				bureauSR.add(br);

			}

			
			rs.close();
			stmt.close();
			
			for (int i = 0; i < bureauSR.size(); i++) {	
				ArrayList<StorySearch> stories = new ArrayList<StorySearch>();
				sstory = curConnection.createStatement();
				rsstory = sstory
						.executeQuery("SELECT successstory.filepath, successstory.participants, successstory.date FROM successstory WHERE bureauid='"
								+ bureauSR.get(i).getBureauId() + "';");
				while (rsstory.next()){
					StorySearch story = new StorySearch();
					story.setDate(rsstory.getDate("date"));
					story.setFilepath(rsstory.getString("filepath"));
					story.setParticipants(rsstory.getString("participants"));
					stories.add(story);
				}
				StorySearch earliest = null;
				for (int j=0; i<stories.size(); j++){
					if (stories.get(j).getDate() != null){
						earliest = stories.get(j);
						System.out.println("Earliest date at beginning: " + earliest.getDate().toString());
						break;
					}
				}
				for (int k=0; k<(stories.size()-1); k++){
					try{
					if(stories.get(k+1).getDate().after(stories.get(k).getDate())){
						System.out.println("Date " + stories.get(k).getDate().toString() + " is changed to " + stories.get(k+1).getDate().toString());
						earliest = stories.get(k+1);
					}
					}
					catch (NullPointerException e){
						
					}
				}
				System.out.println("Last participants: " + earliest.getParticipants());
				System.out.println("Last path: " + earliest.getFilepath());
				bureauSR.get(i).setLastStoryParticipants(earliest.getParticipants());
				bureauSR.get(i).setLastStoryPath(earliest.getFilepath());
				
			}
			
			if (bureauSR.size() != 0){
				rsstory.close();
				sstory.close();
			}
			curConnection.close();
			
			request.setAttribute("fieldName", fieldName);
			request.setAttribute("bureauSR", bureauSR);
			request.getRequestDispatcher("CatalogSearchDetailedResults.jsp")
					.forward(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block

			System.out.println("SEARCH ERROR");
			e.printStackTrace();
		}

	}

}