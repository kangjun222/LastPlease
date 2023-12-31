<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원하기</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<style>
* {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   position: relative;
}

img {
   display: block;
}

.cla {
   float: right;
   position: absolute;
   margin-left: 300px;
}

.line {
   position: absolute;
   top: 250px;
   width: 1516px;
}

.line1 {
   position: absolute;
   bottom: 1000px;
   left: 100px;
   font-size: 50px;
   text-shadow: 5px 5px gray
}

.수지 {
   position: absolute;
   bottom: 220px;
   left: 1200px;
}

.input {
   position: absolute;
   bottom: 270px;
   width: 1212px;
   height: 70px;
   font-size: 20px;
   right: 0px;
}

.input1 {
   position: absolute;
   bottom: 198px;
   width: 1212px;
   height: 70px;
   font-size: 20px;
   right: 0px;
}

.input2 {
   position: absolute;
   bottom: 128px;
   width: 1212px;
   height: 70px;
   font-size: 20px;
   right: 0px;
}

.input3 {
   position: absolute;
   bottom: 58px;
   width: 1212px;
   height: 70px;
   font-size: 20px;
   right: 0px;
}

.input4 {
   position: absolute;
   bottom: -5px;
   width: 1212px;
   height: 60px;
   font-size: 20px;
   right: 0px;
}

.upload-name {
   position: absolute;
   bottom: -76px;
   width: 1212px;
   height: 70px;
   font-size: 20px;
   right: 0px
}

.line2 {
   border: 0.05px solid black;
   width: 295px;
   position: absolute;
   bottom: 522px;
   left: 3px;
}

.line3 {
   border: 0.05px solid black;
   width: 295px;
   position: absolute;
   bottom: 588px;
   left: 3px;
}

.type {
   position: absolute;
   bottom: 200px;
   left: 65px;
}

.type2 {
   position: absolute;
   bottom: -6px;
   left: 0px;
}

.input5 {
   position: absolute;
   bottom: 500px;
   left: 50px;
   height: 70px;
   font-size: 20px;
   width: 300px;
}

.line4 {
   border: 0.05px solid black;
   width: 1510px;
   position: absolute;
   bottom: 430px;
   left: 3px;
}

.input6 {
   position: absolute;
   left: 680px;
   bottom: 450px;
   font-size: 30px;
}

.memo {
   position: absolute;
   bottom: -362px;
   width: 1510px;
   height: 200px;
   left: 0px;
   font-size:16px;
}

.input7 {
   position: absolute;
   left: 700px;
   bottom: 180px;
   font-size: 25px;
}

h1 {
   font-size: 60px;
   text-decoration: none;
   color: black;
}

a {
   text-decoration: none;
}

ul{

position: absolute;
bottom: 80px;
left:80px;

}
.button {
   position: absolute;
   bottom: -550px;
   left: 660px;
   width: 200px;
   height: 45px;
   font-weight: bold;
   font-size: 20px;
}
.line5 {
   border: 0.05px solid black;
   height: 346px;
   position: absolute;
   bottom: 592px;
   left: -4px;
}
.line6{
   border: 0.05px solid black;
   height: 346px;
   position: absolute;
   bottom: 592px;
   left: 298px;

}
.jiwon{
    position: absolute;
     bottom: 800px;
   left: -280px;
   
   font-size:50px;
   color:black;
    text-decoration-line: underline;
   

}

.jiwon1{
    position: absolute;
     bottom: 400px;
   left: -280px;
   display:block;
   font-size:50px;
   color:gray;
   text-decoration:none;
    border-top-left-radius:20px;
      border-bottom-left-radius:20px;
       border-top-right-radius:20px;
       border-bottom-right-radius:20px;
       text-decoration-line: underline;
       }
       .jiwon1:hover{
     color: black;
   


}
</style>

<script type="text/javascript">

function itemsubmit(){
	
	var formData = new FormData();
	formData.append('itemimg',$("input[name=img1]")[0].files[0]); //formData변수에 이미지정보저장  	
	//formdata 객체에는 이미지에대한 데이터가 들어가있다.
	
	//resources/upload 폴더에 이미지 업로드시키는 부분
	$.ajax({
		url:"${root}audition/uploadimg",
		type:"post",
		data: formData,
		processData:false,
		contentType:false,
		success:function(data){
			
			
			var id = $("#id").val();
			var JIWON = $("#JIWON").val();
			var NAME= $("#NAME").val();
			var PONE=$("#PONE").val();
			var ADDRESS = $("#ADDRESS").val();		
			var EMAIL = $("#EMAIL").val();
			var HEELO = $("#HEELO").val();
			var img1 = data;
			
			//데이터베이스에 item insert 시키는부분
			$.ajax({
				url:"${root}audition/guide2",
				type:"post",
				data:{"JIWON":JIWON,
					  "NAME":NAME,
					  "PONE":PONE,
					  "ADDRESS":ADDRESS,
					  "EMAIL":EMAIL,
					  "HEELO":HEELO,
					  "img1":img1,
					  "id":id
					  }, 
				success:function(){
					location.href="${root}maincontroller/guidedo?msg=지원 완료되었습니다.";
				},
				error:function(){
					alert("erorr");	
				}
				
			});
		},
		error:function(){
			alert("실패");
		}
	});
}

</script>
<body>
   <wrap width="1920px" height="2100px">

   <table width="1920px" height="200px">
      <td width="200px"><a href="${root}"><img src="${root}resources/img/logo.png"
            alt="logo" width="200" height="200"></a></td>
      <td width="1720" height="200px" align="center"><a href="#"><h1>AUDITION</h1></td>
   </table>
   <table align="center" class="cla" width="1520" height="1200" border="2">
      <td>
         <h1 class="line1">
            2030<br> <br>AUDITION
         </h1>
         
         <hr class="line" style="border: solid 2px black;"> 
         <form method="post" action="${root}audition/guide2">
         <input type="hidden" id="id" name="id" value="${mem.id}">
         <input class="input" type="text" id="JIWON" name="JIWON" placeholder="지원분야:(랩,외모,노래)" />
          <input class="input1" type="text" id="NAME" name="NAME" placeholder="이름:" value="${mem.name}"  readonly="readonly"/>
          <input class="input2" type="text" id="PONE" name="PONE"  placeholder="핸드폰번호:" value="${mem.phone}"  readonly="readonly"/>
          <input class="input3" type="text" id="ADDRESS" name="ADDRESS" placeholder="주소:"  value="${mem.addr}" readonly="readonly"/>
          <input class="input4" type="text" id="EMAIL" name="EMAIL" placeholder="E-Mail:" value="${mem.email}" readonly="readonly"/>
          <img class="수지" src="${root}resources/guide11/mini.png" style="width: 400px;">
         <div class="file-upload preview-image">
         <textarea id="HEELO" name="HEELO" class="memo"></textarea>
          
         <input type="text" class="upload-name" value="" disabled="disabled">

          <!--    <input class="upload-name" type="file" id="input-file"
               class="upload-hidden">
               -->
                <input class="type" type='file' id="img1" name="img1"/> 
                <img class="type2" id="img"   src="#" alt="" width="300px" />
                <button type="button" class="button" onclick="itemsubmit();">지원하기</button> 
               
         </div>
         </form>
         
         <div class="line2"></div>
         <div class="line3"></div>
         <div class="line4"></div>
         <div class="line5"></div>
         <div class="line6"></div>
         <h2 class="input5">사진을 첨부해주세요</h2>
         <h2 class="input6">자기소개</h2>
         <h2 class="input7">유의사항</h2>
         <ul><li class="cc">사진은 필수 항목으로 반드시 첨부해야 하며 포토샵으로 보정 사진이나 얼굴의 일부가
            가려진 사진은 지원이 불가능합니다</li>
         <li class="dd">사진은 300*350px 규격으로 맟춰서 첨부 부탁드립니다</li>
         <li class="ee">당사의 사정에 따라 일정은 변경 될수 있습니다</li></ul>
   <a class="jiwon" href='https://naver.com' target='_blank' > 지원 하기 </a>
<a class="jiwon1" href='http://localhost:8080/kr/maincontroller/guide' target='_blank' > 지원 안내 </a>
      </td>




   </table>
   
     



           
        <script src="http://madalla.kr/js/jquery-1.8.3.min.js"></script> <script
            type="text/javascript">
               $(function() {
                  $("#img1").on('change', function() {
                     readURL(this);
                  });
               });
               function readURL(input) {
                  if (input.files && input.files[0]) {
                     var reader = new FileReader();
                     reader.onload = function(e) {
                        $("#img").attr('src', e.target.result);
                     }
                     reader.readAsDataURL(input.files[0]);
                  }
               }
               
               $(document).ready(function(){
           		if(${!empty msg}){
           			alert('${msg}');
           		}
           	});
            </script>


      </td>

   
   <table>
    

   </table>
   
   <!--  -->
   
   </wrap>
</body>
</html>