<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공유</title>
</head>
<body>
	<table width="1920px" height="200px">
		<td width="200px" ><a href="#"><img
				src="img/로고입니다.png" alt="logo" width="200" height="200"></a></td>
		<td width="1720px"  height="200px"align="center"><a href="#"><img
				src="img/아티스트 로고 1.png" alt="artistlogo" width="430px" height="82px"></a>
		</td>
	</table>
	
	<table width="1920px" height="880px">
		<td width="180px" height="880px">
			<img src="img/left.png" width="20px" height="880px">
		</td>
	<style type="text/css">
   		
   		*{margin-right:110px;
   			font-family:돋음;
   			margin: 0 auto;
   			position:relative;
   		}
   		p{
   			font-size:20px;
   			margin-bottom:2px;
   			font-weight:normal;
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
   	<h1>공유<span>${artist.name}</span> </h1>
   	<h2>${artist.birth}</h2>
   	<p>키	${artist.height}cm</p>
   	<p>데뷔	드라마 ${artist.debut} (KBS, 2001)</p></br>
   	<strong>WORKS</strong></br>
   	<p>영화</p>
	<p>동갑내기 과외하기(2003) 그녀를 모르면 간첩(2004) 슈퍼스타 감사용(2004) </p>
	<p>S다이어리(2004) 잠복근무(2005) 용이 간다(2007) 김종욱 찾기(2010) 도가니(2011)</p>
	<p>용의자(2013) 남과 여(2016) 부산행(2016) 밀정(2016) 82년생 김지영(2019) 서복(2021)</p></br>
	<p>드라마</p>
	<p>학교4(KBS, 2001) 언제나 두근두근(KBS, 2002) 거침없는 사랑(KBS, 2002)</p>
	<p>스무살(SBS, 2003) 스크린(SBS,2003) 건빵선생과 별사탕(SBS, 2005) </p>
	<p>어느 멋진 날(MBC, 2006) 커피 프린스 1호점(MBC, 2007) 빅(KBS, 2012) </p>
	<p>도깨비(tvN, 2016) 고요의 바다(넷플릭스,2021)</p></br>
	<p>수상내역</p>
	<p>제53회 백상예술대상 TV부문 남자 최우수연기상(2017)</p>
	<p>제48회 납세자의 날 모범납세자 대통령표창(2014)</p>
	<p>제32회 청룡영화제 인기스타상(2011)</p>
	<p>MBC 연기대상 우수상(2007)</p>
	<p>MBC 연기대상 미니시리즈 연기상(2006)...</p>
	    	
   </td>
   <td width="820px" height="880px" align="center">
   		 <img class="img2" src="${root}resources/profileimg/${artist.profile}" width="600px"  height="750px">
   	</td>
   	<td width="120px" height="880px" >
   		<img class="img" src="img/right.png" width="20px" height="300px" >
   		<img class="img1" src="img/rightbottom.png" width="100px" height="20px" >
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
		<img src="img/footer.png" alt=""/>
		<div class="wrapimg">

			<a href="#"><img src="img/페이스북.png" alt="" width="20px" height="20px"/></a>
			<a href="#"><img src="img/인스타.png" alt=""width="20px"height="20px"/></a>
			<a href="#"><img src="img/트위터.png" alt=""width="20px"height="20px"/></a>
		</div>
		<div class="wraptext">
			<a class="a2" href="javascript:void(0);"onclick="window.open('http://localhost:8081/TeamPro/sahee/%EA%B0%9C%EC%9D%B8%EC%A0%95%EB%B3%B4.jsp', 'pop01', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');">개인정보처리방침</a>
			<a href="javascript:void(0);"onclick="window.open('http://localhost:8081/TeamPro/sahee/%EC%9D%B4%EC%9A%A9%EC%95%BD%EA%B4%80.jsp', 'pop01', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');"><span>이용약관</span></a>	
		</div>
	</div>
</body>
</html>