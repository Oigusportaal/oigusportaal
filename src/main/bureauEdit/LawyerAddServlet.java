package main.bureauEdit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.details.AttorneyDetails;
import main.login.UserBean;
import main.search.DBConnection;

public class LawyerAddServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8493362497025095811L;

	AttorneyDetails attorney = new AttorneyDetails();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);

		// Get attributes
		String name = (String) req.getAttribute("newName");
		String email = (String) req.getAttribute("newEmail");
		int bureauId = (int) req.getAttribute("bureauId");

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

		try {
			String sql = "INSERT INTO attorney (name, email, bureauid) VALUES ('"
					+ name + "','" + email + "'," + bureauId + ")";
			statement = curConnection.prepareStatement(sql);
			statement.executeUpdate();

			attorney.setBureauId(bureauId);
			;
			attorney.setName(name);
			attorney.setEmail(email);

			statement.close();
			curConnection.close();

			// Add attributes to request and dispatch the request to
			// LawyerProfile

			req.setAttribute("attorney", attorney);
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/LawyerProfileServlet");
			rd.forward(req, resp);

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
