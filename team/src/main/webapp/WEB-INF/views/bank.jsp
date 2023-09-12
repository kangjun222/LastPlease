<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>충전하기</title>
<style>

*{
 margin: 0;
   padding: 0;
   box-sizing: border-box;
   position: relative;
  
}
.clock {
	font-size: 20px;
}
.cla {
  float: right;
  position:absolute;
  margin-left: 300px;
  z-index:10;
  border-radius: 30px;
  
}

#coinwrap{
	/* background-color: red; */
	padding-top: 150px;
}

.logo{

  position:absolute;
   bottom:-260px;
   left:410px;
   z-index:11
  
}
.line1{

  position:absolute;
   bottom:-220px;
   left:830px;
   z-index:11

}
.충전하기{
  position:absolute;
   bottom:-230px;
   left:380px;
   z-index:11;
   height:70px;
   width:800px;
   font-size:20px;
}

.충전하기1{
 position:absolute;
   bottom:-450px;
    left:350px;
     z-index:11;
     font-size:40px;
     font-weight: bolder;
    
     width:200px;
}

.button{
position:absolute;
   bottom:-220px;
    left:1250px;
     z-index:11;
     width:200px;
     height:100px;
     border-radius: 20px;
     font-size:30px;
       background-color:#EDD0E8
    
}
.pig{
position:absolute;
bottom:-500px;
left:300px;


}
.coin{
position:absolute;
left:500px;

}
h1 {
   font-size: 80px;
	text-decoration-line: none; 
   color: black;
   padding-left:-30px;

}

.back{
position:absolute;
left:0px;
bottom:-900px;
}
.logo{
z-index:11;
position:absolute;
left:0px;
top:0px;
}

</style>
</head>


<!-- <body class="body" onload="showClock()"> -->
<wrap =width="1920px" height="2100px">
 


<table width="1920px" height="200px">
      <td class="logo" width="200px"><a href="${root}"><img src="${root}resources/img/로고투명.png"
      
            alt="logo" width="200" height="200"></a></td>
            <td calss= "COIN" height="200px" align="center"><h1>COIN</h1></td>
</table>

<div id="coinwrap">
<table align="center" class="cla" width="1220" height="500" border="6" >



         <form method="get" action="${root}bankcontroller/bank">
                         <label  class="충전하기1" for="name">H머니</label><br/>
                        <input class="충전하기" type="text" id="bank" name="bank" placeholder="충전하기" /> 
                        <input type='hidden' id="id" name="id" value="${mem.id}"/>
                         <button type="submit" class ="button">포인트 충전</button>
                        <img class="pig"src="${root}resources/junhyung/pig1.png" alt="로고이미지" / >
<%--                         <img class="back"src="${root}resources/junhyung/back.png" alt="로고이미지" / > --%>
                        
                         </form>
            </table>
            </div>
         <!--    <div id="divClock" class="clock"></div>-->

   

</wrap>

</div>
<!--  </marquee>-->

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script type="text/javascript">
    
    
    	$(document).ready(function(){
    		if(${!empty msg}){
    			alert('${msg}');
    		}
    	});
    </script>
		</div>
		
		</div>

</body>
</wrap>
</html>

