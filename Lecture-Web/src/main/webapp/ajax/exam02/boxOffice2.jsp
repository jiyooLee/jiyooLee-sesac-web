<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#searchResult {
		width: 70%;
		height: 600px;
		border: 1px solid red; 
	}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		
		$('#searchBtn').click(function() {
			
			// 검색일 추출
			let searchDate = $('#searchDate').val()
			searchDate = searchDate.split('-').join('')
			
			
			$.ajax({
				url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
				type: 'get',
				data: {
					key : 'a81b41c63e131f95e52a0e22a3ba55f5',
//					targetDt: '20220117',
					targetDt: searchDate,
					itemPerPage: 5
				},
				success: callback,
				error: function() {
					alert('실패')
				}
			})
		})
	})
	
	function callback(result) {
		
		$('#searchResult').empty()
		
	//	console.log(result)
		let list = result.boxOfficeResult.dailyBoxOfficeList
		for(let movie of list) {
			console.log(movie)
			// 순위
			let rank = movie.rank
			// 영화제목
			let name = movie.movieNm
			// 관객수
			let audiCnt = movie.audiCnt
			
			$('#searchResult').append('<h4>' + rank + "위</h4>")
			$('#searchResult').append("<strong>" + name 
					+ "<strong>(" + audiCnt + "명)<br>")
			$('#searchResult').append("<button>상세보기</button>")					
			$('#searchResult').append("<hr>") 
			
			/*
				상세보기 클릭
				감독 : 
				장르 : 
				배우정보
				배우명(작품 배역명)
			    배우명(작품 배역명)
			*/
		}
	}
</script>
</head>
<body>
	<h2>일별 박스오피스 조회서비스</h2>
	검색일 : <input type="date" id="searchDate">
	<button id="searchBtn">조회</button>
	<h3>검색결과</h3>
	<div id="searchResult"></div>
</body>
</html>











