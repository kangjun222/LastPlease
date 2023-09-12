<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARTIST 창</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
* {
	text-decoration: none;
	font-size: "10";
	font-weight: bold;
	color: black;
}

</style>
</head>
<body>
	<table width="1920px" height="200px">
		<td width="200px" ><a href="${root}"><img
				src="${root }resources/artist/로고투명.png" alt="logo" width="200" height="200"></a></td>
		<td width="1720px"  height="200px"align="center"><a href="#"><img
				src="${root }resources/artist/아티스트 로고 1.png" alt="artistlogo" width="430px" height="82px"></a>
		</td>
	</table>

	<table width="1920px" height="880px">
		<style type="text/css">
			.img0{
   				position: absolute;
   				top:200px;
   				left:0px;
   				}
   			.a1{
   				margin-left:60px;
   				font-size:17px	
   				
   			}
   	
		</style>
		<td width="250px" height="880px" ><a ><img class="img0" src="${root }resources/artist/left.png" width="20px" height="880px" align="left" ></a><br />
				<a class="a1" href="${root}artist/profile?name=공유">GONG YOO</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=김선호">KIM SEON HO</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=김태리">KIM TAE RI</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=이도현">LEE DO HYUN</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=한소희">HAN SO HEE</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=이지은">IU</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=유승호">YOO SEUNG HO</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=배수지">BAE SUZY</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=천우희">CHUN WOO HEE</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=주우재">JOO WOO JAE</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=기리보이">GIRI BOY</a><br /><br /> 
				<a class="a1" href="${root}artist/gprofile?groupname=멜로망스">MELO MANGCE</a><br /><br /> 
				<a class="a1" href="${root}artist/profile?name=카리나">KARINA</a><br /><br /> 
				<a class="a1" href="${root}artist/gprofile?groupname=악동뮤지션">AKDONG MUSICIAN</a><br /><br /> 
				<a class="a1" href="${root}artist/gprofile?groupname=세븐틴">SEVENTEEN</a><br /><br /> 
				<a class="a1" href="${root}artist/gprofile?groupname=뉴진스">NEW JEANS</a><br />
		</td>
	<td  width="1670px" height="880px">
	<style type="text/css">
		* {
			padding-right: 8px;
			padding-bottom: 8px;	
			
		}
		.img{
   		position: absolute;
   		top:800px;
   		left:1900px;
   		}
   		.img1{
   		position: absolute;
   		top:1080px;
   		left:1800px;
   		}
   		
	</style>
		<a href="${root}artist/profile?name=공유"><img src="${root }resources/artist/공유사진.png" width="250px" height="250px" ></a>
		<a href="${root}artist/profile?name=김선호"><img src="${root }resources/artist/김선호사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=김태리"><img src="${root }resources/artist/김태리사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=이도현"><img src="${root }resources/artist/이도현 사진.png" width="250px"height="250px" ></a>
		<a href="${root}artist/profile?name=한소희"><img src="${root }resources/artist/한소희 사진.png" width="250px"height="250px" ></a>
		<a href="${root}artist/profile?name=아이유"><img src="${root }resources/artist/아이유사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=이광수"><img src="${root }resources/artist/이광수사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=유승호"><img src="${root }resources/artist/유승호사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=수지"><img src="${root }resources/artist/수지사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=천우희"><img src="${root }resources/artist/천우희사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=주우재"><img src="${root }resources/artist/주우재사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=기리보이"><img src="${root }resources/artist/기리보이사진.png" width="250px"height="250px" ></a>
		<a href="${root}artist/profile?name=멜로망스"><img src="${root }resources/artist/멜로망스사진.png" width="250px"height="250px"></a>
		<a href="${root}artist/profile?name=한혜진"><img src="${root }resources/artist/한혜진사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=카리나"><img src="${root }resources/artist/카리나사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=악뮤"><img src="${root }resources/artist/악뮤사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=세븐틴"><img src="${root }resources/artist/세븐틴사진.png" width="250px" height="250px"></a>
		<a href="${root}artist/profile?name=뉴진스"><img src="${root }resources/artist/뉴진스사진.png" width="250px" height="250px"></a>
		<img class="img" src="${root }resources/artist/right.png" width="20px" height="300px" >
   		<img class="img1" src="${root }resources/artist/rightbottom.png" width="100px" height="20px" >
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
			font-size: 10px;
			color: 120202;
			font-weight:bold;
		}
		
	</style>
	<div class="wrap">
		<img src="${root }resources/artist/footer.png" alt=""/>
		<div class="wrapimg">

			<a href="#"><img src="${root }resources/artist/페이스북.png" alt="" width="20px" height="20px"/></a>
			<a href="#"><img src="${root }resources/artist/인스타.png" alt=""width="20px"height="20px"/></a>
			<a href="#"><img src="${root }resources/artist/트위터.png" alt=""width="20px"height="20px"/></a>
		</div>
		<div class="wraptext">
			<a class="a2" href="javascript:void(0);"onclick="window.open('http://localhost:8081/TeamPro/sahee/%EA%B0%9C%EC%9D%B8%EC%A0%95%EB%B3%B4.jsp', 'pop01', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');">개인정보처리방침</a>
			<a href="javascript:void(0);"onclick="window.open('http://localhost:8081/TeamPro/sahee/%EC%9D%B4%EC%9A%A9%EC%95%BD%EA%B4%80.jsp', 'pop01', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');"><span>이용약관</span></a>	
		</div>
	</div>
	
<!-- 하이하이ㅎㅎ -->
		
	
 	<!-- <td>
		<img src="img/right.png" width="20px" height="300px"  margin-left:1900px; margin-top:580px;>
		<img src="img/rightbottom.png" width="100px" height="20px"  margin-left:1820px; margin-top:860px;>
	</td> -->    



</body>
</html>