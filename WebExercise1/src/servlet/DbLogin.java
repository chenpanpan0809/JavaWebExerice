package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;;
/**
 * Servlet implementation class DbLogin
 */
@WebServlet("/servlet/DbLogin")
public class DbLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String DBDRIVER="com.mysql.jdbc.Driver";
	public static final String DBURL="jdbc:mysql://localhost:3306/db_panpan";
	public static final String DBUSER="root";
	public static final String DBPSW="root";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean flag = false;
	String name = null;
	
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DbLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			Class.forName(DBDRIVER);
			conn =(Connection) DriverManager.getConnection(DBURL,DBUSER,DBPSW);
			String sql = "select username from tbl_name where username=? and password=?;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("username"));
			pstmt.setString(2, request.getParameter("password"));
			rs = pstmt.executeQuery();
			if(rs.next()){
				name = rs.getString(1);
				flag = true;
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(flag){
			
			/*<jsp:forward page="../servlet/loginWindow.jsp"></jsp:forward>*/
			response.sendRedirect("/WebExercise1/servlet/loginWindow.jsp");


		
		}else{
		
			/*<jsp:forward page="../servlet/indexconfim.jsp"></jsp:forward>*/
			response.sendRedirect("/WebExercise1/servlet/indexconfim2.jsp");
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
