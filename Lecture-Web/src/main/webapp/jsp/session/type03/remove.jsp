<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	session.invalidate();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <c:remove var="member" scope="session" /> --%>
	<h2>세션삭제 완료</h2>
	<a href="get.jsp">삭제된 세션정보 보기</a>
</body>
</html>








