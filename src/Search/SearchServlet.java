package Search;


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

import Details.BureauSearchResults;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*SELECT bureau.bureauid,  name, email,  averageprice, 
	       street, postalcode, phone,  cityname
	       
	  FROM bureau,successstory where bureau.fieldid=2 and successstory.bureauid=bureau.bureauid 
	  
	  and successstory.date BETWEEN '2002-05-09' and '2005-05-09' ;
	 */
		ArrayList<BureauSearchResults> bureauSR = new ArrayList<BureauSearchResults>();
		
		String county;
		String city;
		String region;
		String averagePrice;
		String SSDateFrom;
		String SSDateTo;
		String fieldName = null;
		int ap;
		
		
		
		
		
		
		
		fieldName = request.getParameter("fieldName");
		System.out.println(fieldName);
		
	
		
		city = request.getParameter("cities");
		System.out.println(city);
		
		county = request.getParameter("counties");
		System.out.println(county);
		
		region = request.getParameter("regions");
		System.out.println(region);
		
		averagePrice = request.getParameter("averageprice");
		System.out.println(averagePrice);
		
		SSDateFrom = request.getParameter("SSDateFrom").toString();
		System.out.println(SSDateFrom);
		
		SSDateTo = request.getParameter("SSDateTo").toString();
		System.out.println(SSDateTo);
		

		ap = Integer.parseInt(averagePrice);
		
		

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();

		Statement stmt = null;
		ResultSet rs = null;
		
		
		/*SELECT bureau.bureauid,  name, email,  averageprice, 
       street, postalcode, phone,  cityname 
       
  FROM bureau,successstory where bureau.fieldid=2 and 
  successstory.bureauid=bureau.bureauid and successstory.date BETWEEN '2002-05-09' and '2005-05-09' 
  and bureau.cityname='Tallinn' and bureau.regionname='Pohja-Eesti' 
  and averageprice=40 and bureau.countyname='Viljandiima' ;
	 */
		try {
			stmt = curConnection.createStatement();
			rs = stmt
					.executeQuery("SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
							+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname"
							+ " FROM bureau, successstory, field "
							+ " Where bureau.bureauid=field.bureauid and field.fieldname='" + fieldName + "' "
							+ "and successstory.bureauid=bureau.bureauid "
							+ " and successstory.date BETWEEN '" + SSDateFrom + "' and '" + SSDateTo + "' "
									+ "and bureau.cityname='" + city + "' and bureau.regionname='" + region + "'"
											+ " and averageprice=" + ap + " and bureau.countyname='" + county +"' ;");

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
				
				br.setFieldName(fieldName);
				br.setName(bureauName);
				br.setEmail(bureauEmail);
				br.setAveragePrice(bureauAveragePrice);
				br.setStreet(bureauStreet);
				br.setPostalcode(bureauPostalcode);
				br.setPhoneNumber(bureauPhone);
				br.setCity(bureauCity);
				
				

				System.out.println("Bureau Id: " + bureauId);
				System.out.println("Bureau Name: " + bureauName);
				System.out.println("Bureau Email: " + bureauEmail);
				System.out.println("Bureau AveragePrice " + bureauAveragePrice);
				System.out.println("Bureau Street " + bureauStreet);
				System.out.println("Bureau Postal " + bureauPostalcode);
				System.out.println("Bureau Phone " + bureauPhone);
				System.out.println("Bureau Cityname " + bureauCity);
				
				
				
				System.out.println("--------------------------------------------");
				
				bureauSR.add(br);

			}


			
			request.setAttribute("bureauSR", bureauSR);
			request.getRequestDispatcher("Catalog/CatalogDetailedSearchResults.jsp").forward(request, response);
			
			rs.close();
			stmt.close();
			curConnection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
			System.out.println("SEARCH ERROR");
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		
		

	/*	try {
			stmt = curConnection.createStatement();
			rs = stmt
					.executeQuery("SELECT bureau.name, city.cityname, "
							+ "address.street, address.postcode FROM bureau, city, address,"
							+ " field Where field.fieldname='" + field
							+ "' and bureau.averageprice=" + ap
							+ " and city.cityname='" + city + "';");

			while (rs.next()) {

				String bureauname = rs.getString("name");
				String cityname = rs.getString("cityname");
				String street = rs.getString("street");
				int postcode = rs.getInt("postcode");

				System.out.println("Bureau Name: " + bureauname);
				System.out.println("City Name: " + cityname);
				System.out.println("Street Name: " + street);
				System.out.println("Postcode: " + postcode);
				
				System.out.println("--------------------------------------------");

			}

			rs.close();
			stmt.close();
			curConnection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
*/
	}

}
