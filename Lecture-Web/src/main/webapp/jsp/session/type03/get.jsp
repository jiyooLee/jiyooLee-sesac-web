<%@page import="kr.co.mlec.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 세션 ID : <%= member.getId() %><br> --%>
	세션 ID : ${ member.id }<br>
	세션 PASSWORD : ${ member.password }<br>
	
	<a href="remove.jsp">세션삭제</a>
</body>
</html>









