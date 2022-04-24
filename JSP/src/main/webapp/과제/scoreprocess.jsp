30 lines (26 sloc)  629 Bytes
   
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
	<%
	
		//각 성적 가져오기
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		//성적 계산
		int total = kor + eng + math;
		double avg = total/3;
		
	%>
<body>
		<h2>결과</h2><hr>
	국어 : <%=kor %>
	영어 : <%=eng %>
	수학 : <%=math %>
	
	총점 : <%=total%>
	평균 : <%=avg%>
</body>
</html>