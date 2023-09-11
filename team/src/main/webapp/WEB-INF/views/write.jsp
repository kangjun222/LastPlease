<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="pageNav" tagdir="/WEB-INF/tags"%>
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
<script>
$(document).ready(function() {
  
  // 폼 제출 시 모달 창을 표시
  $("form").submit(function(event) {
    event.preventDefault(); // 기본 제출 동작을 막음
    
    // 글 등록 로직 시작
    var formData = $("form").serialize(); // 폼 데이터를 가져옴

    $.ajax({
      url: "write", // 글 등록을 처리하는 서버 측 URL로 변경
      type: "POST",
      data: formData,
      success: function(data) {
        // 등록 성공 시 모달 창 표시
        $("#myModal").modal("show");

        // 모달이 닫힐 때 이벤트 핸들러
        $("#myModal").on("hidden.bs.modal", function () {
          window.location.href = "list"; // 원하는 리스트 페이지로 리다이렉션
        });
      },
      error: function() {
        // 등록 실패 시 처리
        alert("글 등록에 실패했습니다.");
      }
    });
  });
});
</script>

</head>
<body>
<!-- 모달 창 -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- 모달 내용 -->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">H entertainment</h4>
      </div>
      <div class="modal-body">
        <p>H entertainment 게시판 글등록이 되었습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
	<div class="container">
		<div id="header">
			<a href="${root}"><img class="logo"
				src="${root}resources/imteamreview/로고투명.png" alt="로고이미지" /></a> <img
				class="tittle" src="${root}resources/imteamreview/Itemtittle.png"
				alt="아이템리뷰글씨" /></a>
		</div>

		<form action="write" method="post">
			<input name="perPageNum" value="${param.perPageNum }" type="hidden">
			<div class="form-group">
				<label for="title">제목</label> 
				<input id="title" name="title" required>
			</div>

			<div class="form-group">
				<label for="content">내용</label>
				<textarea rows="5" id="content" name="content" required></textarea>
			</div>
			<div class="form-group">
				<label for="writer">작성자</label> <input id="writer" name="writer"
					required>
			</div>
			<button href="write" class="btn btn-default">등록</button>
		</form>

</body>
</html>