<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/newjensgoods.css"/>
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
	integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
    
    function modalOn(idx){
    	$(".modal"+idx).css('display','block');
    	
    	
      
   
    }
    
    function closeModal(idx){
    	$(".modal"+idx).css('display','none');
    }
	
    function addCart(idx){
    	
    	if("${mem.id}" == null || "${mem.id}" == ''){
    		location.href="${root}?msg=로그인후 이용해주세요";
    		return;
    	}
    	
    	var cartForm = $("#cartForm"+idx).serialize();
    	
    	
    	$.ajax({
    		url:"${root}member/addCart",
    		type:"get",
    		data:cartForm,
    		success:function(msg){
    			alert(msg);
    		},
    		error: function(){
    			alert("addCartError");
    		}
    	});
    }
    
    
    </script>
    <style>



.but2{
	font-size: 30px;
	position: relative;
	top: 80px;
	left: 250px;
	text-decoration-line:none;
	font-weight : bold;  굵은 굵기로 설정합니다. 
	color:black;
	margin: 0 auto;
}
.but2:hover{
color:#00bfa5;
}
.but1{

	border-radius: 50px;
	font-size: 30px;
	text-decoration: none;
	
}
#shop{
	position: relative;
	left:150px;
}

</style>
</head>
<body>
    <wrap>
    	<div id="allwrap">
    	
    	          
    	
        <header id="header">
            
           <div><a href="${root }"><img src="${root }resources/newjins/로고투명.png" alt="?"></a></div> 
           <div id="shop"><img src="${root }resources/newjins/shop.png" alt="?"></div> 

            
           <div id="goodsreview">
           <a href="${root}board/list" class="but2">ITEM REVIEW</a>
          
           <a href="${root}/bankcontroller/bankform?id=${mem.id}" class="but1" data-text="충전하기">충전하기💰</a>
           <a href="${root}/bankcontroller/modal?id=${mem.id}" class="but1" data-text="잔액조회">잔액조회💰</a>
        	
           </div>
            
        </header>

        <banner id="banner">
            <div id="newjeanslogo"><img src="${root }resources/newjins/newjeans.png" alt=""></div>
        </banner>

        <div id="banner2">
        
        	<c:forEach items="${items}" var="item" varStatus="idx">
	        	<div class="bannerimg">
	        		<a href="#">
	        		 <img src="${root}resources/upload/${item.itemimg}" alt="" onclick="modalOn(${idx.count});"/> 
	        		</a>   
	                 <h1>단독판매</h1>
	                 <p>${item.itemname}</p>
	                 <p>${item.itemprice}</p>
	            </div>
	            
	            <div class="modal${idx.count}" style="display: none;">
					<div class="modal_body">
						
						<div class="jj"><img src="${root}resources/upload/${item.itemimg}" alt="1"></div>
						<div class="kk">
							<h2><div id="modalname">${item.itemname}</div>
				      			${item.itemprice}원
				      		</h2>
						</div>
				      
						<div>
						<form method="post"  action="${root}/item/gosellItem">
								<input type="hidden" name="itemprice" value="${item.itemprice}"/>
								<input type="hidden" name="itemname" value="${item.itemname}"/>
								<input type="hidden" name="id" value="${mem.id}"/>
								<button type="submit"id="buyitem" class="button1">바로구매</button>
						</form>
						
						</div>
				      
				      <div>
				      	 <form id="cartForm${idx.count}">
				      	 	<input type="hidden" name="itemname" value="${item.itemname}"/>
				      	 	<input type="hidden" name="itemprice" value="${item.itemprice}"/>
				      	 	<input type="hidden" name="itemimg" value="${item.itemimg}"/>
				      	 	<input type="hidden" name="id" value="${mem.id}"/>
				      	 	<button class="button2" type="button" onclick="addCart(${idx.count});">장바구니</button>
				      	 </form>					   
				      </div>
				      
				       <div id="closebt">
					      	<i class="fa-solid fa-circle-xmark" onclick="closeModal(${idx.count});"></i>
				      </div>
				     	 	         
				</div>
			</div> 
        	</c:forEach>
            
            
                   
         	
        
	
</div>
</div>          
</wrap>


</body>
</html>