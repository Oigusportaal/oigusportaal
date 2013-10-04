package src.main.java.eu.oigusportaal.portaal;



import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String city;
		String county;
		String region;
		String avgPrice;
		int ap;

		city = request.getParameter("cities");
		System.out.println(city);
		
		county = request.getParameter("counties");
		System.out.println(county);
		
		region = request.getParameter("regions");
		System.out.println(region);
		
		avgPrice = request.getParameter("averageprice");
		System.out.println(avgPrice);

		ap = Integer.parseInt(avgPrice);

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();

		Statement stmt = null;
		ResultSet rs = null;
		
		
		try {
			stmt = curConnection.createStatement();
			rs = stmt
					.executeQuery("SELECT bureau.name, bureau.street, bureau.postalcode, region.regionname, "
							+ "county.countyname, city.cityname FROM bureau, region, county, city "
							+ " Where region.regionname='"  + region
							+ "' and bureau.averageprice=" + ap 
							+ " and county.countyname='" + county 
							+ "' and city.cityname='" + city + "';");

			while (rs.next()) {

				String bureauname = rs.getString("name");
				String street = rs.getString("street");
				int postcode = rs.getInt("postalcode");
				String regionname = rs.getString("regionname");
				String countyname = rs.getString("countyname");
				String cityname = rs.getString("cityname");
				
				

				System.out.println("Bureau Name: " + bureauname);
				System.out.println("City Name: " + cityname);
				System.out.println("Street Name: " + street);
				System.out.println("Postcode: " + postcode);
				System.out.println("Regionname: " + regionname);
				System.out.println("Countyname: " + countyname);
				
				System.out.println("--------------------------------------------");

			}

			rs.close();
			stmt.close();
			curConnection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
