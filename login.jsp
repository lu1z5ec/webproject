<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//1. jdbc 드라이버 로드
		Class.forName("org.mariadb.jdbc.Driver");
		
		//2. 커넥션 얻기
		String url = "jdbc.mariadb//localhost:3307/test";
		String user = "root";
		String password = "root";

		Connection con = DriverManager.getConnection(url, user, password);
		//3. 연결 설정
		String sql = "select * from test";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		
		//4. 반환 데이터 출력
		
	
		
		while(rs.next()){
			out.println(rs.getString("id"));
			out.println(rs.getString("pwd"));
			out.println("<br>");
			
		}
		
		//5. 객체 해지
		stmt.close();
		con.close();
	%>
</body>
</html>
