package Login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
        private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

        /**
         * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
         */
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                // TODO Auto-generated method stub
                
                try {
                        UserBean user = new UserBean();
                        user.setEmail(request.getParameter("email"));
                        user.setPassword(request.getParameter("password"));
                        user.setCategory(request.getParameter("userCategories"));

                        user = UserDAO.login(user);

                        if (user.isValid()) {
                                System.out.println("logged in");
                                request.setAttribute("user", user);
                                if (Integer.parseInt(user.getCategory()) == 1)
                                        request.getRequestDispatcher("AdminServlet").forward(request, response);
                                if (Integer.parseInt(user.getCategory()) == 2)
                                        response.sendRedirect("Bureau.jsp");

                        }

                        else {
                                System.out.println("not logged in");
                                response.sendRedirect("invalidLogin.jsp");
                        }
                } catch (Throwable theException) {
                        System.out.println(theException);
                }
                
        }

}