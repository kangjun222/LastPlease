<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <title>Modal</title>
    <style>
    * {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   position: relative;
   
}

.cla {
   float: right;
  position:absolute;
   margin-left: 300px;
   bottom:-700px;
   background-color:#3835D3;
   
  

  z-index:10;
  border-radius: 30px;
  

}
.hmoney{
 position:absolute;
   bottom:-350px;
    left:350px;
     z-index:11;
     font-size:40px;
     font-weight: bolder;

     width:200px;
     font-family: serif;
    
    
}
.card{
 position:absolute;
   bottom:-400px;
    left:350px;
     z-index:11;
     font-size:20px;
     font-weight: bolder;

     width:200px;
     font-family: serif;
}
.잔액조회{
 position:absolute;
   bottom:-480px;
    left:350px;
     z-index:11;
     font-size:40px;
     font-weight: bolder;
     color:white;

     width:200px;

}

.print{
position:absolute;
bottom:-550px;
  left:450px;
  z-index:12;
  font-size:60px;
 width:500px;
 color:white;
 text-decoration: underline ;

}
.card1{
position:absolute;
bottom:-600px;
  left:-1000px;
  z-index:12;
  font-size:60px;
 width:500px;
 }
 .card2{
position:absolute;
bottom:-800px;
  left:-700px;
  z-index:12;
  width:200px;
  

 }
 
 





  
    </style>
</head>
<body>
<div>
 <wrap  class="sa"width="1920px" height="2100px">
 <table width="1920px" height="200px">
  <td width="200px"><a href="${root}"><img src="${root}resources/img/head.png">
  
  
  </a></td>
  <td><a href="${root}"><img class="card1" src="${root}resources/img/CARD.png"></a></td>
  <td><ahref="${root}"><img class="card2" src="${root}resources/img/rec2.png"></a></td>
  <table align="center" class="cla" width="1220" height="500" border="6" >
 <h2 class="hmoney">H MONEY
 </h2>
 <br>
 <h3 class="card">H CARD</h3>
 <h2 class="잔액조회">잔액</h2>
 
 <form method="get" action="${root}bankcontroller/modal">
 
  
 
</p>
<div class="print" id="print" >${mem.bank} POINT</div>
  
 </form>
</table>

 
 
 
 
 </wrap>

</div>

 
  
  
</body></html>