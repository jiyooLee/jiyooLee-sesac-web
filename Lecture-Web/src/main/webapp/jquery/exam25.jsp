<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		width: 200px;
		height: 200px;
		float: left;
	}
	button {
		height: 200px;
		float: left;
	}
	
	
	
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#next').click(function() {
			$('img').last().prependTo('#gallery')
		})
		
		$('#prev').click(function() {
			$('img').first().appendTo('#gallery')
		})
		
		setInterval(function() {
			$('#next').trigger('click')
		}, 2000)
	})
</script>
</head>
<body>
	<button id="prev">PREV</button>
	<span id="gallery">
		<img src="/Lecture-Web/html/images/dog2.jpg">
		<img src="/Lecture-Web/html/images/dog3.jpg">
		<img src="/Lecture-Web/html/images/cat.gif">
		<img src="/Lecture-Web/html/images/pencil.png">
	</span>
	<button id="next">NEXT</button>
</body>
</html>