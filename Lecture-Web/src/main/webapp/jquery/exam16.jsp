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
		/*
		let pTags = document.getElementsByTagName("p")
		let html = pTags[0].innerHTML
		let text = pTags[0].innerText
		*/
		let html = $('p#p01').html()
		let text = $('p#p01').text()
		
		alert('추출된 html : ' + html + '\n추출된 text : ' + text)
		
		/*
		let aTag = document.getElementsByTagName("a")[0]
		//let href = aTag.href
		let href = aTag.getAttribute('href')
		*/
		
		let href = $('a').attr('href')
		
		alert('추출된 href : ' + href)
		
		$('button').click(function() {
			/*
			let inputTag = document.getElementById("name")
			let name = inputTag.value
			*/
			let name = $('#name').val()
			
			alert('입력된 이름 : ' + name)
		})
	})
</script>
</head>
<body>
	<p id="p01">내이름은 <b>홍길동</b>이고, 별명은 <i>의적</i>입니다</p>
	<p>내이름은 <strong>홍길순</strong>이고, 별명은 <em>의적2</em>입니다	</p>
	<a href="http://www.naver.com">네이버</a><br>
	이름 : <input type="text" name="name" id="name">
	<button>입력완료</button>
</body>
</html>















