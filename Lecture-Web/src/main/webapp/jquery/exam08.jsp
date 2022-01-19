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
		alert('!!!')
		/*
			h1태그를 클리하면 글자색이 빨간색으로 변하고
			h1태그에 마우스를 접근시키면 배경으로 노란색으로 변경하고
			h1태그에서 마우스가 벗어나면 배경을 흰색으로 변경한다
		*/
		
		$('h1').on({
			'click' : function() {
				$(this).css('color', 'red')
			}, 'mouseenter' : function() {
				$(this).css('background-color', 'yellow')
			}, 'mouseleave' : function() {
				$(this).css('background-color', 'white')
			}
		})
		
		/*
		$('h1').click(function() {
			
		})
		$('h1').mouseenter(function() {
			
		})
		$('h1').mouseleave(function() {
			
		})
		*/
	})
</script>
</head>
<body>

	<h1 on>첫번째 문장입니다</h1>
	<h1>두번째 문장입니다</h1>
	<div>
		<h1>세번째 문장입니다</h1>
	</div>
	<h1>네번째 문장입니다</h1>
	<button>클릭</button>
</body>
</html>