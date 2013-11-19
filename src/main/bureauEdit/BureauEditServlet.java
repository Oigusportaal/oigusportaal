package main.bureauEdit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.details.FieldDetails;
import main.login.UserBean;
import main.search.DBConnection;

public class BureauEditServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public BureauEditServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		UserBean user = new UserBean();

		HttpSession session = request.getSession(true);
		session.setAttribute("currentSessionUser", user);
		session.setMaxInactiveInterval(3000);

		DBConnection connect = new DBConnection();

		Connection curConnection = null;

		PreparedStatement smt = null;

		curConnection = connect.getConnection();

		String email = (String) request.getParameter("oldEmail");
//		System.out.println(email);
		String password = (String) request.getParameter("oldPassword");
//		System.out.println(password);
		int phone = Integer.parseInt(request.getParameter("oldPhone"));
		int price = Integer.parseInt(request.getParameter("oldPrice"));
		String address = (String) request.getParameter("oldAddress");
		int regCode = Integer.parseInt(request.getParameter("oldRegistryCode"));

		user.setEmail(email);
		user.setPassword(password);
		// user.setPhone(phone);
		user.setStreet(address);
		user.setRegistryCode(regCode);

		boolean phoneChanged = false;
		boolean addressChanged = false;
		boolean priceChanged = false;
		boolean regCodeChanged = false;
		boolean emailChanged = false;
		boolean passChanged = false;
		int bureauId = 0;

		String oldCBoxes = request.getParameter("oldCBoxes");
		ArrayList<String> oldCBoxesList = new ArrayList<String>(
				Arrays.asList(oldCBoxes.split(";")));
		ArrayList<Integer> oldCBoxesListInt = new ArrayList<Integer>();
		for (int i = 0; i < oldCBoxesList.size(); i++) {
			int oldCBox = Integer.parseInt(oldCBoxesList.get(i));
			oldCBoxesListInt.add(oldCBox);
			//Debug
//			System.out.println("Old Checked box: " + oldCBox);
		}

		ArrayList<Integer> newCBoxesList = new ArrayList<Integer>();

		// HARDCODED; change it when need to add/delete fields
		final int LIST_LENGTH = 22;

		for (int i = 1; i < LIST_LENGTH + 1; i++) {
			String argument = "cbox" + i;
			//Debug			
			if (request.getParameter(argument) != null) {
				Integer newCBox = new Integer(i);
				newCBoxesList.add(newCBox);
				//Debug
//				System.out.println("Checked box: " + newCBox.intValue());
			}
		}

		ArrayList<FieldDetails> fields = new ArrayList<FieldDetails>();

		
		for (int i = 0; i< oldCBoxesListInt.size(); i++) {
			int occurrences = 0;
			for (int j = 0; j < newCBoxesList.size(); j++){
				if (oldCBoxesListInt.get(i).equals(newCBoxesList.get(j))){
					occurrences++;
				}
			}
			if (occurrences == 0){
				FieldDetails newField = new FieldDetails(oldCBoxesListInt.get(i).intValue());
				newField.setDelete(true);
				fields.add(newField);
				//Debug
//				System.out.println("To deletion: " + newField.getFieldId());
			}
		}
		
		for (int i = 0; i< newCBoxesList.size(); i++){
			int occurrences = 0;
			for (int j = 0; j < oldCBoxesListInt.size(); j++){
				if (newCBoxesList.get(i).equals(oldCBoxesListInt.get(j))){
					occurrences++;
				}
			}
			if (occurrences == 0){
				FieldDetails newField = new FieldDetails(newCBoxesList.get(i).intValue());
				newField.setAdd(true);
				fields.add(newField);
				//Debug
//				System.out.println("To add: " + newField.getFieldId());
			}
		}


		

		Statement statementUser = null;
		ResultSet resultSetUser = null;

		try {

			int newPhone = Integer.parseInt(request
					.getParameter("profileBureauPhone"));
			if (newPhone != phone) {
				phoneChanged = true;
//				System.out.println("Phone: " + phone + " " + newPhone);

			}

			String newAddress = (String) request
					.getParameter("profileBureauAddress");
			if (!newAddress.equals(address)) {
				addressChanged = true;
//				System.out.println("Address: " + address + " " + newAddress);
			}

			int newPrice = Integer.parseInt(request
					.getParameter("profileBureauAveragePrize"));
			if (newPrice != price) {
				priceChanged = true;
//				System.out.println("Price: " + price + " " + newPrice);

			}

			int newRegCode = Integer.parseInt(request
					.getParameter("profileBureauRegistrycode"));
			if (newRegCode != regCode) {
				regCodeChanged = true;
//				System.out.println("RegCode: " + regCode + " " + newRegCode);
			}

			String newEmail = (String) request
					.getParameter("profileBureauEmail");
			if (!newEmail.equals(email)) {
				emailChanged = true;
//				System.out.println("Email: " + email + " " + newEmail);
			}

			String newPassword = (String) request
					.getParameter("profileNewBureauProfile");
			if (!newPassword.equals(password) && !newPassword.equals("")
					&& newPassword != null) {
				passChanged = true;
//				System.out.println("Password: " + password + " " + newPassword);
			}

			String statement = "";

			if (!phoneChanged && !addressChanged && !priceChanged
					&& !regCodeChanged && !emailChanged && !passChanged) {
//				System.out.println("Made it to nothing changed");
			} else {
				statement = "UPDATE bureau SET ";
				if (phoneChanged == true) {
//					System.out.println("Made it to phonechange");
					user.setPhone(newPhone);
					statement = statement.concat("phone='" + newPhone + "', ");
				}
				if (addressChanged == true) {
//					System.out.println("Made it to addresschange");
					user.setStreet(newAddress);
					statement = statement.concat("street='" + newAddress
							+ "', ");
				}
				if (priceChanged == true) {
//					System.out.println("Made it to pricechange");
					user.setAveragePrice(newPrice);
					statement = statement.concat("averageprice='" + newPrice
							+ "', ");
				}
				if (regCodeChanged == true) {
//					System.out.println("Made it to regcodechange");
					user.setRegistryCode(newRegCode);
					statement = statement.concat("registrycode='" + newRegCode
							+ "', ");
				}
				if (emailChanged == true) {
//					System.out.println("Made it to emailchange");
					user.setEmail(newEmail);
					statement = statement.concat("email='" + newEmail + "', ");
				}
				if (passChanged == true) {
//					System.out.println("Made it to passwordchange");
					user.setPassword(newPassword);
					statement = statement.concat("password='" + newPassword
							+ "', ");
					request.setAttribute("passChanged", true);
				}
			}

			if (statement.endsWith(", ")) {
				statement = statement.substring(0, statement.length() - 2);
			}

			if (!statement.equals("")) {
				statement = statement.concat(" WHERE email='" + email
						+ "' AND password='" + password + "';");
//				System.out.println(statement);

				smt = curConnection.prepareStatement(statement);
				smt.executeUpdate();
				smt.close();

			}

			statementUser = curConnection.createStatement();
			resultSetUser = statementUser
					.executeQuery("SELECT bureauid FROM bureau WHERE email='"
							+ email + "' AND password='" + password + "';");

			while (resultSetUser.next()) {
				bureauId = (Integer) resultSetUser.getInt("bureauid");

			}

			resultSetUser.close();
			statementUser.close();

			curConnection.close();
			
			if (fields.size() != 0 ){
				FieldsDBEdit fieldsToDB = new FieldsDBEdit(fields, bureauId);
				fieldsToDB.addToDatabase();
			}
			request.setAttribute("user", user);
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/BureauProfileServlet");
			rd.forward(request, resp);

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
