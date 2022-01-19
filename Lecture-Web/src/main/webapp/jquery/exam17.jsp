<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('#btn01').click(function() {
			$('#p01').text('<mark>문장이 변환되었습니다</mark>')
		})
		
		$('#btn02').click(function() {
			$('#p02').html('<mark>문장이 변환되었습니다</mark>')
		})
		
		$('#btn03').click(function() {
			$('a').attr('href', 'http://www.daum.net')
		})
		
		$('#btn04').click(function() {
			
//			$('p').html('문장변환')
			$('p').html(function(index, element) {
				//console.log(index, element)
				return index + ' : <strong>문장변환</strong>'
			})
		})
	})
</script>
</head>
<body>
	<a href="http://www.naver.com" target="_blank">사이트이동</a>
	<p id="p01">첫번째 문장입니다</p>
	<p id="p02">두번째 문장입니다</p>
	<button id="btn01">TEXT변환</button>
	<button id="btn02">HTML변환</button>
	<button id="btn03">주소변환</button>
	<button id="btn04">문장변환</button>
</body>
</html>






