<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원안내</title>
</head>
<style>

* {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   position: relative;
}

.AUD{
font-size:70px;
position: absolute;
   top: -50px;
   left: -150px;
   color:black;
   width:400px;

}
.cla {
   float: right;
   position: absolute;
   margin-left: 300px;
}
.지원안내{
 position: absolute;
 margin-left: 190px;
}
.지원안내1{
    position: absolute;
     bottom: 180px;
   left: 0px;
   display:block;
   font-size:40px;
   color:black;
   text-decoration:none;

}
.지원하기{
    position: absolute;
     bottom: -200px;
   left: 0px;
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
.지원안내선{
     border: 0.05px solid black;
   width: 180px;
   position: absolute;
   bottom: 184px;
   left: 0px;

}
.지원안내선1{
     border: 0.05px solid black;
   width: 180px;
   position: absolute;
   bottom: -194px;
   left: 0px;

}
.모집분야{

position: absolute;
   bottom: -80px;
   left: 400px;
   font-size:30px;
}

.모집분야1{
position: absolute;
 bottom: -120px;
left: 425px;
 font-size:18px;
}

.지원방법{
position: absolute;
   bottom: -80px;
   left: 1200px;
   font-size:30px
   

}

.지원방법1{
position: absolute;
   bottom: -110px;
   left: 1200px;
   font-size:17px;


}
.첨부파일{
position: absolute;
   bottom: -133px;
   left: 1200px;
   font-size:15px;
}
.첨부파일1{
position: absolute;
   bottom: -167px;
   left: 1200px;
   font-size:15px;
}
.모집절차{
position: absolute;
   bottom: -240px;
   left: 400px;
      font-size:30px;

}
.모집절차1{
position: absolute;
   bottom: -266px;
   left: 400px;
   font-size:18px;
}
.모집절차2{
position: absolute;
   bottom: -290px;
   left: 400px;
   font-size:18px;
}
.유의사항{

position: absolute;
   bottom: -240px;
   left: 1200px;
   font-size:30px;
   

}
.포토샵{
  position: absolute;
   bottom: -265px;
   left: 1200px;
   font-size:18px;
}
.포토샵1{
  position: absolute;
   bottom: -289px;
   left: 1200px;
   font-size:18px;

}
.button{
position: absolute;
   bottom:-400px;
   left: 885px;
   width: 200px;
   height: 45px;
   font-weight: bold;
   font-size: 20px;
   background-color:#8ABFDC;
   border-radius: 6%;
}



</style>
<body>
<wrap width="1920px" height="2100px">

   <table width="1920px" height="200px">
      <td width="200px"><a href="${root}"><img src="${root}resources/img/logo.png"
            alt="logo" width="200" height="200"></a></td>
      <td width="1720" height="200px" align="center"><a href="#"><h1 class="AUD">AUDITION</h1></td>
   </table>
   <table>
   <h2 class="지원안내">지원안내</h2>
      <td><img src="${root }resources/guide11/new1.png"
      style="width:1600px; height:300px;margin-left: 200px; margin-top:40px;">
      </td>
  
</table>
<table>
<a class="지원안내1" href='#' target='_blank' > 지원 안내 </a>
<div class="지원안내선"></div>

 <a class="지원하기" href='http://localhost:8080/kr/maincontroller/guidedo' target='_blank' > 지원 하기 </a>
   <div class="지원안내선1"></div>
</table>

<table>
<h3 class="모집분야">★모집분야★</h3>
 <h3 class="모집분야1">랩/외모/노래</h3>
 
 <h3 class="지원방법">★지원방법★</h3>  
<h3 class="지원방법1">하단의 지원하기 버튼 클릭 후 지원서 작성</h3>
<h3 class=첨부파일>필수첨부 파일</h3>
<h3 class="첨부파일1">1)사진첨부</br>2)자기소개</h3>
<h3 class="모집절차">★모집절차★</h3>
 <h3 class="모집절차1">홈페이지 및 우편접수->1차 합격자 개별공지->최종 오디션</h3>
   <h3 class="모집절차2">우편 접수 주소 : 06070 서울시 구로구 146 하이미디어앞</h3>
      <h3 class="유의사항">★유의사항★</h3>
       <h3 class="포토샵">포토샵&필터 등으로 수정 처리 혹은 정면이 아닌 사진은1차심사 제외</h3>
   <h3 class="포토샵1">사진은 300* 350픽셀을 맞춰주세요 </h3>
   
     <td class="버튼">
      <a href='http://localhost:8080/kr/maincontroller/guidedo' target='_blank'> <button class="button">지원하기</button> </a>
   
   </td>
   

</table>


</body>
</html>
<%-- <tr>  <img src="${root }resources/guide11/new1.png"</tr>

   <a class="지원안내1" href='https://naver.com' target='_blank' > 지원 안내 </a>

   <a class="지원하기" href='http://localhost:8080/kr/maincontroller/guidedo' target='_blank' > 지원 하기 </a>


      <a href='http://localhost:8080/kr/maincontroller/guidedo' target='_blank'> <button class="button">지원하기</button> </a>
.AUD{
font-size:70px;
position: absolute;
   top: 20px;
   left: 830px;

} --%>