package main.bureauEdit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



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
        session.setAttribute("currentSessionUser",user);
        session.setMaxInactiveInterval(3000);
        
        DBConnection connect = new DBConnection();

		Connection curConnection = null;
		
		PreparedStatement smt = null;
		

		curConnection = connect.getConnection();
		
		String email = (String) request.getParameter("oldEmail");
		System.out.println(email);
		String password = (String) request.getParameter("oldPassword");
		System.out.println(password);
		int phone = Integer.parseInt(request.getParameter("oldPhone"));
		int price = Integer.parseInt(request.getParameter("oldPrice"));
		String address = (String) request.getParameter("oldAddress");
		int regCode = Integer.parseInt(request.getParameter("oldRegistryCode"));
		
		user.setEmail(email);
		user.setPassword(password);
		//user.setPhone(phone);
		user.setStreet(address);
		user.setRegistryCode(regCode);
				
		
		boolean phoneChanged = false;
		boolean addressChanged = false;
		boolean priceChanged = false;
		boolean regCodeChanged = false;
		boolean emailChanged = false;
		boolean passChanged = false;
		
		try{
			
			int newPhone = Integer.parseInt(request.getParameter("profileBureauPhone"));
			if (newPhone != phone){
				phoneChanged = true;
				System.out.println("Phone: " + phone + " " + newPhone);
				
			}
			
			String newAddress = (String) request.getParameter("profileBureauAddress");
			if (!newAddress.equals(address)){
				addressChanged = true;
				System.out.println("Address: " + address + " " + newAddress);				
			}
			
			int newPrice = Integer.parseInt(request.getParameter("profileBureauAveragePrize"));
			if (newPrice != price){
				priceChanged = true;
				System.out.println("Price: " + price + " " + newPrice);				
				
			}
			
			int newRegCode = Integer.parseInt(request.getParameter("profileBureauRegistrycode"));
			if (newRegCode != regCode){
				regCodeChanged = true;
				System.out.println("RegCode: " + regCode + " " + newRegCode);
			}
			
			String newEmail = (String) request.getParameter("profileBureauEmail");
			if (!newEmail.equals(email)){
				emailChanged = true;
				System.out.println("Email: " + email + " " + newEmail);				
			}
			
			String newPassword = (String) request.getParameter("profileNewBureauProfile");
			if (!newPassword.equals(password) && !newPassword.equals("") && newPassword != null){
				passChanged = true;
				System.out.println("Password: " + password + " " + newPassword);				
			}
			
			String statement = "";
			
			if (!phoneChanged && !addressChanged && !priceChanged && !regCodeChanged && !emailChanged && !passChanged){
				System.out.println("Made it to nothing changed");
			}
			else {
				statement = "UPDATE bureau SET ";
				if (phoneChanged == true){
					System.out.println("Made it to phonechange");
					user.setPhone(newPhone);
					statement = statement.concat("phone='" + newPhone + "', " );
				}
				if (addressChanged == true){
					System.out.println("Made it to addresschange");
					user.setStreet(newAddress);
					statement = statement.concat("street='" + newAddress + "', " );
				}
				if (priceChanged == true){
					System.out.println("Made it to pricechange");
					user.setAveragePrice(newPrice);
					statement = statement.concat("averageprice='" + newPrice + "', " );
				}
				if (regCodeChanged == true){
					System.out.println("Made it to regcodechange");
					user.setRegistryCode(newRegCode);
					statement = statement.concat("registrycode='" + newRegCode + "', " );
				}
				if (emailChanged == true){
					System.out.println("Made it to emailchange");
					user.setEmail(newEmail);
					statement = statement.concat("email='" + newEmail + "', " );
				}
				if (passChanged == true){
					System.out.println("Made it to passwordchange");
					user.setPassword(newPassword);
					statement = statement.concat("password='" + newPassword + "', " );
				}
			}
			
			if (statement.endsWith(", ")){
				statement = statement.substring(0, statement.length()-2);
			}
			
			if (!statement.equals("")){
				statement = statement.concat(" WHERE email='" + email + "' AND password='" + password + "';");
				System.out.println(statement);
				
				smt = curConnection.prepareStatement(statement);
				smt.executeUpdate();
				smt.close();
				
			}
			
			
			
			
			curConnection.close();
			
			request.setAttribute("user", user);
			request.getRequestDispatcher("BureauEdit.jsp").forward(request, resp);
						
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		
	}
	
	
	
	

}
