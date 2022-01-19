<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#menu {
		height: 50px;
		background-color: green;
	}
	
	#submenu {
		height: 100px;
		background-color: yellow;
		padding: 20px;
		display: none;
	}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#menu').hover(function() {
//			$('#submenu').slideDown(1000)
			$('#submenu').slideToggle(1000)
		}, function() {
//			$('#submenu').slideUp(1000)
			$('#submenu').slideToggle(1000)
		})
	})
</script>
</head>
<body>
	<div id="menu">마우스를 접근시켜보세요</div>
	<div id="submenu">메뉴화면입니다</div>
</body>
</html>








