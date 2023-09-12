<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/iu.css"/>
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
	.but {
	position: absolute;
	top:140px;
   	left:1700px;
	transform: translate(-50%, -50%);
	width: 120px;
 	height: 50px;
	line-height: 50px; /*텍스트 간격또는 높이   */
	font-size: 17px;
	text-align: center; 
	text-decoration: none; /*텍스트 밑줄이나 선을 지우는 */
	text-transform: uppercase; /*text-transform은 대소문자 변환 용어 uppercase는 모두 대문자로 변형*/
	letter-spacing: 2px; /*문자 사이의 간격지정  */
	background: black;
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
	
}
.but:before {
	content: attr(data-text);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
	background: white;
	color: black;
	transition: 0.5s;/* 회전 속도 */
	transform-origin: bottom; /*회전  bottom에 붙어 회전 */
	transform: translatey(-100%) rotatex(90deg); /* 회전 */
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
}
.but:hover:before {
	transform: translatey(0) rotatex(0deg);
}
.but:after {
	content: attr(data-text);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
	background: #212121;
	color: white;
	transition: 0.5s;
	transform-origin: top;
	transform: translatey(0) rotatex(0deg);
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
}
.but:hover:after {
	transform: translatey(100%) rotatex(90deg);
}
.but1 {
	position: absolute;
	top:140px;
   	left:1850px;
	transform: translate(-50%, -50%);
	width: 120px;
  	height: 50px;
	line-height: 50px; 
	font-size: 17px;
	text-align: center; 
	text-decoration: none;
	text-transform: uppercase; 
	letter-spacing: 2px; 
	background: white;
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
	
}
.but1:before {
	content: attr(data-text);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
	background: black;
	color: white;
	transition: 0.5s;/* 회전 속도 */
	transform-origin: bottom; /*회전  bottom에 붙어 회전 */
	transform: translatey(-100%) rotatex(90deg); /* 회전 */
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
}
.but1:hover:before {
	transform: translatey(0) rotatex(0deg);
}
.but1:after {
	content: attr(data-text);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
	background: white;
	color: black;
	transition: 0.5s;
	transform-origin: top;
	transform: translatey(0) rotatex(0deg);
	border-top-left-radius:20px;
	border-bottom-left-radius:20px;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
}
.but1:hover:after {
	transform: translatey(100%) rotatex(90deg);
}
.but2{
	font-size: 30px;
	position: absolute;
	top: 70px;
	left: 1700px;
	text-decoration-line:none;
	font-weight : bold;  굵은 굵기로 설정합니다. 
	color:black;
}
.but2:hover{
color:#00bfa5;
}
</style>
</head>
<body>
    <wrap>
    	<div id="allwrap">
        <header id="header">
            
           <div><a href="${root }"><img src="${root }resources/newjins/로고투명.png" alt="?"></a></div> 
           <div><img src="${root }resources/newjins/shop.png" alt="?"></div> 

            
           <div>
             <a href="${root}board/list" class="but2">ITEM REVIEW</a>
            <a href="${root}/bankcontroller/bankform" class="but" data-text="충전하기">충전하기</a>
        <a href="${root}/bankcontroller/modal" class="but1" data-text="잔액조회">잔액조회</a>
        
           </div>
            
        </header>

 

        <div id="banner2">
        
        	<div id="banner2">
        
        	<c:forEach items="${items}" var="item" varStatus="idx">
	        	<div class="bannerimg">
	        		<a href="#">
	        		 <img src="${root}resources/upload/${item.itemimg}" alt="" onclick="modalOn(${idx.count});"/> 
	        		</a>
	        		<div id="font">  
	                 <h1>단독판매</h1>
	                 <p>${item.itemname}</p>
	                 <p>${item.itemprice}</p>
	                 </div> 
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