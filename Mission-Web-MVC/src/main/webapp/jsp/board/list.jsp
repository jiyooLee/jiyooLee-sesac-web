<%@page import="kr.co.mlec.board.dao.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.mlec.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>

	$(document).ready(function() {
		
		$('button').click(function() {
			location.href = "${ pageContext.request.contextPath }/board/writeForm.do"
		})
	})
	
	
	function doAction(boardNo) {
		<c:choose>
			<c:when test="${ not empty userVO}">
				location.href = "${ pageContext.request.contextPath }/board/detail.do?no=" + boardNo
			</c:when>
			<c:otherwise>
				if(confirm('로그인서비스가 필요합니다\n로그인페이지로 이동하시겠습니까?')){
					location.href = '${ pageContext.request.contextPath }/login.do'
				}
			</c:otherwise>
		</c:choose>
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
		<hr>
		<h2>게시판 목록</h2>
		<hr>
		<br>
		<table border="1" class="list">
			<tr>
				<th width="7%">번호</th>
				<th>제목</th>
				<th width="16%">글쓴이</th>
				<th width="20%">등록일</th>
			</tr>
			
			<c:forEach items="${ list }" var="board">
				<tr>
					<td>${ board.no }</td>
					<td>
						<a href="javascript:doAction(${ board.no })">
							<c:out value="${ board.title }" />
						</a>
						<%-- <a href="detail.jsp?no=${ board.no }">
							<c:out value="${ board.title }" />
						</a> --%>
					</td>
					<td>${ board.writer }</td>
					<td>${ board.regDate }</td>
				</tr>
			</c:forEach>
			
		</table>
		<br>
		<c:if test="${ not empty userVO }">
			<button>새글등록</button>
		</c:if>
	</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>


















