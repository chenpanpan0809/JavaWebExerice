package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		/*Map<String, String> userAndpsword = new HashMap<String, String>();
		userAndpsword.put("chen", "12345");
		userAndpsword.put("li", "12345");
		userAndpsword.put("zhang", "1235");
		userAndpsword.put("huang", "12345");
		userAndpsword.put("gao", "12345");
		userAndpsword.put("pan", "12345");
		for (String na: userAndpsword.keySet()) {
			String nam = na;
		}*/
		String name = request.getParameter("username");
		String psword = request.getParameter("password");
		if ("chenpanpan".equals(name)&&"12345".equals(psword) ){
			String usered = request.getParameter("username");
		ServletContext context =getServletContext();
			RequestDispatcher rd = context.getRequestDispatcher("/servlet/loginWindow.jsp");
			rd.forward(request, response);
			HttpSession se = request.getSession();
			
			se.setAttribute("usered", usered);
			/*response.sendRedirect("/WebExercise1/servlet/loginWindow.jsp");*/
			
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("/servlet/loginOut.jsp");
			rd.include(request, response);
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
