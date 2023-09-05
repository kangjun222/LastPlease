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

    </script>
</head>
<body>
    <wrap>
    	<div id="allwrap">
        <header id="header">
            
           <div><img src="${root }resources/newjins/로고투명.png" alt="?"></div> 
           <div><img src="${root }resources/newjins/shop.png" alt="?"></div> 

            
           <div>
            <h1>ITEM REVIEW</h1>
            <a href="${root}/bankcontroller/bankform" class="but" data-text="충전하기">충전하기</a>
            <button  id="button">잔액조회</button>
        
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
							<a href='https://naver.com' target='_blank'>
								<button class="button1">바로구매</button>
							</a>
						</div>
				      
				      <div>
					      <a href='https://naver.com' target='_blank'>
					      	<button class="button2">장바구니</button>
					      </a>
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