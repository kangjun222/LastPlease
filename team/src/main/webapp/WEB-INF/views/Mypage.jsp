<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	#header{
	width: 1920px;
	height: 200px;
	margin: 0 auto;
	padding-left: 500px;
	
	}

	.panel-body{
		margin: 0 auto;
		background-color: red;
		align-items: center;
		
	}
	.table table-bordered{
		margin: 0 auto;

		
	}
	.font{
		text-align: center;
		line-height: 85px;
	}
	th{
	text-align: center;
		
	}
	
</style>
<script>
	function deletecart(idx){
		var idxs = String(idx);
		
		var itemname = $("#itemname"+idxs).val();
		var id = "${mem.id}";
		
		
		$.ajax({
			url:"${root}member/deletes",
			type:"get",
			data:{"id":id,"itemname":itemname},
			success:function(){
				location.href="${root}member/cartList?id="+id;
			},
			error:function(){
				alert('error');	
			}
		});
		
		
	
		
		
	}
</script>


</head>
<body>
	<div id="header">
		<div id="logo">
			<img src="${root}resources/img/logo.png" alt="로고이미지"  width="200px" height="200px"/>
				 <img id="mypagelogo" src="${root}resources/img/mypage.png" alt="마이페이지이미지"/>
		</div>
		</div>


	<div class="panel panel-default">
		<div class="panel-body">
			<table class="table table-bordered" style="width: 1200px">
				<thead>
					<tr class="font">
						<th width="45%">상품명</th>
						<th width="30%">상품이미지</th>
						<th width="10%">가격</th>	
						<th width="15%">비고</th>										
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${carts}" var="cart" varStatus="idx" >
						<tr class="font">
							<input type="hidden" id="itemname${idx.count}" value="${cart.itemname}"/>
							<td width="50%" >${cart.itemname}</td>
							<td width="30%"><img src="${root}resources/upload/${cart.itemimg}" style="width: 60px"/></td>							
							<td width="10%" id="itemprice">${cart.itemprice}</td>
							<td width="10%"><button type="button" class="btn btn-warning" onclick="deletecart(${idx.count});">삭제</button></th>							
						</tr>
						
					</c:forEach>
				</tbody>				
			</table>
		</div>
	</div>
</body>
</html>