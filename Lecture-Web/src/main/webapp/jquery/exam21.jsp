<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.c1 {
		font-style: italic
	}
	
	.c2 {
		color: orange
	}
	
	.blue {
		color: blue
	}
	
	.red {
		color: red
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('button').click(function() {
		
			$('body h1').addClass('red')
			$('body *').addClass('blue')
			$('h1').removeClass('red')
		})
	})
</script>
</head>
<body>
	<h1 class="c1 c2">나는 문장1입니다</h1>
	<h1>나는 문장2입니다</h1>
	<p>나는 단락입니다</p>
	<div>
		나는 구역입니다
	</div>
	<button>클릭</button>
</body>
</html>





