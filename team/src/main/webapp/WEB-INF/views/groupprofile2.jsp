<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>groupartist</title>
</head>
<body>
	<table width="1920px" height="200px">
		<td width="200px" ><a href="${root}"><img
				src="${root}resources/img/logo.png" alt="logo" width="200" height="200"></a></td>
		<td width="1720px"  height="200px"align="center"><a href="#"><img
				src="${root}resources/artist/artist.png" alt="artistlogo" width="430px" height="82px"></a>
		</td>
	</table>
	
	<table width="1920px" height="880px">
		<td width="180px" height="880px">
			<img src="${root}resources/artist/left.png" width="20px" height="880px">
		</td>
	<style type="text/css">
   		
   		*{margin-right:110px;
   			font-family:돋음;
   			margin: 0 auto;
   			position:relative;
   		}
   		p{
   			
   			margin-bottom:5px;
   			
   		}
   		strong{
   			font-weight:bold;
   			font-size:25px;
   			color:#3e2723 ;
   		}
   		h1{
   			font-size:30px;
   		
   		}
   		span{
   			font-size:25px;
   			color: #9e9e9e ;
   		}
   		
   		.img{
   		position: absolute;
   		top:585px;
   		left:90px;
   		}
   		.img1{
   		position: absolute;
   		top:865px;
   		left:0px;
   		}
   		.img2{
   		position: absolute;
   		top:60px;
   		left:180px;
   		}
   	</style>
   	<td width="900px" height="880px" >
   	<h1>${groupartist.groupname}&nbsp&nbsp<span>${groupartist.ename}</span> </h1>
   	
   	<h2>${groupartist.debutbirth}</h2>
   	<p>멤버 ${groupartist.gmember}</p>
   	<p>데뷔곡 ${groupartist.debutsong}</p><br>
   	<strong>WORKS</strong><br><br>
   	<p class="font">앨범</p>
	<p>
	${groupartist.works}
	</p>
	<br>
	<p class="font">수상내역</p>
	<p>${groupartist.carrer}</p>
	
	    	
   </td>
   <td width="820px" height="880px" align="center">
   		 <img class="img2" src="${root}resources/profileimg/${groupartist.profile}" width="600px"  height="750px">
   	</td>
   	<td width="120px" height="880px" >
   		<img class="img" src="${root}resources/artist/right.png" width="20px" height="300px" >
   		<img class="img1" src="${root}resources/artist/rightbottom.png" width="100px" height="20px" >
   	</td>
	</table>
	<style>
		.wrap{
			width:1920px;
			height:150px;
			/* margin: 0 auto; */
			position: relative;
		}
		.wraptext{
			position: absolute;
			top:90px;
			left:1750px;
		}
		.wrapimg{
			position: absolute;
			top:70px;
			left:1750px;
			padding-left:20px;
		}
		.wrapicon{
			position: absolute;
			top:80px;
			left:1700px;
		}
		.a2{
			font-size: 10px;
			backgocolor: C62727;
			font-weight:bold;
		}
	
		span{
			font-size: 30px;
			color: 120202;
			font-weight:bold;
		}
		.font{
			font-size:25px;
			font-weight:bold;
		}
		
	</style>
	<div class="wrap">
		<img src="#" alt=""/>
		<div class="wrapimg">

			<a href="#"><img src="${root}resources/artist/페이스북.png" alt="" width="20px" height="20px"/></a>
			<a href="#"><img src="${root}resources/artist/인스타.png" alt=""width="20px"height="20px"/></a>
			<a href="#"><img src="${root}resources/artist/트위터.png" alt=""width="20px"height="20px"/></a>
		</div>
		<div class="wraptext">
			<a class="a2" href="javascript:void(0);"onclick="window.open('http://localhost:8081/TeamPro/sahee/%EA%B0%9C%EC%9D%B8%EC%A0%95%EB%B3%B4.jsp', 'pop01', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');">개인정보처리방침</a>
			<a href="javascript:void(0);"onclick="window.open('http://localhost:8081/TeamPro/sahee/%EC%9D%B4%EC%9A%A9%EC%95%BD%EA%B4%80.jsp', 'pop01', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');"><span>이용약관</span></a>	
		</div>
	</div>
</body>
</html>