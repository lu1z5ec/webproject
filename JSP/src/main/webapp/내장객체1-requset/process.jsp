<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
    	//인코딩
    	request.setCharacterEncoding("utf-8");
    	//학번 | 이름
    	String num = request.getParameter("num");
    	String name = request.getParameter("name");
    	
    	//학년
    	String grade = request.getParameter("grade");
    	
    	//과목
    	String sub = request.getParameter("subject");
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP Process</title>
</head>
<body>
		<table border = "1px solid red" >
			<tr>
				<td>학번</td>
				<td><%=num %></td>
			</tr>
			<tr>
				<td>학번</td>
				<td><%=name %></td>
			</tr>
			<tr>
				<td>학번</td>
				<td><%=grade %></td>
			</tr>
			<tr>
				<td>과목</td>
				<td><%=sub %></td>
			</tr><tr>
				<td>취미</td>
				<td><%
						String[] arr = request.getParameterValues("hobby");
						int i= 0; for(; i<arr.length; i++){
							out.println(arr[i]);
						}
					%></td>
			</tr>
			
		</table>
</body>
</html>