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
		String SSDateTo;
		boolean checkBoxDate;
		boolean checkBoxPrice;
		
		int ap;
		
		SSDateFrom = request.getParameter("From");
		System.out.println(SSDateFrom);
		
		SSDateTo = request.getParameter("To");
		System.out.println(SSDateTo);
		
		checkBoxDate = request.getParameter("Date") != null;
		checkBoxPrice = request.getParameter("Price") != null;

		
		
		fieldName = request.getParameter("fieldName");
		System.out.println(fieldName);
	
		String ffs = fieldName.replaceAll("\\s", "");
		
		System.out.println(ffs);
				
		
		cityId = Integer.parseInt(request.getParameter("cities"));
		System.out.println(cityId);
		  
	        switch (cityId) {
	            case 1:  city = "Tallinn";
	                     break;
	            case 2:  city = "Tartu";
	                     break;
	            case 3:  city = "Viljandi";
	                     break;
	            case 4:  city = "Pärnu";
	                     break;
	        }
	        System.out.println(city);
		
		
		
		countyId = Integer.parseInt(request.getParameter("counties"));
		System.out.println(countyId);
		
		switch (countyId) {
        case 1:  county = "Harjumaa";
                 break;
        case 2:  county = "Tartumaa";
                 break;
        case 3:  county = "Viljandimaa";
                 break;
        case 4:  county = "Pärnumaa";
                 break;
    }
    System.out.println(county);
		
		
		
		
		regionId = Integer.parseInt(request.getParameter("regions"));
		System.out.println(regionId);
		
		switch (regionId) {
        case 1:  region = "Põhja-Eesti";
                 break;
        case 2:  region = "Lõuna-Eesti";
                 break;
        case 3:  region = "Lääne-Eesti";
                 break;
        case 4:  region = "Ida-Eesti";
                 break;
    }
    System.out.println(region);
		
		
		
		averagePrice = request.getParameter("averageprice");
		System.out.println(averagePrice);
		

				
				
		
	/*	SSDateFrom = request.getParameter("SSDateFrom").toString();
		System.out.println(SSDateFrom);
		
		SSDateTo = request.getParameter("SSDateTo").toString();
		System.out.println(SSDateTo);
		*/

		ap = Integer.parseInt(averagePrice);
		
		

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();

		Statement stmt = null;
		ResultSet rs = null;
		
	
		
		/*
		 
		 
		 rs = stmt
					.executeQuery("SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
							+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname"
							+ " FROM bureau, field "
							+ " Where bureau.bureauid=field.bureauid and field.fieldname='" + ffs + "' "
									+ "and bureau.cityname='" + city + "' and bureau.regionname='" + region + "'"
											+ " and bureau.averageprice=" + ap + " and bureau.countyname='" + county +"' ;");
		 
		 
		 SELECT bureau.bureauid,  name, email,  averageprice, 
       street, postalcode, phone,  cityname 
       
  FROM bureau,successstory where bureau.fieldid=2 and 
  successstory.bureauid=bureau.bureauid and successstory.date BETWEEN '2002-05-09' and '2005-05-09' 
  and bureau.cityname='Tallinn' and bureau.regionname='Pohja-Eesti' 
  and averageprice=40 and bureau.countyname='Viljandiima' ;
	 */
		
		
		
		
		sql="SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname"
				+ " FROM bureau, field, successstory "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='" + ffs + "'  "
						+ "and  successstory.bureauid=bureau.bureauid and successstory.date BETWEEN '" + SSDateFrom + "' and '" + SSDateTo + "' "
						+ "and bureau.cityname='" + city + "' and bureau.regionname='" + region + "'"
								+ " and bureau.averageprice=" + ap + " and bureau.countyname='" + county +"' ;" ;
		
		
		sql2="SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname"
				+ " FROM bureau, field, successstory "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='" + ffs + "' "
+ "and  successstory.bureauid=bureau.bureauid and successstory.date BETWEEN '" + SSDateFrom + "' and '" + SSDateTo + "' "
						+ "and bureau.cityname='" + city + "' and bureau.regionname='" + region + "'"
								+ "  and bureau.countyname='" + county +"' ;" ;
		
		
		
		sql3="SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname"
				+ " FROM bureau, field "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='" + ffs + "' "
						+ " and bureau.cityname='" + city + "' and bureau.regionname='" + region + "'"
								+ "  and bureau.countyname='" + county +"' and bureau.averageprice<=" + ap + " ;" ;
							
		sql4="SELECT bureau.bureauid, bureau.name, bureau.email, bureau.averageprice, "
				+ "bureau.street, bureau.postalcode, bureau.phone, bureau.cityname"
				+ " FROM bureau, field "
				+ " Where bureau.bureauid=field.bureauid and field.fieldname='" + ffs + "' "
						+ " and bureau.cityname='" + city + "' and bureau.regionname='" + region + "'"
								+ "  and bureau.countyname='" + county +"' ;" ;
		
		try {
			stmt = curConnection.createStatement();
			
			if(checkBoxDate==true && checkBoxPrice==true)
				rs = stmt.executeQuery(sql);
			else if(checkBoxDate==true && checkBoxPrice==false)
				rs = stmt.executeQuery(sql2);
			else if(checkBoxDate==false && checkBoxPrice==true)
				rs = stmt.executeQuery(sql3);
			else if(checkBoxDate==false && checkBoxPrice==false)
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


			request.setAttribute("fieldName", fieldName);
			request.setAttribute("bureauSR", bureauSR);
			request.getRequestDispatcher("CatalogSearchDetailedResults.jsp").forward(request, response);
			
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