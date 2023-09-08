<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/masteritem.css"/>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="../resources/javascript/join.js" charset="utf-8"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
   
   <script>
   		
   $(document).ready(function(){
       $("#itemstock").val(1);
    });

    function plusStock(){
        var stock = $("#itemstock").val();
        stock*=1;
        $("#itemstock").val(stock+1);          
    }

    function minusStock(){
        var stock = $("#itemstock").val();
        stock*=1;
        $("#itemstock").val(stock-1); 
    }
   	
    
    function itemsubmit(){
    	
    	var formData = new FormData();
    	formData.append('itemimg',$("input[name=itemimg]")[0].files[0]); //formData변수에 이미지정보저장  	
    	//formdata 객체에는 이미지에대한 데이터가 들어가있다.
		
    	//resources/upload 폴더에 이미지 업로드시키는 부분
    	$.ajax({
    		url:"${root}item/uploadimg",
    		type:"post",
    		data: formData,
    		processData:false,
    		contentType:false,
    		success:function(data){
    			
    			
				
    			var itemartist = $("#itemartist").val();
    			var itemname= $("#itemname").val();
    			var itemprice=$("#itemprice").val();
    			var itemimg = data;
    			var itemstock = $("#itemstock").val();
    		
    			
    			//데이터베이스에 item insert 시키는부분
    			$.ajax({
    				url:"${root}item/insertItem",
    				type:"post",
    				data:{"itemartist":itemartist,
    					  "itemname":itemname,
    					  "itemprice":itemprice,
    					  "itemimg":itemimg,
    					  "itemstock":itemstock
    					  }, 
    				success:function(){
    					location.href="${root}";
    				},
    				error:function(){
    					alert("erorr");	
    				}
    				
    			});
    		},
    		error:function(){
    			alert("실패");
    		}
    	});
    }
   </script>
</head>
<body>
	<div id="container">
            <header>
                <a href="${root}" class="logo">
                    <img src="${root}resources/img/logo.png">
                </a>
                <h2 class="logo_txt">item</h2>
            </header>
            
            <div class="join_notice">
                <p>아래 항목을 모두 필수로 입력해주세요.</p>
            </div>
       
       
             <form id="item" method="post" action="${root}item/additem" enctype="multipart/form-data">
             	<label for="itemartist">아티스트명</label><br/>
                <input type="text" id="itemartist" name="itemartist" placeholder=""/><br/></br>
                
                <label for="itemname">상품이름</label><br/>
                <input type="text" id="itemname" name="itemname" placeholder=""/><br/> </br>
                <!-- <label for="id">아이디</label><br/> -->
                <label for="itemprice">상품가격</label><br/>
                <input type="text" id="itemprice" name="itemprice"  placeholder="" /><br/>
                
                  </br>
           
                <label for="itemimg">상품이미지</label><br/>
                <input type="file" id="itemimg" name="itemimg" placeholder=" " /><br/>
                <br>
                
                
                <label for="stock">상품수량 
                    <i class="fa-solid fa-plus" id="plus" onclick="plusStock();"></i>&nbsp;&nbsp;
                    <i class="fa-solid fa-minus" id="minus" onclick="minusStock();" ></i>
                </label>
                <br/>
                
                <input type="text" id="itemstock" name="itemstock"  style="width: 25%;"/>
                <br/>
                <button type="button" onclick="itemsubmit();" class ="btn_join">상품등록</button>
                        
				
            </form>

    
    
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>