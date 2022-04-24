<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Main</title>
</head>
<body>
	<h2>학번, 이름 학년 선택과목을 입력하는 폼</h2>
	<form action = "process.jsp" method = "post"><br>
		학번<input type = "text" name = "num"><br>
		이름<input type = "text" name = "name"><br>
		
		학년<input type = "radio" name = "grade" value = "1">1학년
		   <input type = "radio" name = "grade" value = "2">2학년
		   <input type = "radio" name = "grade" value = "3">3학년
		  <br>
		
		선택과목 <select name = "subject">
			   	<option value = "kor">국어</option>
			   	<option value = "math">수학</option>
			   	<option value = "eng">영어</option>
			   </select>  
			  <br>
	      
	     취미 
	     	축구<input type = "checkbox" name = "hobby" value = "축구">
	        야구<input type = "checkbox" name = "hobby" value = "야구">
	        농구<input type = "checkbox" name = "hobby" value = "농구">
	        <br>
	       <input type = "submit" value = "전송">
	</form>
</body>
</html>