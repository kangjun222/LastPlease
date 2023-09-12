<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>
<!-- 날짜 숫자등 형식에 맞쳐 나오는 코드 -->
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New & Notice</title>
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
.footer1{
	position:absolute;
	top:1200px;
	left:-350px;
	
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
	width: 250px;
	height: 300px;
}
.img2{
	position:absolute;
	top:500px;
	left:300px;
	width: 250px;
	height: 300px;
}
.img3{
	position:absolute;
	top:500px;
	left:600px;
	width: 250px;
	height: 300px;
}
.img4{
	position:absolute;
	top:500px;
	left:900px;
	width: 250px;
	height: 300px;
}
.img5{
	position:absolute;
	top:900px;
	left:50px; 
	width: 300px;
	height: 200px;
}
.img6{
	position:absolute;
	top:900px;
	left:430px;
	width: 300px;
	height: 200px;
}
.img7{
	position:absolute;
	top:900px;
	left:800px;
	width: 300px;
	height: 200px;
}
.img8{
	position:absolute;
	top:300px;
	left:350px;
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
	    	var bno =$(this).find(".no").text();
	        /* let bno = $(this).find(".no").text(); */
	      /*  location = "view?bno=" + bno + "&inc=1"; */
	      
	        // 데이터베이스에서 해당 공지사항의 URL을 가져옴
	        $.ajax({
	            url: "${root}noticecontroller/getURLByBno", // 이 URL은 컨트롤러에 추가해야 함
	            type: "GET",
	            data: { bno: bno },
	            success: function(url) {
	                // 가져온 URL로 이동
	                window.location.href = url;
	            },
	            error: function() {
	                console.error("URL을 가져오는 데 실패했습니다.");
	            }
	        });
	    });

	});
</script>
<script type="text/javascript">
	$(function() {
		//검색(key,word-input.value)&perPageNum 데이터세ㅊ팅 key가 없으면 t로 출력하고 잇으면 key를 출력
		$("#key").val("${(empty pageObject.key)?"t":pageObject.key}");
		$("#perPageNum").val("${pageObject.perPageNum}");
			
		//이벤트처리
		$(".dataRow").click(function() {
			let bno = $(this).find(".no").text();
			location = "noticelist?bno=" + bno + "&inc=1"
					+"&${pageObject.pageQuery}";
		});
		
		$("#perPageNum").change(function(){
			alert("페이지당 데이터의 개수를 변경했습니다.");
			location = "noticelist?page=1&perPageNum=" + $("#perPageNum").val()
					+ "&key=${pageObject.key}&word=${pageObject.word}";
		});//key는 유지하기위해서 = 쓰고/넘어오는 키를 쓰는건 pageObject에있는 key불러와쓰는것.
	});
</script>

</head>
<body>
<wrap>
	<div class="container">
		<div id="header">
			<a href="${root}"><img class="logo"
				src="${root}resources/imteamreview/로고투명.png" alt="로고이미지" /></a> <img
				class="tittle" src="${root}resources/imteamreview/news.png"
				alt="아이템리뷰글씨" /></a>
		</div>
		<div style="margin-bottom:10px" class="row">
		<div id="searchDiv">
			<form action="${root}noticecontroller/noticelist" class="form-inline">
				<input name="page" value="1" type="hidden"/>
				<div class="form-group">
					<select class="form-control" id="key" name="key">
						<option value="t">제목</option>
						<option value="c">내용</option>
						<option value="tcw">전체</option>
					</select>
				</div>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search" name="word" value="${pageObject.word }">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>	
			</div>
			<div class="input-group pull-right">
					<span class="input-group-addon">Row/Page</span>
				<select class="form-control input" id="perPageNum" name="perPageNum">
					<option>10</option>
					<option>15</option>
					<option>20</option>
				</select>
			</div>
		</form>
		</div>
	</div>
		<table class="table">
			<tr class="color">
				<th>NO</th>
			    <th>SUBJECT</th>	
				<th>DATE</th>
			</tr>
			<c:forEach items="${list }" var="vo">
				<tr  class="dataRow">
					<td class="no">${vo.bno }</td>
					<td>${vo.tittle }</td>
					<td><fmt:formatDate value="${vo.date3 }" pattern="yyyy-MM-dd" /></td>
					<!--날짜 점으로나오게  value 안에용어들 -->
				</tr>
			</c:forEach>
		</table>
		<div><pageNav:pageNav listURI="noticelist" pageObject="${pageObject }"></pageNav:pageNav></div>

		<div id="content">
			<img class="img8" src="${root}resources/imteamreview/work.png"
				alt="work.png" /> <img class="img1"
				src="${root}resources/imteamreview/1.png" alt="이도현" /> <img
				class="img2" src="${root}resources/imteamreview/2.png" alt="김선호" />
			<img class="img3" src="${root}resources/imteamreview/3.png" alt="공유" />
			<img class="img4" src="${root}resources/imteamreview/4.png" alt="천우희" />
			<img class="img5" src="${root}resources/imteamreview/5.png" alt="아이유" />
			<img class="img6" src="${root}resources/imteamreview/6.png" alt="한소희" />
			<img class="img7" src="${root}resources/imteamreview/7.png" alt="뉴진스" />
			
		
		</div>
	
	</div>

</wrap>
</body>
</html>