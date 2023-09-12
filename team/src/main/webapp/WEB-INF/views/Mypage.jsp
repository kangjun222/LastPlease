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

 bottom:-560px;
     left:570px;
     

}

</style>


</head>
<body>
	<div class="panel panel-default">
	
	<table width="1920px" height="200px">
      <td class="logo" width="200px"><a href="${root}"><img src="${root}resources/img/�ΰ�����.png"
      
            alt="logo" width="200" height="200"></a></td>
            <td calss= "COIN" height="200px" align="center"><a href="#"><h1>COIN</h1></td>
</table>
		<div class="panel-body">
			<table class="table table-bordered" style="width: 700px">
				<thead>
					<tr>
						<th width="45%">��ǰ��</th>
						<th width="30%">��ǰ�̹���</th>
						<th width="10%">����</th>	
						<th width="15%">���</th>										
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${carts}" var="cart" varStatus="idx" >
						<tr>
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