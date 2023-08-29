<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/"/> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>goodsframe</title>
<style type="text/css">
* {
	text-decoration: none;
	font-size: "10";
	font-weight: bold;
	color: black;
	background-repeat: no-repeat;
	/* 사진 사이지에 맞쳐 짤라서 한장으로 넣기 */
}
<
link
 
rel
="
stylesheet
"
 
type
:
"
text
/
class
"
 
href
="
style
.css
"
>
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
	top: 140px;
	left: 1700px;
	transform: translate(-50%, -50%);
	width: 120px;
	height: 50px;
	line-height: 50px; /*텍스트 간격또는 높이   */
	font-size: 17px;
	text-align: center;
	text-decoration: none; /*텍스트 밑줄이나 선을 지우는 */
	text-transform: uppercase;
	/*text-transform은 대소문자 변환 용어 uppercase는 모두 대문자로 변형*/
	letter-spacing: 2px; /*문자 사이의 간격지정  */
	background: black;
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-right-radius: 20px;
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
	transition: 0.5s; /* 회전 속도 */
	transform-origin: bottom; /*회전  bottom에 붙어 회전 */
	transform: translatey(-100%) rotatex(90deg); /* 회전 */
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-right-radius: 20px;
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
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-right-radius: 20px;
}

.but:hover:after {
	transform: translatey(100%) rotatex(90deg);
}

.but1 {
	position: absolute;
	top: 140px;
	left: 1850px;
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
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-right-radius: 20px;
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
	transition: 0.5s; /* 회전 속도 */
	transform-origin: bottom; /*회전  bottom에 붙어 회전 */
	transform: translatey(-100%) rotatex(90deg); /* 회전 */
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-right-radius: 20px;
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
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	border-top-right-radius: 20px;
	border-bottom-right-radius: 20px;
}

.but1:hover:after {
	transform: translatey(100%) rotatex(90deg);
}

.but2 {
	font-size: 30px;
	position: absolute;
	top: 70px;
	left: 1700px;
}

.but2:hover {
	color: #b9f6ca;
}

.img1 {
	position: absolute;
	top: 60px;
	left: 1700px;
}

.img2 {
	position: absolute;
	top: 80px;
	left: 750px;
}

.newjeans {
	position: absolute;
	top: 250px;
	left: 840px;
}
</style>
		<style>
.goods1 {
	position: absolute;
	top: 400px;
	left: 100px;
	transition: all 0.2s linear; /*속도  */
}

.goods1 :hover {
	transform: scale(1.2); /* 마우스오바했을때 커지는 사이즈크기  */
	transition: transform .5s; /*이미지 마우스오버 햇을때 부드럽게 켜지게 주는 속도  */
}

.goods2 {
	position: absolute;
	top: 400px;
	left: 400px;
	transition: all 0.2s linear;
}

.goods2 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods3 {
	position: absolute;
	top: 400px;
	left: 700px;
	transition: all 0.2s linear;
}

.goods3 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods4 {
	position: absolute;
	top: 400px;
	left: 1000px;
	transition: all 0.2s linear;
}

.goods4 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods5 {
	position: absolute;
	top: 400px;
	left: 1300px;
	transition: all 0.2s linear;
}

.goods5 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods6 {
	position: absolute;
	top: 400px;
	left: 1600px;
	transition: all 0.2s linear;
}

.goods6 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods7 {
	position: absolute;
	top: 700px;
	left: 100px;
	transition: all 0.2s linear;
}

.goods7 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods8 {
	position: absolute;
	top: 700px;
	left: 400px;
	transition: all 0.2s linear;
}

.goods8 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods9 {
	position: absolute;
	top: 700px;
	left: 700px;
	transition: all 0.2s linear;
}

.goods9 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods10 {
	position: absolute;
	top: 700px;
	left: 1000px;
	transition: all 0.2s linear;
}

.goods10 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods11 {
	position: absolute;
	top: 700px;
	left: 1300px;
	transition: all 0.2s linear;
}

.goods11 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.goods12 {
	position: absolute;
	top: 700px;
	left: 1600px;
	transition: all 0.2s linear;
}

.goods12 :hover {
	transform: scale(1.2);
	transition: transform .5s;
}

.imglogo {
	position: absolute;
	top: 0px;
	left: 0px;
}
</style>
		<img position="relative" src="${root }resources/newjins/뉴진스뒷배경.png" alt="뉴진스배경"
			position="relative" width="1920px" height="1080px">
		<td width="200px"><a href="${root}"><img class="imglogo"
				src="${root }resources/newjins/로고투명.png" alt="logo" width="200" height="200"></a></td>
		<td width="1720px" height="200px" align="center"><a href="#"><img
				src="${root }resources/newjins/shop.png" class="img2" alt="shoplogo" width="440px"
				height="60px" align="center"></a> <!-- 	<a href="#"><img class="img"src="imgnewgoods/review.png" width="190px" height="20px"></a> -->
			<a href="#" class="but" data-text="충전하기">충전하기</a> <a href="#"
			class="but1" data-text="잔액조회">잔액조회</a> <a href="#" class="but2"
			data-text="ITEM REVIEW">ITEM REVIEW</a> <!--   <a href="#" class="but2" data-text="ITEM REVIEW">ITEM REVIEW</a> -->
			<!-- <button class="but" onclick="location.href='index.html'">충전하기</button>
			<button class="but1" onclick="location.href='index.html'">잔액조회</button> -->
			<!--  <button type="button" onclick="location.href='list'">목록</button>-->
		</td>
	</table>
	<table>
		<style>
* {
	line-height: 5px;
	font-weight: bold;
	
}

h1 {
	font-size: 10px;
	color: #b71c1c;
}

p {
	font-weight: bold;
	font-size: 13px;
}

.line {
	border: 0.03px solid black;
	width: 400px;
	position: absolute;
	top: 310px;
	left: 760px;
}

.modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
	
}

.modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);

}

.modal.show {
	display: block;
	
}

.modal_body {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 800px;
	height: 500px;
	
	text-align: center;
	background-color: rgb(255, 255, 255);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
	
}
.bg-img{
width:100%;
height:100%;

}
.jj{
position: absolute;
top:175px;
left:450px;

}
.hh{
position: absolute;
top:40px;
left:50px;

}
.kk{
position: absolute;
top:100px;
left:400px;
font-size:15px;
font-style: oblique; 

}
.button1{
position: absolute;
top:335px;
left:450px;
height:40px;
width:100px;
background-color:white;
border-radius: 20px
}

.button2{
position: absolute;

top:335px;
height:40px;
width:100px;
left:600px;
background-color:white;
border-radius: 20px
}
.media{
position: absolute;

top:405px;
width:1000px;
left:-80px;
}






</style>

		<img class="newjeans" src="${root }resources/newjins/newjeans.png" width="250"
			heighet="50" align="center">
		<div class="line"></div>
		<a href="#" class="goods1"><img src="${root }resources/newjins/뉴진스1.png"
			alt="goods1" width="180" height="180">
			<h1>단독판매</h1>
			<p>CHARM SET</p>
			<p>\ 19,000</p> </a>
		<a href="#" class="goods2"><img src="${root }resources/newjins/뉴진스2.png"
			alt="goods2" width="180" height="180">
			<h1>단독판매</h1>
			<p>CHARM SET(MINJI)</p>
			<p>\ 19,000</p> </a>
		<a href="#" class="goods3"><img src="${root }resources/newjins/뉴진스3.png"
			alt="goods3" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick & Parts Set</p>
			<p>(DANIELLE)</p>
			<p>\ 60,000</p> </a>
		<a href="#" class="goods4"><img src="${root }resources/newjins/뉴진스4.png"
			alt="goods4" width="180" height="180">
			<h1>단독판매</h1>
			<p>CHARM SET</p>
			<p>\ 19,000</p> </a>
		<a href="#" class="goods5"><img src="${root }resources/newjins/뉴진스5.png"
			alt="goods5" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick & Parts Set</p>
			<p>\ 60,000</p> </a>
		<a href="#" class="goods6"><img src="${root }resources/newjins/뉴진스6.png"
			alt="goods6" width="180" height="180">
			<h1>단독판매</h1>
			<p>CHARM SET</p>
			<p>\ 19,000</p> </a>
		<a href="#" class="goods7"><img src="${root }resources/newjins/뉴진스7.png"
			alt="goods7" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick Parts(HANNI)</p>
			<p>\ 50,000</p> </a>
		<a href="#" class="goods8"><img src="${root }resources/newjins/뉴진스8.png"
			alt="goods8" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick Parts</p>
			<p>\ 15,000</p> </a>
		<a href="#" class="goods9"><img src="${root }resources/newjins/뉴진스9.png"
			alt="goods9" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick Parts Set</p>
			<p>\ 60,000</p> </a>
		<a href="#" class="goods10"><img src="${root }resources/newjins/뉴진스10.png"
			alt="goods10" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick Parts</p>
			<p>\ 15,000</p> </a>
		<a href="#" class="goods11"><img src="${root }resources/newjins/뉴진스11.png"
			alt="goods11" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick Parts Set</p>
			<p>\ 60,000</p> </a>
		</a>
		<a href="#" class="goods12"><img src="${root }resources/newjins/뉴진스12.png"
			alt="goods12" width="180" height="180">
			<h1>단독판매</h1>
			<p>Light Stick Parts Set</p>
			<p>\ 60,000</p> </a>

		<div class="modal">
			<div class="modal_body">
		<div class="bg-img"><img src="img/22.png"></div>
		<div class="jj"><img src="img/1.png" alt="1"></div>
		<div class="hh"><img src="img/3.png" alt="3"></div>
		<div class="kk"><h2>Light Stick & Parts Set(HAERIN)<br></br><br><br><br><br><br><br>
		/6.000
		</h2></div>
		<div><a href='https://naver.com' target='_blank'> <button class="button1">바로구매</button> </a></div>
		<div><a href='https://naver.com' target='_blank'> <button class="button2">장바구니</button> </a></div>
		
			
			<div class="media"><img src="img/4.png" alt="4"></div>
		</div>

</div>

		<script>
      const modal = document.querySelector('.modal');
      const goods5 = document.querySelector('.goods5');
      
      

      goods5.addEventListener('click', () => {
        modal.style.display = 'block';
        modal.addEventListener("click", e => {
            const evTarget = e.target
            if(evTarget.classList.contains("modal")) {
                modal.style.display = "none"
            }
        });
      });
   
      
    </script>

	</table>
	<style>
.wrap {
	width: 1920px;
	height: 150px;
	/* margin: 0 auto; */
	position: relative;
}

.wraptext {
	position: absolute;
	top: 90px;
	left: 1750px;
}

.wrapimg {
	position: absolute;
	top: 70px;
	left: 1750px;
	padding-left: 20px;
}

.wrapicon {
	position: absolute;
	top: 80px;
	left: 1700px;
}

.a2 {
	font-size: 10px;
	backgocolor: C62727;
	font-weight: bold;
}

span {
	font-size: 10px;
	color: 120202;
	font-weight: bold;
}
</style>


	<!--  -->


<!--  -->



</body>
</html>