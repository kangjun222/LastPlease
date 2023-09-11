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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
 <script>
$(document).ready(function() {
  $("#updateBtn").click(function() {
    // 폼을 서버로 제출한 후 성공하면 모달 창을 엽니다.
     $("#successModal").modal("show"); // 모달 창 표시
    $("form").submit(function(e) {
      e.preventDefault();
      $.ajax({
        type: "POST",
        url: "update",
        data: $("form").serialize(),
        success: function(response) {
          if (response === "success") {
            $("#successModal").modal("show"); // 수정 성공 모달 창 표시
          } else {
            alert("수정에 실패했습니다.");
          }
        }
      });
    });
  });
});

</script>
</head>
<body>
<!-- 수정 성공 모달 창 -->
<div id="successModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- 모달 내용 -->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">H entertainment</h4>
      </div>
      <div class="modal-body">
        <p>H entertainment 게시판 글수정이 완료되었습니다.</p>
      </div>
      <div class="modal-footer">
        <a href="view?bno=${vo.bno }" class="btn btn-primary">확인</a>
      </div>
    </div>
  </div>
</div>
<div class="container">
<h2>H entertainment 글 수정하기</h2>

<form action="update"  method="post">
			<input type="hidden" name="page" value="${param.page }"> 
			<input type="hidden" name="perPageNum" value="${param.perPageNum }"> 
			<input type="hidden" name="key" value="${param.key }"> 
			<input type="hidden"name="word" value="${param.word }">
			<div class="form-group">
				<label for="bno">번호</label>
				<!--readonly 글번호 수정 안되게하는 용어  -->
				<input id="bno" name="bno" required class="form-control" value="${vo.bno }" readonly>
			</div>
			<div class="form-group">
				<label for="title">제목</label> <input id="title" name="title"
					required class="form-control" value="${vo.title }">
			</div>
			<div class="form-group">
				<label for="content">내용</label>
				<textarea rows="5" id="content" name="content" required
					class="form-control" value="${vo.content }"></textarea>
			</div>
			<div class="form-group">
				<label for="writer">작성자</label> <input id="writer" name="writer"
					required class="form-control" value="${vo.writer }">
			</div>

			<button class="btn btn-default">수정</button>
</form>
</div>
</body>
</html>