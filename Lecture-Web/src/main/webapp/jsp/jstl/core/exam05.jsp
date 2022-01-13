<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String[] names = {"홍길동", "강길동", "윤길동", "송길동", "김길동"};
	
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("namesLength", names.length);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${ names }" var="name">
		${ name }
	</c:forEach>
	<br>

	<c:forEach var="i" begin="0" end="${ namesLength - 1 }">
		${ names[i] }
	</c:forEach>
	<hr>
	<h3>1 ~ 10사이의 정수 출력</h3>
	<c:forEach begin="1" end="10" var="i">
		${ i }<br>
	</c:forEach>
	<br>
	년도선택 : 
	<select>
		<c:forEach begin="1970" end="2022" var="year">
			<option>${ year }</option>
		</c:forEach>
	</select>
</body>
</html>












