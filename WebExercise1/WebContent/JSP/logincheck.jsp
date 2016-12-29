<%@page import="com.mysql.jdbc.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
public static final String DBDRIVER="com.mysql.jdbc.Driver";
public static final String DBURL="jdbc:mysql://localhost:3306/db_panpan";
public static final String DBUSER="root";
public static final String DBPSW="root";

%>
	<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
boolean flag = false;
String name = null;
%>
	<%
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

%>
	<%
if(flag){
	%>
	<jsp:forward page="../servlet/loginWindow.jsp"></jsp:forward>



	<%
}else{
%>
	<jsp:forward page="../servlet/indexconfim.jsp"></jsp:forward>

	<% 
}
%>
</body>
</html>