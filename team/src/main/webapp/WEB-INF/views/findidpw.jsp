<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/>   
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	position: relative;
}

h1 {
	font-size: 60px;
	text-decoration: none;
	color: black;
	margin-right:240px;
}

a {
	text-decoration: none;
}

.tabs {
	margin-top: 50px;
	padding-bottom: 40px;
	background-color: #ffffff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	width: 700px;
	margin: 0 auto;
	position: absolute;
	left: 560px
}

.tab_item {
	width: calc(100%/ 2);
	height: 50px;
	border-bottom: 3px solid #333333;
	background-color: #f8f8f8;
	line-height: 50px;
	font-size: 16px;
	text-align: center;
	color: #333333;
	display: block;
	float: left;
	text-align: center;
	font-weight: bold;
	transition: all 0.2s ease;
}

input[name="tab_item"] {
	display: none;
}

.tab_content {
	display: none;
	padding: 40px 40px 0;
	clear: both;
	overflow: hidden;
}

#all:checked ~ #all_content, #programming:checked ~ #programming_content,
	#design:checked ~ #design_content {
	display: block;
}

.tabs input:checked+.tab_item {
	background-color: #333333;
	color: #fff;
}
.아이디찾기{
font-size:16px;


}
.아이디찾기1{
font-size:12px;
}
.아이디{
width:500px;
height:60px;
border-radius:20px;
margin-left:50px;
}
.휴대폰번호{
width:500px;
height:60px;
border-radius:20px;
margin-left:50px;
margin-top:40px;
}
.확인{
width:400px;
margin-top:80px;
margin-left:100px;
height:50px;
border-radius:20px;
background-color:black;
color:white;

}
.비밀번호찾기{
font-size:16px;
}
.비밀번호찾기1{
font-size:12px;
}
.이름{
width:500px;
height:60px;
border-radius:20px;
margin-left:50px;
}
.이름아이디{
width:500px;
height:60px;
border-radius:20px;
margin-left:50px;
margin-top:40px;
}
.확인1{
width:400px;
margin-top:80px;
margin-left:100px;
height:50px;
border-radius:20px;
background-color:black;
color:white;
}
		.wrap{
			width:1920px;
			height:150px;
			/* margin: 0 auto; */
	
		
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
		.footer{
		position: absolute;
		bottom:-360px;
		right:-660px;
		}
		
		
</style>

<script type="text/javascript">
	function searchId(){
		var name = $("#name").val();
		var phone = $("#phone").val();
		
		$.ajax({
			url:"${root}member/idSearch",
			type:"post",
			data:{"name":name , "phone":phone},
			dataType:"json",
			success:function(member){
				alert("귀하의 아이디는" + member.id + " 입니다");
			},
			error:function(){
				alert('이름과 휴대폰번호를 올바르게 입력해주세요');
			}
		});
	};
	
	function searchpwd(){
		var name = $("#name1").val();
		var id = $("#id").val();
		
		$.ajax({
			url:"${root}member/pwdSearch",
			type:"post",
			data:{"name":name , "id":id},
			dataType:"json",
			success:function(member){
				alert("귀하의 비밀번호는" + member.pwd + " 입니다");
			},
			error:function(){
				alert('이름과 휴대폰번호를 올바르게 입력해주세요');
			}
		});
	};
	

	

</script>
</head>
<body>
	<wrap width="1920px" height="2100px">

	<table width="1920px" height="200px">
		<td width="200px"><a href="${root}"><img src="${root }resources/artist/로고투명.png"
				alt="logo" width="200" height="200"></a></td>
		<td width="1720" height="200px" align="center"><a href="#"><h1>ID&PW</h1></td>
	</table>
	<div class="tabs">
		<input id="all" type="radio" name="tab_item" checked> 
		<label class="tab_item" for="all">아이디찾기</label> 
		<input id="programming" type="radio" name="tab_item"> 
			
			
		<label class="tab_item" for="programming">비밀번호 찾기</label>
		<input id="design"  type="radio"name="tab_item">
			 
			 
		
		
			<div class="tab_content" id="all_content"><h2 class="아이디찾기">아이디 찾기</h2><br>
				<h3 class="아이디찾기1">ID 찾기를 위한 이름&휴대폰번호를 입력해주세요</h3><br>
				 <p><input id="name" class="아이디" name="name" type="text" placeholder="이름을 입력해주세요" /></p>
				 <p><input id="phone" class="휴대폰번호" name="phone" type="text" placeholder="휴대폰번호(-)제외" /><p>
				 <button class="확인" type="button" onclick="searchId();">확인</button>
			</div>
		
  <div class="tab_content" id="programming_content"><h2 class="비밀번호찾기">비밀번호 찾기</h2><br>
  		<h3 class="비밀번호찾기1">비밀번호 찾기를 위한 이름&ID를 입력해주세요</h3><br>
     		<p><input id="name1" class="아이디" name="name" type="text" placeholder="이름을 입력해주세요" /></p>
     		<p><input id="id" class="이름아이디" name="id" type="text" placeholder="id를 입력해주세요" /></p>
  			 <button class="확인" type="button" onclick="searchpwd();">확인</button>
   
  </div>
  <!--이름아이디  -->
  <footer class="footer">
  		<div class="wrap">
		<img src="img/footer.png" alt=""/>
		<div class="wrapimg">

			<a href="#"><img src="img/페이스북.png" alt="" width="20px" height="20px"/></a>
			<a href="#"><img src="img/인스타.png" alt=""width="20px"height="20px"/></a>
			<a href="#"><img src="img/트위터.png" alt=""width="20px"height="20px"/></a>
		</div>
		
		</div>
  
  </footer>
 
		</table>

	
	</wrap>
	<style>
		.wrap{
			width:1920px;
			height:100px;
			/* margin: 0 auto; */
			position: relative;
		}
		.wraptext{
			position: absolute;
			top:90px;
			left:1750px;
			bottom:500px;
		}
		.wrapimg{
			position: absolute;
			top:260px;
			left:900px;
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
			bottom:190px;
			left:100px;
		}
	
		span{
			font-size: 10px;
			color: 120202;
			font-weight:bold;
		}
		.footer1{
		bottom:-190px;
		margin-left:-560px;
		
		}
		
	</style>
	<div class="wrap">
		<img class="footer1" src="${root }resources/artist/footer.png" alt=""/>
		<div class="wrapimg">

			<a href="#"><img src="${root }resources/artist/페이스북.png" alt="" width="20px" height="20px"/></a>
			<a href="#"><img src="${root }resources/artist/인스타.png" alt=""width="20px"height="20px"/></a>
			<a href="#"><img src="${root }resources/artist/트위터.png" alt=""width="20px"height="20px"/></a>
		</div>
		
		</div>
	</div>



</body>
<!--  탭으로찾음 -->

</html>