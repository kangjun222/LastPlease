<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/join.css"/>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="../resources/javascript/join.js" charset="utf-8"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
   
   <script type="text/javascript">
   		
   
   		function checkName(){
			var blank_pattern = /^\s+|\s+$/g;
   			var name = $("#name").val();
   			
   			if(name.replace(blank_pattern, '' ) == "" ){
   			   $("#namecheck").html("<b>이름을입력해주세요<b>");
   			   $("#name").focus();
   			   return false;
   			}
   			else{
   				$("#namecheck").html("");
   				return true;
   			}
   		}
   
   		function checkEmail(){
   			
   			var blank_pattern = /^\s+|\s+$/g;
   			var email = $("#email").val();
   			
   			if(email.replace(blank_pattern, '' ) == "" ){
    			   $("#emailcheck").html("<b>이메일을입력해주세요<b>");
    			   $("#email").focus();
    			   return false;
    		}
    		 
   			

   			const regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
   			
   			if(!regExp.test(email)){
   				$("#emailcheck").html("<b style='color:red'>이메일형식이맞지않습니다.</b><br/>");
   				$("#email").focus();
   				return false;
   			}
   			
   			else{
   				$("#emailcheck").html("");
   				return true;
   			}
   			
   		}	
   		
   		
   		function checkphone(){
   			var blank_pattern = /^\s+|\s+$/g;
   			var phone = $("#phone").val();
   			

   			if(phone.replace(blank_pattern, '' ) == "" ){
    			   $("#phonecheck").html("<b>전화번호를 입력해 주세요<b>");
    			   $("#phone").focus();
    			   return false;
    		}
   			
   			var phoneRule = /^(01[016789]{1})[0-9]{3,4}[0-9]{4}$/;
   			if(!phoneRule.test(phone)){
   				$("#phonecheck").html("<b style='color:red'>전화번호 형식을 확인해주세요</b><br>");
   				$("#phone").focus();
   				return false;
   			}
   			else{
   				$("#phonecheck").html("");
   				return true;
   			}
   		}
   
 
   		
   		function checkpwd(){  			
   			var pwd = $("#pwd").val();
   			var pwd1 = $("#pwd1").val();
   			
   			/* var blank_pattern = /^\s+|\s+$/g;
  
   			if(pwd.replace(blank_pattern, '' ) == "" ){
    			   $("#pwdcheckresult1").html("<b>비밀번호를입력해주세요<b>");
    			   return;
    			} */
   			
    		if(pwd == ''){
    			$("#pwdcheckresult1").html("비밀번호를 입력해주세요");
    			return false;
    		}	
    		
    		else{
    			$("#pwdcheckresult1").html("");
    			if(pwd != '' && pwd1!=''){
       				if(pwd != pwd1){
       					$("#pwdcheckresult").html("<b style='color:red'>비밀번호가일치하지않습니다.</b>");
       					return false;
       	   			}
       				else{
       					$("#pwdcheckresult").html("");
       					return true;
       				}
       			}
    		}
    			
   			
				
   			   			
   		}
   		
   
   		function checkId(){   			
   		 			
   			var id = $("#id").val();
   			
   			var blank_pattern = /^\s+|\s+$/g;
   			
   			if(id.replace(blank_pattern, '' ) == "" ){
   			   $(".id_ok").html("<b>아이디를입력해주세요<b>");
   			   $("#id").focus();
   			   return false;
   			}
   			else{
   			 $(".id_ok").html("");
   			 	 /* return true; */
   			}
   			
   			
   			$.ajax({
   				url:"${root}member/checkId",
   				type:"get",
   				data:{"id":id},
   				success: function(data){
   					if(data == 0){  					
   						$(".id_ok").html("<b style='color:green';>사용가능한 아이디 입니다.</b>");
   						return true;
   					}
   					else if(data == 1){
   						$(".id_ok").html("<b style='color:red'>이미 사용중인 아이디 입니다.</b>");
   						$("#id").focus();
   						return false;
   						
   					}
   					
   				},
   				error:function(){
   					alert('에러');	
   				}				
   			});
   		}
   		
   		function submitCheck(){
   			if(checkName()!= false
   					&& checkId()!= false  
   					&& checkpwd()!= false 
   					&& checkEmail()!= false  
   					&& checkphone()!= false   
   					
   					){
   				
   				var member = $("#memberjoin").serialize();
   				$.ajax({
   					url:"${root}member/join",
   					type:"post",
   					data:member,
   					dataType:"json",
   					success:function(result){
   						location.href='${root}?msg=회원가입이완료되었습니다.'
   					},
   					error:function(){
   						alert("회원가입 형식을 다시 확인해주세요error");
   					}
   				});
   					
   			}
   			
   			else{
   				alert('회원가입 형식을 다시 확인해주세요');
   				return false;
   			}
   		}
   </script>
</head>
<body>


    
    <div id="wrap">
                <div id="container">
                    <header>
                        <a href="${root}" class="logo">
                            <img src="${root}resources/img/logo.png">
                        </a>
                        <h2 class="logo_txt">JOIN US</h2>
                    </header>
                    
                    <div class="join_notice">
                        <p>아래 항목을 모두 필수로 입력해주세요.</p>
                    </div>
               
               
                     <form id="memberjoin" method="post" action="${root}member/join" >
                        <label for="name">이름</label><br/>
                        <input type="text" id="name" name="name" placeholder="이름 입력" onblur="checkName();"/><br/>
                        <div><span id="namecheck"></span></div>
                        </br>
                        <!-- <label for="id">아이디</label><br/> -->
                        <label for="address2">아이디</label><br/>
                        <input type="text" id="id" name="id" onblur="checkId();" placeholder="아이디 입력" /><br/>
                		
                		<div>
                			<span class="id_ok"></span>
                		</div>
                        
                      	</br>
                   
                        <label for="pwd">비밀번호</label><br/>
                        <input type="password" id="pwd" name="pwd" onblur="checkpwd();" placeholder="숫자, 영문, 특수문자 포함 8자 이상" /><br/>
                        <div>
                        	  <span id="pwdcheckresult1"></span>
                        </div>
                        <br>
                        
                        
                        <label for="pwd1">비밀번호 확인</label><br/>
                        <input type="password" id="pwd1" onblur="checkpwd();"  placeholder="숫자, 영문, 특수문자 포함 8자 이상" />
                        <br/>
                       
                        <div>
                        	  <b id="pwdcheckresult"></b>
                        </div>
                      
                        
                                    
                        
                        <label for="birth">생년월일</label>
                        <div id="birthwrap">
                        <select name="year">            
                            <option  id="birth" value="1990-">1990</option>
                            <option id="birth" value="1991-">1991</option>
                            <option id="birth" value="1992-">1992</option>
                            <option id="birth" value="1993-">1993</option>
                            <option id="birth" value="1994-">1994</option>
                            <option id="birth" value="1995-">1995</option>
                            <option id="birth" value="1996-">1996</option>
                            <option id="birth" value="1997-">1997</option>
                            <option id="birth" value="1998-">1998</option>
                            <option id="birth" value="1999-">1999</option>
                            <option id="birth" value="2000-">2000</option>
                            <option id="birth" value="2001-">2001</option>
                            <option id="birth" value="2002-">2002</option>
                            <option id="birth" value="2003-">2003</option>
                            <option id="birth" value="2004-">2004</option>
                            <option id="birth" value="2005-">2005</option>
                            <option id="birth" value="2006-">2006</option>
                            <option id="birth" value="2007-">2007</option>
                            <option id="birth" value="2008-">2008</option>
                            <option id="birth" value="2009-">2009</option>
                            <option id="birth" value="2010-">2010</option>
                            <option id="birth" value="2011-">2011</option>
                            <option id="birth" value="2012-">2012</option>
                            <option id="birth" value="2013-">2013</option>
                            <option id="birth" value="2014-">2014</option>
                            <option id="birth" value="2015-">2015</option>
                        </select> 
                        
                        <select name="month" id="monthselect" onchange="change();">
                            <option value="01-">1월</option>
                            <option value="02-">2월</option>
                            <option value="03-">3월</option>
                            <option value="04-">4월</option>
                            <option value="05-">5월</option>
                            <option value="06-">6월</option>
                            <option value="07-">7월</option>
                            <option value="08-">8월</option>
                            <option value="09-">9월</option>
                            <option value="10-">10월</option>
                            <option value="11-">11월</option>
                            <option value="12-">12월</option>    
                        </select>
        
                        <select name="day" id="dayselect">
                           <option value='01'>1일</option>
					       <option value='02'>2일</option>
					       <option value='03'>3일</option>
					       <option value='04'>4일</option>
					       <option value='05'>5일</option>
					       <option value='06'>6일</option>
					       <option value='07'>7일</option>
					       <option value='08'>8일</option>
					       <option value='09'>9일</option>
					       <option value='10'>10일</option>
					       <option value='11'>11일</option>
					       <option value='12'>12일</option>
					       <option value='13'>13일</option>
					       <option value='14'>14일</option>
					       <option value='15'>15일</option>
					       <option value='16'>16일</option>
					       <option value='17'>17일</option>
					       <option value='18'>18일</option>
					       <option value='19'>19일</option>
					       <option value='20'>20일</option>
					       <option value='21'>21일</option>
					       <option value='22'>22일</option>
					       <option value='23'>23일</option>
					       <option value='24'>24일</option>
					       <option value='25'>25일</option>
					       <option value='26'>26일</option>
					       <option value='27'>27일</option>
					       <option value='28'>28일</option>
					       <option value='29'>29일</option>
					       <option value='30'>30일</option>
					       <option value='31'>31일</option>                       
        				 </select>                 
                        </div>
                    </br>
                        <label for="gender">성별</label><br/>
                        <div id="genderwrap">
                            <select name="gender" id="gender">
                                <option value="mail">male</option>
                                <option value="femail">female</option>
                            </select>
                        </div>             
                        
                    </br>
                        <label for="eamil">이메일</label>
                        <input type="email" id="email" name="email" placeholder="이메일을입력해주세요" onblur="checkEmail();"/><br/><div><b  id="nicknamecheckresult"></b></div>
        				<div><span id="emailcheck"></span></div>
        				</br>
                        <label for="phone">핸드폰번호</label><br/>
                        <input type="text" id="phone" name="phone" placeholder="숫자만 입력해주세요" onblur="checkphone();"/><br/>
                        <div><span id="phonecheck"></span></div>
                        
                        <label for="addr">주소</label><br/>                        
                        <input id="member_post"  type="text" placeholder="Zip Code" readonly onclick="findAddr()">
						<input id="member_addr" name="adr" type="text" placeholder="Address" readonly> <br>
						<input type="text" name="adrdetail" placeholder="Detailed Address">
                        <button type="button" onclick="submitCheck();" class ="btn_join">회원가입</button>
                        
                        
                     </form>
                </div>
            </div>
      
    
    
    <script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
         
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}


</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>