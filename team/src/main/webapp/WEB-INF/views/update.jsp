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
  
</head>
<body>
<div class="container">
<h2>H entertainment 글 수정하기</h2>

<form action="update"  method="post">
<div class="form-group">
 	<label for="bno">번호</label> <!--readonly 글번호 수정 안되게하는 용어  -->
 	<input id="bno" name="bno" required class="form-control" value="${vo.bno }" readonly>
</div>
<div class="form-group">
 	<label for="title">제목</label>
 	<input id="title" name="title" required class="form-control"  value="${vo.title }">
</div>
<div class="form-group">
 	<label for="content">내용</label>
 	<textarea rows="5" id="content" name="content" required class="form-control" value="${vo.content }"></textarea>
</div>
<div class="form-group">
 	<label for="writer">작성자</label>
 	<input id="writer" name="writer" required class="form-control" value="${vo.writer }">
</div>

<button class="btn btn-default">수정</button>
</form>
</div>
</body>
</html>