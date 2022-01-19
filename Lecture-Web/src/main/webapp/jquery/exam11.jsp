<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1 {
		display: none
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		/*
			3초에 걸려서 Hello World 문장이 화면에 보인  뒤, complete 메세지를 경고창에 띄우기
		*/
	//	$('h1').show(3000)
	//	alert('complete...')
	/*
		$('h1').show(3000, function() {
			alert('complete...')
		})
	*/	
		/*
			3초에 걸려서 "Hello World" 문장을 화면에 보인 후, 글자색을 파란색으로 변경한 후,
			슬라이드 효과로 올라갔다 내려갔다를 수행 한 후 배경색을 노란색으로 변경
		*/
		$('h1').show(3000, function() {
			$(this).css('color', 'blue')
			$(this).slideUp(1000).slideDown(1000, function() {
				$(this).css('background-color', 'yellow')
			})
		})
	})
</script>
</head>
<body>
	<h1>Hello World</h1>
</body>
</html>



