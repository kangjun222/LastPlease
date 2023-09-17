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
#wrap{
	width: 1900px;
	margin: 0 auto;
}
body{
	-ms-overflow-style: none;
	overflow-x: hidden;
}
#header{
	display: flex;
	width: 1900px;
	height: 200px;
	margin: 0 auto;
    justify-content: space-around;
	
}


#header div ul li{
	display: inline;
	padding-left: 20px;
	
}
#header div ul{
	padding-top: 80px;
}

.AUD{
	font-size:70px;
	color:black;
	 width:400px;
	position: relative;
	top: 30px;
	}

#logo{
		width: 200px;
		height: 200px;
}
	

#fontfont{
	padding-left: 1800px;
	font-size: 30px;
	color:black;
}

#tablewrap{
	width: 1900px;
	margin: 0 auto;
}

</style>

</head>
<body>
	<div id="header">
            <div id="logo">
                <img src="${root}resources/img/logo.png" alt="로고이미지"  width="200px"
                    height="200px">
            </div>
            
            <div>
                <a href="#"><h1 class="AUD">MYPAGE</h1></a>   
            </div>

            <div id="headermenu">
                <ul>               						
                        <li>
                            <a href="${root}member/logout" class="modaljun">
                                <i class="fa-regular fa-user">Logout</i>
                            </a>
                        </li>
        
                        <li>
                            <a href="${root}member/gojoin">
                                <i class="fa-solid fa-user">${mem.id}님</i>
                            </a>
                        </li>                   
                </ul>
            </div>

        </div>


	<div id="tablewrap">			
			<div>
			<table class="table table-bordered" style="width: 1800px">
				<thead>
					<tr class="font">
						<th width="45%" class="text-center">상품명</th>
						<th width="30%" class="text-center">상품이미지</th>
						<th width="10%" class="text-center">가격</th>	
						<th width="15%" class="text-center">비고</th>										
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${carts}" var="cart" varStatus="idx" >
						<tr class="font">
							<input type="hidden" id="itemname${idx.count}" value="${cart.itemname}"/>
							<td width="50%" class="text-center"><a href="">${cart.itemname}</a></td>
							<td width="30%" class="text-center"><img src="${root}resources/upload/${cart.itemimg}" style="width: 60px"/></td>							
							<td width="10%" class="text-center" id="itemprice">${cart.itemprice}</td>
							<td width="10%" class="text-center">
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
			
			<br>
			<br>
			<br>
			
			<div>
			<table class="table table-bordered" style="width: 1800px">
				<thead>
					<tr>
						<th class="text-center"><h2>합격여부</h2></th>
					</tr>
				</thead>		
				
				<tbody>
					<tr>
						<td>
							<div style="text-align: center;">
								<c:if test="${empty myMember.pass}">
								
								</c:if>
								
								<c:if test="${!empty myMember.pass && myMember.pass eq '심사중'}">
									<h3><b>심사중입니다 결과를 기다려 주세요.</b><h3>
								</c:if>
								
								<c:if test="${!empty myMember.pass && myMember.pass eq '합격'}">
									<h3><b>축하합니다. ${myMember.pass} 입니다.</b><h3>
								</c:if>
								
								<c:if test="${!empty myMember.pass && myMember.pass eq '불합격'}">
									<h3><b>다음에 다시 도전해주세요 ${myMember.pass} 입니다.</b></h3>
								</c:if>
							</div>		
						</td>
					</tr>
				</tbody>
			</table>
			</div>
			
	</div>
</body>
</html>