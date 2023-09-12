<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/overview2.css"/>
    <link rel="stylesheet" href="${root}resources/css/reset.css"/>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e7786a4ed9edf5a2add46afae7147708"></script>
</head>
<body>
	     
	
    <wrap>
    <div id="header">
        <a href="${root }"><img id="logo" src="${root}resources/img/logo.png" alt="로고이미지"/></a>
        <div id="overview"><h1><b>OVERVIEW / 주소</b></h1></div>
        <div>
            <ul>
                <li>
                    <a href="#">
                    <i class="fa-regular fa-user"> Login</i> 
                   
                    </a>
                </li>
                
                <li>
                    <a href="#"><i class="fa-solid fa-cart-shopping"> Mypage</i></a>
                </li>

            </ul>    
        </div>    
    </div> <!-- header -->
    

    <div id="bannerwrap1">
   		<div id="map" style="width:1920px;height:700px;"></div>
    </div>  <!-- bannerwrap1 -->

  
  <div id="bannerwrap2">
    	<img src="${root}resources/img/overviewadd.png" alt="지도이미지" / width="1211px"
				height="660px">
  </div>



	<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(37.503095, 126.879053), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	</script>
	 
	</wrap>
</body>
</html>