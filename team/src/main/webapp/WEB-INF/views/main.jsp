<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root}resources/css/main.css" />
<link rel="stylesheet" href="${root}resources/css/reset.css" />
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
	integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
    	function overviewmenu(){
    		
    			if($("#overviewmenu").css("display") == "none"){
    				$("#overviewmenu").css("display","block");
    			}  			
    			else if($("#overviewmenu").css("display") == 'block'){
    				$("#overviewmenu").css("display","none");
    			}  	
    			
    	} 
    	
    	$(document).ready(function(){
    		if(${!empty msg}){
    			alert('${msg}');
    		}
    	});
    </script>


 <script type="text/javascript">
 	function Auditionmenu(){
		
		if($("#Auditionmenu").css("display") == "none"){
			$("#Auditionmenu").css("display","block");
		}  			
		else if($("#Auditionmenu").css("display") == 'block'){
			$("#Auditionmenu").css("display","none");
		}  			   		
}
    
    </script>
</head>
<body>

	<wrap>
	<div id="header">
		<div id="logo">
			<img src="${root}resources/img/logo.png" alt="로고이미지" / width="200px"
				height="200px">
		</div>
		<div id="headermenu">
			<ul>
				<c:if test="${empty mem}">
					<li>
						<a href="#" class="modaljun">
							<i class="fa-regular fa-user">Login</i>
						</a>
					</li>
	
					<li>
						<a href="${root}member/gojoin">
							<i class="fa-solid fa-user">Join</i>
						</a>
					</li>
				</c:if>
				
				<c:if test="${!empty mem}">
					<li>
						<a href="${root}member/logout" class="modaljun">
							<i class="fa-regular fa-user">Logout</i>
						</a>
					</li>
	
					<li>
						<a href="${root}member/gojoin">
							<i class="fa-solid fa-user">${mem.id}님</i>
						</a>
					</li>
				</c:if>
				
			</ul>
		</div>
	</div>
	<!-- header -->

	<div id="section">
		<div id="sectionmenu">
			<ul>
				<li><a href="javascript:overviewmenu();"><h1><b>OVERVIEW</h1></b></a>
					<div id="overviewmenu">
						<ul>
							<li><a href="${root}maincontroller/intro">소개</a></li>
							<li><a href="${root}maincontroller/addr">주소</a></li>
						</ul>
					</div></li>
				<li><a href="${root}maincontroller/artistcontrollermain"><h1><b>ARTIST</h1></b></a></li>
				<li><a href="${root}maincontroller/gostore"><h1><b>STORE</h1></b></a></li>
				<li><a href="#"><h1><b>NEW & NOTICE</h1></b></a></li>
				
				<li>
				<a href="javascript:Auditionmenu();"><h1><b>AUDITION</h1></b></a>
				<div id="Auditionmenu">
						<ul>
							<li><a href="${root}maincontroller/guide">지원안내</a></li>
							<li><a href="ceo">지원하기</a></li>
						</ul>
					</div></li>
				<li><a href="${root}maincontroller/ceo"><h1><b>CEO</h1></b></a></li>
			</ul>
		</div>
		<!-- sectionmenu -->

		<div id="banner">
			<div class="slidwrap">
				<div class="slide" id="slide1">
					<a href="#"><img src="${root}resources/img/iumain.png"
						alt="아이유" /></a>
				</div>

				<div class="slide" id="slide2">
					<a href="#"><img src="${root}resources/img/akmumain.png"
						alt="악뮤" /></a>
				</div>

				<div class="slide" id="slide3">
					<a href="#"><img src="${root}resources/img/cwhmain.png"
						alt="천우희" /></a>
				</div>

				<div class="slide" id="slide4">
					<a href="#"><img src="${root}resources/img/hshmain.png"
						alt="한소희" /></a>
				</div>

				<div class="slide" id="slide5">
					<a href="#"><img src="${root}resources/img/jujmain.png"
						alt="주우재" /></a>
				</div>

				<div class="slide" id="slide6">
					<a href="#"><img src="${root}resources/img/karinamain.png"
						alt="카리나" /></a>
				</div>

				<div class="slide" id="slide7">
					<a href="#"><img src="${root}resources/img/kbmain.png"
						alt="기리보이" /></a>
				</div>

				<div class="slide" id="slide8">
					<a href="#"><img src="${root}resources/img/kshmain.png"
						alt="김선호" /></a>
				</div>

				<div class="slide" id="slide9">
					<a href="#"><img src="${root}resources/img/ktrmain.png"
						alt="김태리" /></a>
				</div>

				<div class="slide" id="slide10">
					<a href="#"><img src="${root}resources/img/kumain.png" alt="공유" /></a>
				</div>

				<div class="slide" id="slide11">
					<a href="#"><img src="${root}resources/img/ldhmain.png"
						alt="이도현" /></a>
				</div>

				<div class="slide" id="slide12">
					<a href="#"><img src="${root}resources/img/lksmain.png"
						alt="이광수" /></a>
				</div>

				<div class="slide" id="slide13">
					<a href="#"><img src="${root}resources/img/njsmain.png"
						alt="뉴진스" /></a>
				</div>

				<div class="slide" id="slide14">
					<a href="#"><img src="${root}resources/img/seventeenmain.png"
						alt="세븐틴" /></a>
				</div>

				<div class="slide" id="slide15">
					<a href="#"><img src="${root}resources/img/ushmain.png"
						alt="유승호" /></a>
				</div>


			</div>

		</div>
	</div>
	<!-- section -->

	<div id="section2">
		<img src="${root}resources/img/community logo.png" alt="커뮤니티로고">

	</div>

	<div id="section3">
		<div id="s3wrap">

			<div id="suzywrap">
				<div id="suzy">
					<a
						href="https://www.starnewskorea.com/stview.php?no=2023072113530988303"><img
						src="${root}resources/img/comusuzy.png" alt="커뮤니티 수지">
						<h1>
							<b>수지 '이두나'로 <br>안방 컴백!
							</b>
						</h1></a>
				</div>
			</div>

			<div id="newjeanswrap">
				<div id="newjeans">
					<a href="#"><img src="${root}resources/img/comunewjeans.png"
						alt="커뮤니티 뉴진스">
						<h1>
							<b>뉴진스 국내외 차트 쾌조!</b>
						</h1></a>
				</div>
			</div>

			<div id="lehwrap">
				<div id="leh">
					<a href="#"><img src="${root}resources/img/comuldh.png"
						alt="커뮤니티 이도현">
						<h1>
							<b>이도현 첫 팬미팅 30초 초고속 매진</b>
						</h1></a>
				</div>
			</div>

			<div id="ktrwrap">
				<div id="ktr">
					<a href="#"><img src="${root}resources/img/comuktr.png"
						alt="커뮤니티 김태리">
						<h1>
							<b>김태리 대체불가능한 <br>악귀로 변신
							</b>
						</h1></a>
				</div>
			</div>
		</div>
	</div>


	<table width="1920px" height="200px">

		<div class="modal">


			<div class="modal_body">
				<div id="closebtnwrap">
					<a href="#" id="closebtn"><i class="fa-solid fa-circle-xmark"></i></a>
				</div>

				<h2 class="로그인제목">LOGIN</h2>
				<form method="post" action="${root}member/login">
					<input class="아이디" type="text" name="id" placeholder="ID" />
					<input class="비밀번호" type="password" name="pwd" placeholder="PASSWORD" />
					<input class="로그인버튼" type="submit" id="btn" value="LOGIN">
				</form>

				<a href="#"><input class="회원가입버튼" type="button" value="회원가입"></a>
				<a href="#"><b class="아이디찾기">아이디찾기</b></a> <a href="#"><b
					class="비밀번호찾기">비밀번호찾기</b></a>
				<h5 class="간편로그인">
					<b>간편로그인<b>
				</h5>
				<hr class="가로선1" width="20%">
				<hr class="가로선2" width="20%">

				<a href="#"><img src="${root}resources/img/카카오톡.png" alt="logo"
					width="60" height="60" class="카카오톡"></a> <a href="#"><img
					src="${root}resources/img/라인.png" alt="logo" width="60" height="60"
					class="라인"></a> <a href="#"><img
					src="${root}resources/img/구글.png" alt="logo" width="60" height="60"
					class="구글"></a>
			</div>

		</div>
		</td>
	</table>

	<script>
      const modal = document.querySelector('.modal');
      const modaljun = document.querySelector('.modaljun');
      const closebtn = document.querySelector('#closebtn');
      
      modaljun.addEventListener('click', () => {
        modal.style.display = 'block';
        modal.addEventListener("click", e => {
            const evTarget = e.target
            if(evTarget.classList.contains("modal")) {
                modal.style.display = "none"
            }
        });
        
        closebtn.addEventListener("click", e => {
           
        	$(".modal").css("display","none");
        });
        
        
      });
    </script> <jsp:include page="/WEB-INF/views/common/footer.jsp" /> </wrap>



</body>
</html>