package RegisterLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import Search.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		String password=request.getParameter("password");
		
		String bureauname = request.getParameter("bureauname");
		
		String registrycode = request.getParameter("regcode");
		
		String address = request.getParameter("address");
		
		//int tel = Integer.parseInt(request.getParameter("tel"));
		
		String tel = request.getParameter("tel");
		
		String contextpath = request.getContextPath();
		
		System.out.println(email);
		System.out.println(password);
		System.out.println(bureauname);
		System.out.println(registrycode);
		System.out.println(address);
		System.out.println(tel);
		System.out.println(contextpath);
		
		
		
		
		DBConnection dbconnection = new DBConnection();
		
		Connection curconnection = null;
		
		curconnection = dbconnection.getConnection();
		
		try{		
			
			PreparedStatement stmt = curconnection.prepareStatement("INSERT INTO users (email,password,bureauname,registrycode,address,tel) values(?,?,?,?,?,?)");
			
			stmt.setString(1,email);
			stmt.setString(2,password);
			stmt.setString(3,bureauname);
			stmt.setString(4,registrycode);
			stmt.setString(5,address);
			//stmt.setInt(6, tel);
			stmt.setString(6, tel);
			
			
			int i = stmt.executeUpdate();
			
			stmt.close();
			
			
			if ( i >0){
				response.sendRedirect(response.encodeRedirectURL(contextpath+"/BureauLogin.jsp"));
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
