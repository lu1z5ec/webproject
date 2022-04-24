<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%@ page import = "java.sql.*" %>
<%
	
	Class.forName("org.mariadb.jdbc.Driver");
	
	String url = "jdbc:mariadb://127.0.0.1:3306/user";
	String id = "USER",pw = "user";

	Connection con = DriverManager.getConnection(url,id,pw);
	
	String sql = "SELECT * FROM LOGIN";
	
	Statement st = con.createStatement();
	
	//실행
	ResultSet rs = st.executeQuery(sql);


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


</body>
</html>