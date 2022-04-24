<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" info = "admin" import = "java.util.*"%>
    <%--
    	info = 페이지 설명
    	languege = JSP 페이지의 스크립트 요소에서 사용할 언어
    	pageEncoding = JSP페이지 인코딩 방식 
    	contentType = 서버에서 웹브라우저가 받을 페이지 인코딩방식
    	import = 패키지
   		isThreadSafe = 하나의 JSP페이지가 동시에 여러 브라우저의 요청을 처리할수 있는지 여부(기본값)
   		autoFlush = JSP페이지 내용이 브라우저에 출력이 되기전 버퍼에 저장되어 있는 내용 처리방법 결정
   		buffer = JSP 페이지의 출력 크기 킬로바이트 단위로 지정
   		trimDirectiveWhitespaces = 결과 페이지에서 빈공간 제거
    --%>
<%
	//데이터 객체 호출
	Date date = new Date();
	//데이터 포맷 설정하기 위해 SimpleDateFormant객체 호출 (날짜 | 시간)
	SimpleDateFormat convert1 = new SimpleDateFormat("yyyy-mm-dd");
	SimpleDateFormat convert2 = new SimpleDateFormat("hh:mm:ss");
	
	String hiredate = convert1.format(date);
	String time = convert2.format(date);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>page 지시자</title>
</head>
<body>
	<h2>반갑습니다</h2>
	<hr>
	작성자 : <%=this.getServletInfo() %><br>
	현재시각 : <%=hiredate %><br>
	현재날짜 : <%=time %>
	
</body>
</html>