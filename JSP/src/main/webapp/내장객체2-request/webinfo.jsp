<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import = "java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>웹 브라우저 정보</title>
	
</head>
<body>
	<h2>웹브라우저 정보</h2>
	<hr>
	<p>서버명 :<%= request.getServerName() %> </p>
	<p>전송방식 : <%= request.getProtocol() %></p>
	<p>컨택스트 : <%= request.getContentType() %></p>
	<p>URI: <%=request.getRequestURL() %></p>
	
	<h2>Header정보 표시</h2>
	<ul>
		<li>
		<%
			Enumeration<String> en =request.getHeaderNames();
			String headerName = "";
			String headerValue = "";
			
			
			//null check
			while(en.hasMoreElements()){
				headerName = en.nextElement();
				headerValue= request.getHeader(headerName);
				out.println("<li>" + headerName + ":" + headerValue+ "</li>");
			}
		 %>
		</li>
	</ul>
</body>
</html>