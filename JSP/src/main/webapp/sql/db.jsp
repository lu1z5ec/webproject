<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>

<%
	//1.DB드라이버 
		Class.forName("org.mariadb.jdbc.Driver");
	//2.연결정보 설정
		String url = "jdbc:mariadb://127.0.0.1:3306/user";
		String id = "root";String pwd = "root";
	//3.연결 객체생성
		Connection con = DriverManager.getConnection(url,id,pwd);
		out.println("ok 500");
	//4.연결해제
		con.close();
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