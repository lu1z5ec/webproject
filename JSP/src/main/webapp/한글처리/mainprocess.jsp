<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
    	//전달 받을 값이 "한글"일경우 인코딩 방식 : utf-8로 지정
    		request.setCharacterEncoding("utf-8");
    	//name 속성값을 통해 입력한 값을 받아야하므로 getParamete()메서드 사용
    		String name = request.getParameter("name");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>한글처리</title>
</head>
<body>
	<%=name %>님 안녕하세요.
</body>
</html>