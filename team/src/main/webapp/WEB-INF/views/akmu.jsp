<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>akmu</title>
<style type="text/css">
* {
	text-decoration: none;
	font-size: "10";
	font-weight: bold;
	color: black;
	background-repeat: no-repeat;
	/* 사진 사이지에 맞쳐 짤라서 한장으로 넣기 */
}
  <link rel="stylesheet" type:"text/class" href="style.css">
</style>

</head>
<body>
	<table width="1920px" height="200px">
<style>
/* .img {
	position: absolute;
	top: 70px;
	left: 1700px;
}
 */

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
}
.but2:hover{
color:#b9f6ca;
}
.img1{
	position: absolute;
	top: 60px;
	left: 1700px;
}
.img2{
	position: absolute;
	top: 80px;
	left: 750px;
}
.ak{
	position: absolute;
	top: 220px;
	left: 880px;
}

</style>
<style>
.goods1{
	position: absolute;
	top: 400px;
	left: 250px;
	transition: all 0.2s linear; /*속도  */	
}
.goods1 :hover {
  transform: scale(1.2); /* 마우스오바했을때 커지는 사이즈크기  */
  transition: transform .5s; /*이미지 마우스오버 햇을때 부드럽게 켜지게 주는 속도  */
}
.goods2{
	position: absolute;
	top: 400px;
	left: 550px;
	transition: all 0.2s linear;	
}
.goods2 :hover {
  transform: scale(1.2);
  transition: transform .5s;
}

.goods3{
	position: absolute;
	top: 400px;
	left: 850px;
	transition: all 0.2s linear;	
}
.goods3 :hover {
  transform: scale(1.2);
  transition: transform .5s;
}
.goods4{
	position: absolute;
	top: 400px;
	left: 1150px;
	transition: all 0.2s linear;	
}
.goods4 :hover {
  transform: scale(1.2);
  transition: transform .5s; 
}
.goods5{
	position: absolute;
	top: 400px;
	left: 1450px;
	transition: all 0.2s linear;	
}
.goods5 :hover {
  transform: scale(1.2);
  transition: transform .5s;
}
.goods6{
	position: absolute;
	top: 400px;
	left: 1600px;
	transition: all 0.2s linear;	
}

.imglogo{
	position: absolute;
	top: 0px;
	left: 0px;
}
</style>
<img position="relative" src="${root }resources/akmu/악뮤배경.png" alt="악뮤배경" position="relative" width="1920px" height="1080px">
		<td width="200px"><a href="#"><img class="imglogo"src="${root }resources/newjins/로고투명.png"
				alt="logo" width="200" height="200"></a></td>
		<td width="1720px" height="200px" align="center"><a href="#"><img
				src="${root }resources/newjins/shop.png"  class="img2"alt="shoplogo" width="440px"
				height="60px" align="center"></a> 
				
		<!-- 	<a href="#"><img class="img"src="imgnewgoods/review.png" width="190px" height="20px"></a> -->
				  <a href="#" class="but" data-text="충전하기">충전하기</a>
				  <a href="#" class="but1" data-text="잔액조회">잔액조회</a>
				  <a href="#" class="but2" data-text="ITEM REVIEW">ITEM REVIEW</a>
				<!--   <a href="#" class="but2" data-text="ITEM REVIEW">ITEM REVIEW</a> -->
			<!-- <button class="but" onclick="location.href='index.html'">충전하기</button>
			<button class="but1" onclick="location.href='index.html'">잔액조회</button> -->
<!--  <button type="button" onclick="location.href='list'">목록</button>-->
		</td>
	</table>
	<table width="1920px" height="880px">
	<style>
	*{
		line-height: 5px; 
		font-weight:bold;
	}
	h1{
		font-size:10px;
		color:#b71c1c ;
		
	}
	p{
		font-weight:bold;
		font-size:13px;
	}
	.line{
		border: 0.03px solid black;
		width:400px;
		position: absolute;
		top: 310px;
		left: 760px;
	}
	h2{
		font-size:60px;
		font-weight:normal;
		font-family:;
	}
	</style>
		<h2 class="ak"width="250" heighet="50" align="center">AKMU</h2>
		<div class="line"></div>
		<a href="#" class="goods1"><img src="${root }resources/akmu/악동1.png" alt="goods1"width="180" height="180">
		<h1>단독판매</h1>
   		<p>(브로마이드1종+지관통) 악동 뮤지션</p>
   		<p>Play 포스터</p>
   		<p>\ 7,000</p>
		</a>
		<a href="#" class="goods2"><img src="${root }resources/akmu/악동2.png"  alt="goods2"width="180" height="180">
		<h1>단독판매</h1>
   		<p>악동뮤지션 이수현 폰케이스 굿즈 갓즈몰</p>
   		<p>\ 15,000</p>
		</a>
		<a href="#" class="goods3"><img src="${root }resources/akmu/악동3.png" alt="goods3"width="180" height="180">
		<h1>단독판매</h1>
   		<p>악동뮤지션 이찬혁 폰케이스 굿즈 갓즈몰</p>
   		<p>\ 15,000</p>
		</a>
		<a href="#" class="goods4"><img src="${root }resources/akmu/악동4.png"  alt="goods4"width="180" height="180">
		<h1>단독판매</h1>
   		<p>악동뮤지션 콜라보레이션 앨범</p>
   		<p>넥스트 에피소드 그린</p>
   		<p>\ 119,680</p>
		</a>
		<a href="#" class="goods5"><img src="${root }resources/akmu/악동5.png"  alt="goods5"width="180" height="180">
		<h1>단독판매</h1>
   		<p>악동뮤지션 콜라보레이션 앨범</p>
   		<p>넥스트 에피소드 블루</p>
   		<p>\ 101,980</p>
		</a>
	
	
	</table>

</body>
</html>
