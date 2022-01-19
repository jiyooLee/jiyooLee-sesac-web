<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	let person = {
			name: '홍길동',
			'phone' : '010-1111-2222',
			info : function() {
				alert(this.name + ' : ' + this.phone)
			}
	}
	
	document.write('이름 : ' + person.name + ", 전화번호 : " + person.phone + '<br>')
	
	person.info()
</script>
</head>
<body>

</body>
</html>