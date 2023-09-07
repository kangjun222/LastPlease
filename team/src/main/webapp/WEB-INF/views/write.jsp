<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <!-- 날짜 숫자등 형식에 맞쳐 나오는 코드 -->
 <c:set var="root" value="${pageContext.request.contextPath}/"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
#wrap {
	width: 1920px;
	height: 1800px;
	position: relative;
}

#header {
	width: 100%;
	height: 200px;
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
	left: 740px;
}
.color{
	background-color:#F5F5F5;
}
#title{
	width:1200px;
	border:none;
	background-color:#F5F5F5;
}
#content{
	width:1200px;
	border:none;
	background-color:#F5F5F5;
}
#writer{
	width:1200px;
	border:none;
	background-color:#F5F5F5;
}
</style>
</head>
<body>
	<div class="container">
		<div id="header">
			<a href="${root}"><img class="logo"
				src="${root}resources/imteamreview/로고투명.png" alt="로고이미지" /></a> <img
				class="tittle" src="${root}resources/imteamreview/Itemtittle.png"
				alt="아이템리뷰글씨" /></a>
		</div>

<form action="write"  method="post">
<div class="form-group">
 	<label for="title">제목</label>
 	<input id="title" name="title" required>
</div>

<div class="form-group">
 	<label for="content">내용</label>
 	<textarea rows="5" id="content" name="content" required></textarea>
</div>
<div class="form-group">
 	<label for="writer">작성자</label>
 	<input id="writer" name="writer" required>
</div>

<button href="write" class="btn btn-default">등록</button>
</form>
</body>
</html>