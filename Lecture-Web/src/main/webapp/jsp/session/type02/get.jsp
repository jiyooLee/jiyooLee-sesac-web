<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션 ID : <%= id %><br>
	세션 ID : ${ id }<br>
	세션 PASSWORD : ${ password }<br>
	
	<a href="remove.jsp">세션삭제</a>
</body>
</html>









