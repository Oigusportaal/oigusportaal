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

import main.details.BureauDetails;
import main.details.StorySearch;

/**
 * Servlet implementation class FieldSearchServlet
 */
public class FieldSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FieldSearchServlet() {
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

		System.out.println("Welcome to FieldSearchServlet");

		String fieldName = request.getParameter("param");
		System.out.println(fieldName);

		int fieldId = 0;

		switch (fieldName) {
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

		ArrayList<BureauDetails> bureau = new ArrayList<BureauDetails>();

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();

		Statement stmt = null;
		ResultSet rs = null;

		Statement sstory = null;
		ResultSet rsstory = null;

		try {
			stmt = curConnection.createStatement();
			rs = stmt
					.executeQuery("SELECT bureau.bureauid, bureau.name, bureau.email, bureau.image, bureau.cityname, bureau.averageprice FROM bureau, fieldbureaujunction "
							+ "Where fieldbureaujunction.bureauid=bureau.bureauid and fieldbureaujunction.fieldid="
							+ fieldId + ";");

			while (rs.next()) {

				BureauDetails br = new BureauDetails();

				br.setBureauId(rs.getInt("bureauid"));
				br.setBureauName(rs.getString("name"));
				// br.setRegistryCode(rs.getInt("registrycode"));
				br.setEmail(rs.getString("email"));
				br.setImage(rs.getString("image"));
				br.setCity(rs.getString("cityname"));
				br.setAveragePrice(rs.getInt("averageprice"));
				br.setFieldName(fieldName);

				// br.setPassword(rs.getString("password"));
				// br.setAveragePrice(rs.getInt("averagePrice"));
				// br.setStreet(rs.getString("street"));
				// br.setPostalcode(rs.getInt("postalcode"));
				// br.setFieldId(rs.getInt("fieldid"));

				bureau.add(br);

				// System.out.println("Bureau Name: " + br.getBureauName());
				// System.out.println("Email: " + br.getEmail());
				// System.out.println("Field: " + br.getFieldName());
				// System.out.println("Image: " + br.getImage());
				/*
				 * System.out.println("Registrycode: " + br.getRegistryCode());
				 * System.out.println("Postcode: " + br.getPostalcode());
				 * System.out.println("Street " + br.getStreet());
				 * System.out.println("Averageprice " + br.getAveragePrice());
				 */

				System.out
						.println("--------------------------------------------");

			}

			System.out.println(bureau.get(0).getBureauName());

			

			rs.close();
			stmt.close();
			
			for (int i = 0; i < bureau.size(); i++) {	
				ArrayList<StorySearch> stories = new ArrayList<StorySearch>();
				sstory = curConnection.createStatement();
				rsstory = sstory
						.executeQuery("SELECT successstory.filepath, successstory.participants, successstory.date FROM successstory WHERE bureauid='"
								+ bureau.get(i).getBureauId() + "';");
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
						break;
					}
				}
				for (int k=0; k<(stories.size()-1); k++){
					try{
					if(stories.get(k+1).getDate().after(stories.get(k).getDate())){
						earliest = stories.get(k+1);
					}
					}
					catch (NullPointerException e){
						
					}
				}
				System.out.println("Last participants: " + earliest.getParticipants());
				System.out.println("Last path: " + earliest.getFilepath());
				
				bureau.get(i).setLastStoryParticipants(earliest.getParticipants());
				bureau.get(i).setLastStoryPath(earliest.getFilepath());
				
			}
			
			rsstory.close();
			sstory.close();
			
			
			
			curConnection.close();
			
			request.setAttribute("fieldName", fieldName);
			request.setAttribute("bureau", bureau);
			request.getRequestDispatcher("CatalogSearch.jsp").forward(request,
					response);
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}