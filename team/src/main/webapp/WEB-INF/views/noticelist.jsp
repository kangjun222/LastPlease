<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 날짜 숫자등 형식에 맞쳐 나오는 코드 -->
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
#wrap {
	width: 1920px;
	height: 1800px;

}

#header {
	width: 100%;
	height: 200px;
	position: relative;
}
#content{
	position:relative;
}
.logo {
	width: 200px;
	height: 200px;

}

.tittle {
	width: 500px;
	height: 80px;
	position: absolute;
	top: 60px;
	left: 350px;
}
.color{
	background-color:#F5F5F5;
}
.img1{
	position:absolute;
	top:500px;
	/* left:10px; */
}
.img2{
	position:absolute;
	top:500px;
	left:350px;
}
.img3{
	position:absolute;
	top:500px;
	left:700px;
}
.img4{
	position:absolute;
	top:500px;
	left:1050px;
}
.img5{
	position:absolute;
	top:1000px;
	left:50px; 
}
.img6{
	position:absolute;
	top:1000px;
	left:470px;
}
.img7{
	position:absolute;
	top:1000px;
	left:890px;
}
.img8{
	position:absolute;
	top:300px;
	left:400px;
}
</style>

<style type="text/css">
.dataRow:hover {
	cursor: pointer;
	background: #dddddd;
}
</style>

<script type="text/javascript">
	$(function() {
		$(".dataRow").click(function() {
			let bno = $(this).find(".no").text();
			location = "view?bno=" + bno + "&inc=1";
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div id="header">
			<a href="${root}"><img class="logo"
				src="${root}resources/imteamreview/로고투명.png" alt="로고이미지" /></a> <img
				class="tittle" src="${root}resources/imteamreview/news.png"
				alt="아이템리뷰글씨" /></a>
		</div>
		<table class="table">
			<tr class="color">
				<th>NO</th>
				<th>SUBJECT</th>
				<th>DATE</th>
				<th>CLICK</th>
			</tr>
			<c:forEach items="${list }" var="vo">
				<tr class="dataRow">
					<td class="no">${vo.bno }</td>
					<td>${vo.tittle }</td>
					<td><fmt:formatDate value="${vo.date3 }" pattern="yyyy-MM-dd" /></td>
					<!--날짜 점으로나오게  value 안에용어들 -->
					<td>${vo.hit }</td>
				</tr>
			</c:forEach>
		</table>
		<div id="content">
			<img class="img8" src="${root}resources/imteamreview/work.png" alt="work.png" /> 
			<img class="img1" src="${root}resources/imteamreview/1.png" alt="이도현" />
			<img class="img2" src="${root}resources/imteamreview/2.png" alt="김선호" />
			<img class="img3" src="${root}resources/imteamreview/3.png" alt="공유" />
			<img class="img4" src="${root}resources/imteamreview/4.png" alt="천우희" />
			<img class="img5" src="${root}resources/imteamreview/5.png" alt="아이유" />
			<img class="img6" src="${root}resources/imteamreview/6.png" alt="한소희" />
			<img class="img7" src="${root}resources/imteamreview/7.png" alt="뉴진스" />
		</div>

	</div>
</body>
</html>