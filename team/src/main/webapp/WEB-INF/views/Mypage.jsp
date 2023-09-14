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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
	integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
*{
 margin: 0;
   padding: 0;
   box-sizing: border-box;
   position: relative;
  
}

.font{
		text-align: center;
		line-height: 85px;
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
	
	function buyItem(){
		// 가격 이름 아이디
		var itemprice = $("#itemprice").val();
		var itemname = $("#itemname").val();
		var id = $("#id").val();
		

	}
</script>

<style>
*{
 margin: 0;
   padding: 0;
   box-sizing: border-box;
   position: relative;
  
}
.panel-body{
  position:absolute;

 bottom:-430px;
     left:0px;
     

}
.logo{
position:absolute;
  margin-left: 500px;
  bottom:50px;
}
#fontfont{
	padding-left: 1800px;
	font-size: 30px;
	color:black;
	
	
}

</style>

</head>
<body>
	<div id="header">
		<div id="logo">
			<img src="${root}resources/img/logo.png" alt="로고이미지"  width="200px" height="200px"/>
				 <img class="logo" id="mypagelogo" src="${root}resources/img/mypage.png" alt="마이페이지이미지"/>
		</div>
		<c:if test="${!empty mem}">
			
							<li>
								<a href="${root}member/gojoin">
									<div id="fontfont"><i class="fa-solid fa-user">${mem.id}님</i></div>
								</a>
							</li>
							
						</c:if>
		
		</div>


	<div class="panel panel-default">
	
	
		<div class="panel-body">
			<table class="table table-bordered" style="width: 1800px">
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
							<td width="50%" ><a href="">${cart.itemname}</a></td>
							<td width="30%"><img src="${root}resources/upload/${cart.itemimg}" style="width: 60px"/></td>							
							<td width="10%" id="itemprice">${cart.itemprice}</td>
							<td width="10%">
								<form action="${root}item/gosellItem" method="post">
									<button type="button" class="btn btn-warning" onclick="deletecart(${idx.count});">삭제</button>
									
									<input type="hidden" name="id" id="id" value="${mem.id}"/>
									<input type="hidden" name="itemname" id="itemname" value="${cart.itemname}"/>
									<input type="hidden" name="itemprice" id="itemprice" value="${cart.itemprice}"/>
									
									<button type="submit" class="btn btn-primary">구매</button>
								</form>
							</td>
							
							
							</th>							
						</tr>
						
					</c:forEach>
				</tbody>				
			</table>
		</div>
	</div>
</body>
</html>