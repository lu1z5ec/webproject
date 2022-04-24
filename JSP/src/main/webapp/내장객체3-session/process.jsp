<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Here Scope 2 Request.JSP</h1><br>
	<% request.setCharacterEncoding("utf-8");
		String id= request.getParameter("id");
		//현재 브라우저에서만 세션접근 가능 & 타 브라우저에서 세션 접근불가
		session.setAttribute("id", id);
		//타 브라우저 및 현재브라우저에서도 세션 접근가능
		application.setAttribute("id",id);
	%>
	<%=id %>
	
</body>
</html>