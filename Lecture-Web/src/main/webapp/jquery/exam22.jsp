<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body * {
		display: block;
		border: 1px solid red;
		padding: 10px;
		margin: 10px;
	}
	
	.blue {
		border-color: blue
	}
</style>	
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		//$('span').parent().css('border-color', 'blue')
		//$('span').parents().addClass('blue')
		//$('span').parents('div').addClass('blue')
		//$('span').parentsUntil('div').addClass('blue')
		
		//$('#ancester').children().addClass('blue')
		//$('#ancester').children('#div02').addClass('blue')
		//$('#ancester').children('ul').addClass('blue')
		$('#ancester').find('ul').addClass('blue')
	})
</script>
</head>
<body>
	<div id="ancester">div
		<div id="div01">div1
			<ul>ul
				<li>li
					<span>span</span>
				</li>
			</ul>
		</div>
		<div id="div02">div2
			<p>p
				<span>span</span>
			</p>
		</div>
	</div>
</body>
</html>








