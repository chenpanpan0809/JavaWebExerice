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
			request.setAttribute("userid", name);
			ServletContext context =getServletContext();
			RequestDispatcher rd = context.getRequestDispatcher("/servlet/welcom.jsp");
			rd.forward(request, response);
			
		}
		/*else if (name==null||psword==null) {
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>login</title></head>");
			out.println("<body>");
			out.println("<h3><center>请输入密码<center></h3>");
			out.println("</body>");
			out.println("</html>");
			out.close();
			
		}*/
		else {
			RequestDispatcher rd = request.getRequestDispatcher("/servlet/loginWindow.html");
			rd.include(request, response);
			PrintWriter out = response.getWriter();
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
