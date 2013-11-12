package main.search;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.details.BureauSearchResults;

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

		System.out.println(ffs);

		cityId = Integer.parseInt(request.getParameter("cities"));
		System.out.println(cityId);

		switch (cityId) {
		case 1:
			city = "Tallinn";
			break;
		case 2:
			city = "Paide";
			break;
		case 3:
			city = "Rapla";
			break;
		case 4:
			city = "Jõhvi";
			break;
		case 5:
			city = "Jõgeva";
			break;
		case 6:
			city = "Rakvere";
			break;
		case 7:
			city = "Kärdla";
			break;
		case 8:
			city = "Haapsalu";
			break;
		case 9:
			city = "Pärnu";
			break;
		case 10:
			city = "Kuressaare";
			break;
		case 11:
			city = "Põlva";
			break;
		case 12:
			city = "Tartu";
			break;
		case 13:
			city = "Valga";
			break;
		case 14:
			city = "Viljandi";
			break;
		case 15:
			city = "Võru";
			break;
		}
		System.out.println(city);

		countyId = Integer.parseInt(request.getParameter("counties"));
		System.out.println(countyId);

		switch (countyId) {
		case 1:
			county = "Harjumaa";
			break;
		case 2:
			county = "Järvamaa";
			break;
		case 3:
			county = "Viljandimaa";
			break;
		case 4:
			county = "Ida-Virumaa";
			break;
		case 5:
			county = "Jõgevamaa";
			break;
		case 6:
			county = "Lääne-Virumaa";
			break;
		case 7:
			county = "Hiiumaa";
			break;
		case 8:
			county = "Läänemaa";
			break;
		case 9:
			county = "Pärnumaa";
			break;
		case 10:
			county = "Saaremaa";
			break;
		case 11:
			county = "Põlvamaa";
			break;
		case 12:
			county = "Tartumaa";
			break;
		case 13:
			county = "Valgamaa";
			break;
		case 14:
			county = "Viljandimaa";
			break;
		case 15:
			county = "Võrumaa";
			break;

		}
		System.out.println(county);

		regionId = Integer.parseInt(request.getParameter("regions"));
		System.out.println(regionId);

		switch (regionId) {
		case 1:
			region = "Põhja-Eesti";
			break;
		case 2:
			region = "Lõuna-Eesti";
			break;
		case 3:
			region = "Lääne-Eesti";
			break;
		case 4:
			region = "Ida-Eesti";
			break;
		}
		System.out.println(region);

		averagePrice = request.getParameter("averageprice");
		System.out.println(averagePrice);


		ap = Integer.parseInt(averagePrice);

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();

		Statement stmt = null;
		ResultSet rs = null;

		sql = "SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname, bureau.image"
				+ " FROM bureau, field, successstory "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='"
				+ ffs
				+ "'  "
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
				+ " FROM bureau, field, successstory "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='"
				+ ffs
				+ "' "
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
				+ " FROM bureau, field "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='"
				+ ffs
				+ "' "
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
				+ " FROM bureau, field "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='"
				+ ffs
				+ "' "
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

			request.setAttribute("fieldName", fieldName);
			request.setAttribute("bureauSR", bureauSR);
			request.getRequestDispatcher("CatalogSearchDetailedResults.jsp")
					.forward(request, response);

			rs.close();
			stmt.close();
			curConnection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block

			System.out.println("SEARCH ERROR");
			e.printStackTrace();
		}

	}

}