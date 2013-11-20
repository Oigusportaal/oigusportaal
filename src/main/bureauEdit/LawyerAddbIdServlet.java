package main.bureauEdit;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LawyerAddbIdServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3729982410635591498L;

	public LawyerAddbIdServlet() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
		
		Enumeration<String> params = req.getAttributeNames();
		while(params.hasMoreElements()){
			System.out.println(params.nextElement());
		}
		
		int bureauId = (int) req.getAttribute("bureauId");
		req.setAttribute("bureauId", bureauId);
		req.getRequestDispatcher("LawyerProfile.jsp").forward(req, resp);
	}
	
	
	
	
	

}
