<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.wrap{
			width:1920px;
			height:150px;
			 margin: 0 auto; 
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
</body>
</html>