<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/overview.css"/>
    <link rel="stylesheet" href="${root}resources/css/reset.css"/>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="../resources/javascript/overview.js"></script>
</head>
<body>
    <wrap>
       
        <div id="header">
            <a  href="${root }"><img id="logo" src="${root}resources/img/logo.png" alt="로고이미지"/></a>
            <div id="overview"><h1><b>OVERVIEW</b></h1></div>
            
            <div>
                <ul>
                    <li>
                        <a href="#">
                        <i class="fa-regular fa-user"> Login</i> 
                       
                        </a>
                    </li>
                   
                    <li>
                        <a href="#"><i class="fa-solid fa-cart-shopping"> Belogin</i></a>
                    </li>

                </ul>    
            </div>    
        </div> <!-- header -->

        <div id="banner" >
          <div id="bannerimg"><img src="${root}resources/img/hbanner.png" alt="배너이미지"></div>  
        </div> <!-- banner -->

        <div class="section01">
            <canvas id="snow_canvas"></canvas>
        </div> <!-- section01 -->
       
        

        <div id="companylogo"> 
            <img src="${root}resources/img/companylogo.png" alt="컴퍼니로고">
        
        </div>
       
        <div id="banner2wrap">
            <div id="banner2">
                <h1><b>‘H ENTERTAINMENT’ 는  모든 이들에게  ‘happy’ 행복을 주고 ‘hopeful’  희망에 차있으며<br>
                    ‘heartful’ 진심을 담아 모든 이들에게 다가가겠다는 염원을 담아 2023 년 7월 26일 설립 되었습니다.<br>
                    ‘H ENTERTAINMENT’를 통해 모두가 행복해질수있게 노력할 것입니다. </b></h1>
             
            </div> <!-- banner2 -->
        </div> <!-- banner2wrqp -->

        <div id="hbanner2img"> <img src="${root}resources/img/hbanner2.png" alt=""> </div> 

        <div id="banner3wrap">
            <div id="banner3">
                <span><b>회사명 : H ENTERTAINMENT<br>
                    설립일 : 2023-07-26<br>;
                    대표이사 : 김사희 , 강준형, 정하영<br>
                    주    소 : 서울 구로구 경인로 557<br>
                    주요사업 : 연예,매니지먼트제작
                </b></span>


            </div> <!-- banner3 -->
        </div> <!-- banner3wrap -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp" /> 

    </wrap>
</body>
<script src="./js/overview.js"></script>
</html>