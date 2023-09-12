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

 bottom:-200px;
     left:0px;
     

}
.logo{
position:absolute;
  margin-left: 500px;
  bottom:50px;
}

</style>


</head>
<body>
	<div id="header">
		<div id="logo">
			<img src="${root}resources/img/logo.png" alt="�ΰ��̹���"  width="200px" height="200px"/>
				 <img class="logo" id="mypagelogo" src="${root}resources/img/mypage.png" alt="�����������̹���"/>
		</div>
		</div>


	<div class="panel panel-default">
	
	
		<div class="panel-body">
			<table class="table table-bordered" style="width: 1800px">
				<thead>
					<tr class="font">
						<th width="45%">��ǰ��</th>
						<th width="30%">��ǰ�̹���</th>
						<th width="10%">����</th>	
						<th width="15%">���</th>										
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${carts}" var="cart" varStatus="idx" >
						<tr class="font">
							<input type="hidden" id="itemname${idx.count}" value="${cart.itemname}"/>
							<td width="50%" >${cart.itemname}</td>
							<td width="30%"><img src="${root}resources/upload/${cart.itemimg}" style="width: 60px"/></td>							
							<td width="10%" id="itemprice">${cart.itemprice}</td>
							<td width="10%"><button type="button" class="btn btn-warning" onclick="deletecart(${idx.count});">����</button></th>							
						</tr>
						
					</c:forEach>
				</tbody>				
			</table>
		</div>
	</div>
</body>
</html>