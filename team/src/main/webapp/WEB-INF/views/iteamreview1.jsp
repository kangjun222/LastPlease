<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ITEAM REVIEW</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<style>
 #wrap{
 	width:1920px;
 	height:1800px;
 	position: relative;
 }
 #header{
 	width:100%;
 	height:200px;
 }
 .logo{
 	width:200px;
 	height:200px;
 }
 .tittle{
 	width:500px;
 	height:80px;
 	position: absolute;
	top:60px;
	left:740px;
 }
 #banner{
 	width:1920px;
 	height:100px;
 }
 .img1{
 	width:1720px;
 	height:70px;
 	margin-left:100px;
 	margin-top:20px;
 }
 .a1{
 	 text-decoration-line: none;
 	 opacity: 1.0;
 	 color: #9e9e9e;
 	 text-size:5px;
 	 position: absolute;
	 top:180px;
	 left:1550px;
 }
 .a2{
 	 text-decoration-line: none;
 	 opacity: 1.0;
 	 color: #9e9e9e;
 	 text-size:5px;
 	 position: absolute;
	 top:180px;
	 left:1650px;
 }
 .a3{
 	 text-decoration-line: none;
 	 opacity: 1.0;
 	 color: #9e9e9e;
 	 text-size:5px;
 	 position: absolute;
	 top:180px;
	 left:1750px;
 }
</style>
	<div id="wrap">	
        <div id="header">
           <a href="${root}"><img class="logo" src="${root}resources/imteamreview/로고투명.png" alt="로고이미지"/></a>
           <img class="tittle" src="${root}resources/imteamreview/Itemtittle.png" alt="아이템리뷰글씨"/></a>         
        </div> 
        <div id="banner">
           <a href="#" class="a1">글쓰기 |</a>
           <a href="#" class="a2">수정하기 |</a>
           <a href="#" class="a3">삭제하기</a>
           <img class="img1"src="${root}resources/imteamreview/item1.png" alt="아이템리뷰글씨"/>
        </div> 
	</div>

</body>
</html>