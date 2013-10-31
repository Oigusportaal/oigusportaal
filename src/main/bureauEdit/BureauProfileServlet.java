package main.bureauEdit;

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
import javax.servlet.http.HttpSession;

import main.details.AttorneyDetails;
import main.details.SuccessStoryDetails;
import main.login.UserBean;
import main.search.DBConnection;


public class BureauProfileServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BureauProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		UserBean user =  (UserBean) request.getAttribute("user");
		
		ArrayList<AttorneyDetails> attorneys = new ArrayList<AttorneyDetails>();
		ArrayList<SuccessStoryDetails> successStories = new ArrayList<SuccessStoryDetails>();
		
		HttpSession session = request.getSession(true);	    
        session.setAttribute("currentSessionUser",user);
        session.setMaxInactiveInterval(3000);
        
        DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();
		

		Statement statementUser = null;
		ResultSet resultSetUser = null;
		
		Statement statementAttorneys = null;
		ResultSet resultSetAttorneys = null;
		
		Statement statementStories = null;
		ResultSet resultSetStories = null;
		
		String email = user.getEmail();
		String password = user.getPassword();
		
		
		try {
			statementUser = curConnection.createStatement();
			resultSetUser = statementUser.executeQuery("SELECT * FROM bureau WHERE email='" + email + "' AND password='" + password + "';" );
			
			int bureauId = 0;
			
			while (resultSetUser.next()){
			user.setAveragePrice(resultSetUser.getInt("averageprice"));
			user.setStreet(resultSetUser.getString("street"));
			user.setBureauName(resultSetUser.getString("name"));
			user.setCategory(resultSetUser.getString("category"));
			user.setEmail(resultSetUser.getString("email"));
			user.setImage(resultSetUser.getString("image"));
			user.setPhone(resultSetUser.getInt("phone"));
			user.setPostalcode(resultSetUser.getInt("postalcode"));
			user.setRegistryCode(resultSetUser.getInt("registrycode"));
			bureauId = (Integer) resultSetUser.getInt("bureauid");
			
			System.out.println("User attributes are set");
			
			}
			
			
			resultSetUser.close();
			statementUser.close();
			
			statementAttorneys = curConnection.createStatement();
			resultSetAttorneys = statementAttorneys.executeQuery("SELECT * FROM attorney WHERE bureauid='" + bureauId + "';");
			
		
			while (resultSetAttorneys.next()){
				
				AttorneyDetails attorney = new AttorneyDetails();
				
				attorney.setName(resultSetAttorneys.getString("name"));
				attorney.setEmail(resultSetAttorneys.getString("email"));
				
				attorneys.add(attorney);
				
				System.out.println(attorney.getEmail());
				System.out.println(attorney.getName());
				
			}
			
			statementAttorneys.close();
			resultSetAttorneys.close();
			
			statementStories = curConnection.createStatement();
			resultSetStories = statementStories.executeQuery("SELECT * FROM successstory WHERE bureauid='" + bureauId + "';");
			
			while (resultSetStories.next()){
				SuccessStoryDetails story = new SuccessStoryDetails();
				
				story.setConclusion(resultSetStories.getString("conclusion"));
				story.setFieldid(resultSetStories.getInt("fieldid"));
				story.setParticipants(resultSetStories.getString("participants"));
				story.setReference(resultSetStories.getString("reference"));
				
				successStories.add(story);
				
				System.out.println(story.getConclusion());
				System.out.println(story.getFieldid());
				System.out.println(story.getParticipants());
				System.out.println(story.getReference());
				
				
			}
			
			statementStories.close();
			resultSetStories.close();
			
			
			curConnection.close();
			
			request.setAttribute("user", user);
			request.setAttribute("attorneys", attorneys);
			request.setAttribute("successStories", successStories);
			request.getRequestDispatcher("BureauEdit.jsp").forward(request, resp);
			
		}
		
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); }
		
		
	}

}
