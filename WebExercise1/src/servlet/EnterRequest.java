package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EnterRequest
 */
@WebServlet("/servlet/EnterRequest")
public class EnterRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnterRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("username");
		String psword = request.getParameter("password");
		if ("chenpanpan".equals(name) && "12345".equals(psword)) {
			/*request.getSession().setAttribute("name", name);*/
			/*ServletContext context =getServletContext();
			RequestDispatcher rd = context.getRequestDispatcher("/servlet/loginWindow2.html");
			rd.forward(request, response);*/
			response.sendRedirect("/WebExercise1/servlet/loginWindow.jsp");
			
		}
		else {
			/*RequestDispatcher rd = request.getRequestDispatcher("/servlet/loginOut.jsp");
			rd.include(request, response);*/
			response.sendRedirect("/WebExercise1/servlet/loginOut.jsp");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
