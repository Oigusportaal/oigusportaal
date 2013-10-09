

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

import org.apache.catalina.Session;

import Details.BureauDetails;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		
		System.out.println("Welcome to FieldSearchServlet");
		
		String fieldName ;
		fieldName = request.getParameter("field");
		
		
		System.out.println(fieldName);
	
		
ArrayList<BureauDetails> bureau = new ArrayList<BureauDetails>();
		
		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();
		

		Statement stmt = null;
		ResultSet rs = null;
		
		
		try {
			stmt = curConnection.createStatement();
			rs = stmt
					.executeQuery("SELECT  bureau.bureauid, bureau.name, bureau.email, field.fieldname "
							+ "FROM  bureau,field WHERE bureau.bureauid=field.bureauid and field.fieldname='"+ fieldName +"' ;");

			while (rs.next()) {

				BureauDetails br = new BureauDetails();
				
				//br.setBureauId(rs.getInt("bureauid"));
				br.setBureauName(rs.getString("name"));
				//br.setRegistryCode(rs.getInt("registrycode"));
				br.setEmail(rs.getString("email"));
				br.setFieldName(rs.getString("fieldname"));
				
				//br.setPassword(rs.getString("password"));
				//br.setAveragePrice(rs.getInt("averagePrice"));
				//br.setStreet(rs.getString("street"));
				//br.setPostalcode(rs.getInt("postalcode"));
				//br.setFieldId(rs.getInt("fieldid"));
				
				
				bureau.add(br);
				

				System.out.println("Bureau Name: " + br.getBureauName());
				System.out.println("Email: " + br.getEmail());
				/*System.out.println("Registrycode: " + br.getRegistryCode());
				System.out.println("Postcode: " + br.getPostalcode());
				System.out.println("Street " + br.getStreet());
				System.out.println("Averageprice " + br.getAveragePrice());*/
				
				System.out.println("--------------------------------------------");

			}
			
			
			System.out.println(bureau.get(0).getBureauName());
			
			request.setAttribute("bureau", bureau);
			request.getRequestDispatcher("Catalog.jsp").forward(request, response);

			rs.close();
			stmt.close();
			curConnection.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
