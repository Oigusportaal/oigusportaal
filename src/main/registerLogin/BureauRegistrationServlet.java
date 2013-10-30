package main.registerLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import main.search.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.bureauActivation.RandomHashFactory;
import main.bureauActivation.SendEmail;

/**
 * Servlet implementation class BureauRegistrationServlet
 */
public class BureauRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BureauRegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	
		String email=request.getParameter("email");
		System.out.println(email);
		
		String password=request.getParameter("password");
		System.out.println(password);
		
		String bureauname = request.getParameter("bureauname");
		System.out.println(bureauname);
		
		int registrycode=0;
		registrycode = Integer.parseInt(request.getParameter("regcode"));
		System.out.println(registrycode);
		
		
		String street = request.getParameter("street_address");
		System.out.println(street);
		
		int postalcode = 0;
		postalcode = Integer.parseInt(request.getParameter("postal_code"));
		System.out.println(postalcode);
		
		int phone =0;
		phone = Integer.parseInt(request.getParameter("phone"));
		System.out.println(phone);
		
		String region = request.getParameter("regions");
		System.out.println(region);
		
		String city = request.getParameter("cities");
		System.out.println(city);
		
		String county = request.getParameter("counties");
		System.out.println(county);
		
		RandomHashFactory hash = new RandomHashFactory(10);
		String hashCode = hash.nextString();
		
		String contextpath = request.getContextPath();		
		System.out.println(contextpath);
		
		DBConnection dbconnection = new DBConnection();
		
		Connection curconnection = null;
		
		curconnection = dbconnection.getConnection();
		
		try{		
			
			PreparedStatement stmt = curconnection.prepareStatement("INSERT INTO bureau (registrycode,name,email,password,averageprice,street,postalcode,phone,regionname,cityname,countyname,hash,active) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			stmt.setInt(1,registrycode);
			stmt.setString(2,bureauname);
			stmt.setString(3,email);
			stmt.setString(4,password);
			stmt.setInt(5,40);
			stmt.setString(6,street);
			stmt.setInt(7,postalcode);
			stmt.setInt(8,phone);
			stmt.setString(9,region);
			stmt.setString(10,city);
			stmt.setString(11,county);
			stmt.setString(12, hashCode);
			stmt.setInt(13, 0);
					
			int i = stmt.executeUpdate();
			
			stmt.close();
			
			// Send Activation mail to client
			
			SendEmail send = new SendEmail(email, hashCode);
			send.sendMail();
			
			
			if ( i >0){
				response.sendRedirect(response.encodeRedirectURL(contextpath+"/BureauRegisterSuccess.jsp"));
				curconnection.close();
			}
	      } catch (Exception e) {
	          System.err.println( e.getClass().getName()+": "+ e.getMessage() );
	          System.exit(0);
	       }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
