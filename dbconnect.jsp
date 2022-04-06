<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  
    import = "java.sql.*"
    
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
<%
	//1. Jdbc드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");

	//2. 연결통로(Connection) 얻기 * import해서 모듈 들고와야함
	String url = "jdbc.mariadb://localhost:3307/test";
	String user = "root";
	String password = "root";
	//db연결 위해 정보 가져와서 con변수에 저장
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. DB연결
	Statement stmt = con.createStatement();
	
	out.println("연결성공");
	
	stmt.close();
	con.close();
	
	

%>
</body>
</html>
