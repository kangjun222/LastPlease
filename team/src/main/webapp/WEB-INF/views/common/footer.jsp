<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	
		.a3{
			font-size: 10px;
			color: 120202;
			font-weight:bold;
		}
		
	</style>
<div class="wrap">
	<img src="${root}resources/artist/footer.png" alt="" />
	<div class="wrapimg">

		<a href="#"><img src="${root}resources/artist/페이스북.png" alt=""
			width="20px" height="20px" /></a> <a href="#"><img
			src="${root}resources/artist/인스타.png" alt="" width="20px"
			height="20px" /></a> <a href="#"><img
			src="${root}resources/artist/트위터.png" alt="" width="20px"
			height="20px" /></a>
	</div>
	<div class="wraptext">
		<a class="a2" href="javascript:void(0);" onclick="window.open('${root}maincontroller/intro1');">개인정보처리방침</a> 
		<a class="a3 " href="javascript:void(0);" onclick="window.open('${root}maincontroller/use1">이용약관</a>
	</div>
</div></body>
</html>