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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  
  <style type="text/css">
  	#deleteDiv{
  		display:none;
  	}
  </style>
  <script type="text/javascript">
  	$(function(){
  		$("#deleteBtn, #cancleBtn").click(function(){
  			$("#deleteDiv").slideToggle();
  		/* 	$("#writer").val(""); //작성자 입력후 데이터지우기 */
  			return false;
  		});
  	});
  	//삭제부분에 주는 버튼 클릭시 1번이 2번작동하게.
  </script>
<<script>
$(document).ready(function() {
  // 폼 제출 시 모달 창을 표시
// "삭제" 버튼을 클릭하여 모달 창 열기
$("#deleteBtn").click(function() {
  $("#deleteModal").modal("show"); // 모달 창 표시
});

// 모달 창에서 확인 버튼 클릭 시 글 삭제
$("#deleteConfirmBtn").click(function() {
  $.ajax({
    type: "POST",
    url: "delete",
    data: {
      bno: "${vo.bno }",
      perPageNum: "${param.perPageNum }"
    },
    success: function(response) {
      if (response === "success") {
        // 삭제가 성공하면 모달 창 닫음
        $("#deleteModal").modal("hide");

        // 삭제 후 원하는 동작 수행 (예: 리스트 페이지로 리다이렉션)
        window.location.href = "list?page=${param.page }&perPageNum=${param.perPageNum}&key=${param.key}&word=${param.word}";
      } else {
        alert("삭제에 실패했습니다.");
      }
    }
  });
});
</script>
</head>
<body>
 <!--모달창  -->
<div id="deleteModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- 모달 내용 -->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">H entertainment</h4>
      </div>
      <div class="modal-body">
        <p>H entertainment 게시판 글삭제가 완료되었습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
<div class="container">
<%--  ${vo} --%>
	<h2>H entertainment 글보기</h2>
	<table class="table">
		<tr>
			<th>번호</th>
			<td>${vo.bno }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${vo.title }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${vo.content }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${vo.writer }</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><fmt:formatDate value="${vo.writerDate }" pattern="yyyy-MM-dd"/> </td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${vo.hit }</td>
		</tr>
	</table>
	<a href="update?bno=${vo.bno }&page=${param.page }&perPageNum=${param.perPageNum}&key=${param.key}&word=${param.word}" class="btn btn-default">수정</a>
	<a href="#"  class="btn btn-default" id="deleteBtn">삭제</a>
	<a href="list?page=${param.page }&perPageNum=${param.perPageNum}&key=${param.key}&word=${param.word}" 
	 class="btn btn-default">리스트</a>
	
		<div id="deleteDiv">
		<form action="delete" method="post">
			<input name="bno" type="hidden" value="${vo.bno }">
			<input name="perPageNum" type="hidden" value="${param.perPageNum }">
			<div class="panel panel-default">
				<div class="panel-heading">글 삭제를 원하십니까?</div>
			<!-- 	<div class="panel-body">
					<input name="writer" type="text" class="form-control" id="writer">
				</div> -->
				<div class="panel-footer">
					<button cid="deleteConfirmBtn" class="btn btn-danger">삭제</button> 
					<%-- <a href="list?perPageNum=${pageObject.perPageNum }" class="btn btn-default">삭제</a> --%>
					<button id="cancleBtn" class="btn btn-default" type="button">취소</button>
				</div>
			</div>
		</form>
		</div>
	</div>
	
</body>
</html>