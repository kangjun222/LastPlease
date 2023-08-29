<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원안내</title>
<style>
.AUD{
font-size:70px;
position: absolute;
   top: 20px;
   left: 830px;

}
.지원안내{
position: absolute;
   bottom: 800px;
   left:260px;
   font-size:15px
}

.line1{
   border: 0.05px solid black;
   width: 370px;
   position: absolute;
   bottom: 890px;
   left: 820px;

}
.line2{  
   border: 0.05px solid black;
   width: 370px;
   position: absolute;
   bottom: 890px;
   left: 820px;

}
.지원안내1{
    position: absolute;
     bottom: 540px;
   left: 30px;
   display:block;
   font-size:40px;
   color:black;
   text-decoration:none;

}
.지원안내선{
     border: 0.05px solid black;
   width: 210px;
   position: absolute;
   bottom: 530px;
   left: 20px;

}
.지원하기{
    position: absolute;
     bottom: 240px;
   left: 30px;
   display:block;
   font-size:40px;
   color:gray;
   text-decoration:none;
    border-top-left-radius:20px;
      border-bottom-left-radius:20px;
       border-top-right-radius:20px;
       border-bottom-right-radius:20px;
   

}
.지원하기:hover{
color:black;
}
.지원안내선1{
     border: 0.05px solid black;
   width: 210px;
   position: absolute;
   bottom: 230px;
   left: 20px;

}
.home{
position: absolute;
   bottom: 810px;
   left:1810px;
   font-size:15px;
   text-decoration:none;
   color:black;

}
.모집분야{
position: absolute;
   bottom: 410px;
   left: 400px;
   font-size:30px;


}
.모집분야1{
position: absolute;
   bottom: 373px;
   left: 412px;
   font-size:18px;


}
.지원방법{
position: absolute;
   bottom: 410px;
   left: 1200px;
   font-size:30px
   

}
.지원방법1{
position: absolute;
   bottom: 375px;
   left: 1200px;
   font-size:17px;


}
.첨부파일{
position: absolute;
   bottom: 358px;
   left: 1200px;
   font-size:15px;
}
.첨부파일1{
position: absolute;
   bottom: 322px;
   left: 1200px;
   font-size:15px;
}
.모집절차{
position: absolute;
   bottom: 245px;
   left: 400px;
      font-size:30px;

}
.모집절차1{
position: absolute;
   bottom: 210px;
   left: 400px;
   font-size:18px;
}
.모집절차2{
position: absolute;
   bottom: 180px;
   left: 400px;
   font-size:18px;
}
.유의사항{

position: absolute;
   bottom: 245px;
   left: 1200px;
   font-size:30px;
   

}
.포토샵{
  position: absolute;
   bottom: 210px;
   left: 1206px;
   font-size:18px;
}
.포토샵1{
  position: absolute;
   bottom: 180px;
   left: 1206px;
   font-size:18px;

}
.포토샵2{
 position: absolute;
   bottom: 160px;
   left: 1206px;
   font-size:18px;

}
.line111{
   border: 0.05px solid black;
   width: 160px;
   position: absolute;
   bottom: 260px;
   left: 409px;

}

.line1111{
   border: 0.05px solid black;
   width: 160px;
   position: absolute;
   bottom: 260px;
   left: 1210px;

}
.line22{
   border: 0.05px solid black;
   width: 160px;
   position: absolute;
   bottom: 425px;
   left: 1210px;

}
.line222{
   border: 0.05px solid black;
   width: 160px;
   position: absolute;
   bottom: 425px;
   left: 409px;

}
.button{
position: absolute;
   bottom: 30px;
   left: 885px;
   width: 200px;
   height: 45px;
   font-weight: bold;
   font-size: 20px;
   background-color:#8ABFDC;
   border-radius: 6%
}





</style>
<table width="1920px" height="200px">
   <td width="200px" height="200px"><a href="${root}"><img src="${root}resources/img/logo.png" alt="logo" width="200" height="200"></a></td>
   <td width="1720px" align="center">
   <h1 class="AUD">AUDITION</h1>
   <div class="line1"></div>

</table>


</head>
<body>

<center>
<tr>
<img src="${root }resources/guide11/new1.png"
   style="width: 1600px; height:300px; margin-left: 200px; margin-top:40px;">
   <h2 class="지원안내"></h2>
   
   <a class="지원안내1" href='https://naver.com' target='_blank' > 지원 안내 </a>
   <div class="지원안내선"></div>
   </tr>
   <a class="home" href='#' target='_blank' > Home </a>
   <tr>
   <a class="지원하기" href='http://localhost:8081/TeamPro/junhyung/help.jsp' target='_blank' > 지원 하기 </a>
   <div class="지원안내선1"></div>
   </tr>
   <tr>
   <h3 class="모집분야">★모집분야★</h3>
   <h3 class="모집분야1">랩/외모/노래</h3>
   <h3 class="지원방법">★지원방법★</h3>
   <h3 class="지원방법1">하단의 지원하기 버튼 클릭 후 지원서 작성</h3>
   <h3 class=첨부파일>-필수첨부 파일</h3>
   <h3 class="첨부파일1">1)사진첨부</br>2)자기소개</h3>
   <h3 class="모집절차">★모집절차★</h3>
   <h3 class="모집절차1">홈페이지 및 우편접수->1차 합격자 개별공지->최종 오디션</h3>
   <h3 class="모집절차2">우편 접수 주소 : 06070 서울시 강남구 삼성로146길 4-5 스타쉽ENT 신인개발팀 앞</h3>
   <h3 class="유의사항">★유의사항★</h3>
   <h3 class="포토샵">포토샵&필터 등으로 수정 처리 혹은 정면이 아닌 사진은1차심사 제외</h3>
   <h3 class="포토샵1">포커스가 맞지 않은 동영상 파일, 음질이 불량한 음성 및 동영상 파일은 심사에 불이익이</h3>
   <h3 class="포토샵2">있을 수 있습니다</h3>
   <div class="line111"></div>
   <div class="line1111"></div>
   <div class="line22"></div>
   <div class="line222"></div>
   </tr>
   
   <tr height="100">
   <td class="버튼">
      <a href='http://localhost:8081/TeamPro/junhyung/help.jsp' target='_blank'> <button class="button">지원하기</button> </a>
   
   </td>
   
   </tr>
   


</center>

</body>
</html>