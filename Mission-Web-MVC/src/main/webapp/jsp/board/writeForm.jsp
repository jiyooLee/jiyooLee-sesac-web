<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글등록페이지</title>
<script>
	function doWrite() {
		
		let f = document.inputForm
		
		if(f.title.value == '') {
			alert('제목을 입력하세요')
			f.title.focus()
			return false
		}
		
		if(f.writer.value == '') {
			alert('글쓴이를 입력하세요')
			f.writer.focus()
			return false
		}
		
		if(f.content.value == '') {
			alert('내용을 입력하세요')
			f.content.focus()
			return false
		}
		
		return true
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
		<h2>새글 등록</h2>
		<hr>
		<br>
		<form action="${ pageContext.request.contextPath }/board/write.do" 
		      method="post" 
			  name="inputForm" onsubmit="return doWrite()"
			  enctype="multipart/form-data">
			<input type="hidden" name="writer" value="${ userVO.id }">
			<table border="1">
				<tr>
					<th width="23%">제목</th>
					<td>
						<input type="text" name="title">
					</td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td>
						${ userVO.id }
						<!-- <input type="text" name="writer"> -->
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea name="content" rows="7" cols="60"></textarea>
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td>
						<input type="file" name="attachfile1"><br>
						<input type="file" name="attachfile2"><br>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="새글등록">
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>


















