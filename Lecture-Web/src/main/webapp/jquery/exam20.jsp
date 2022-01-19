<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		border: 1px solid red;
		padding: 10px;
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('button').click(function() {
			/*
			let pTags = document.getElementsByTagName("p")
			for(let i=0; i < pTags.length; i++) {
				pTags[0].parentNode.removeChild(pTags[0])
			}
			*/
			
		//	$('p').remove()
		//	$('div').remove()
		//	$('div').empty()
		//	$('p').remove('.c01')
		//	$('p.c01').remove()
		
			$('p').remove('.c01, #id01')
			
		})	
	})
</script>
</head>
<body>
	<div>
		<p id="id01">나는 홍길동입니다</p>
		<mark class="c01">나는 윤길동입니다</mark><br>
		나는 고길동입니다<br>
		<p class="c01">나는 한길동입니다</p>
		<p>나는 김길동입니다</p>
	</div>
	<p class="c01">나는 박길동입니다</p>
	<button>삭제</button>
</body>
</html>








