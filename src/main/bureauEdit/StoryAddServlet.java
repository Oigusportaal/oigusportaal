package main.bureauEdit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.details.SuccessStoryDetails;
import main.login.UserBean;
import main.search.DBConnection;

public class StoryAddServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8393362497025095811L;

	SuccessStoryDetails story = new SuccessStoryDetails();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		

		// Get attributes
		String participants = req.getParameter("newParticipants");
		String reference = req.getParameter("newReference");
		Date date = java.sql.Date.valueOf(req.getParameter("newDate"));
		String conclusion = req.getParameter("newConclusion");
		int bureauId = Integer.valueOf(req.getParameter("bureauId"));
		int fieldId = Integer.valueOf(req.getParameter("fields"));

		// Get HTTP session
		HttpSession session = req.getSession(true);

		UserBean user = (UserBean) session.getAttribute("user");
		session.setAttribute("currentSessionUser", user);
		session.setMaxInactiveInterval(3000);

		// Initiate database connection

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		curConnection = connect.getConnection();

		PreparedStatement statement = null;
		
		Statement smt = null;
		ResultSet rst  =null;

		try {
			String sql = "INSERT INTO successstory (participants, reference, date, conclusion, bureauid, fieldid) VALUES ('"
					+ participants + "','" + reference + "','" + date + "','" + conclusion + "','" + bureauId + "','" + fieldId + "');";
			statement = curConnection.prepareStatement(sql);
//			System.out.println(statement);
			statement.executeUpdate();

			story.setBureauId(bureauId);
			story.setConclusion(conclusion);
			story.setDate(date);
			story.setFieldId(fieldId);
			story.setParticipants(participants);
			story.setReference(reference);
			
			statement.close();
			// Get the new successtory id

			smt = curConnection.createStatement();
			rst = smt.executeQuery("SELECT ssid FROM successstory WHERE reference='" + reference + "';");
			while (rst.next()){
				story.setSuccessStoryId(rst.getInt("ssid"));
			}
			// Add attributes to request and dispatch the request to
			// LawyerProfile 

						
			rst.close();
			smt.close();
			curConnection.close();
			
			req.setAttribute("story", story);
			req.getRequestDispatcher("StoryProfileServlet").forward(req, resp);

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
