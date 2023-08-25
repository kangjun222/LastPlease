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
   
</head>
<body>


    
    <div id="wrap">
                <div id="container">
                    <header>
                        <a href="#" class="logo">
                            <img src="${root}resources/img/logo.png">
                        </a>
                        <h2 class="logo_txt">JOIN US</h2>
                    </header>
                    
                    <div class="join_notice">
                        <p>아래 항목을 모두 필수로 입력해주세요.</p>
                    </div>
               
               
                     <form method="post" action="${root}member/join" >
                        <label for="name">이름</label><br/>
                        <input type="text" id="name" name="name" placeholder="이름 입력" /><br/>
                        
                        <label for="id">아이디</label><br/>
                        <input type="text" id="id" name="id" placeholder="아이디 입력" /><br/>
                        <div><b id="memIdCheck"></b></div>
                   
                        <label for="pwd">비밀번호</label><br/>
                        <input type="password" id="pwd" name="pwd" placeholder="숫자, 영문, 특수문자 포함 8자 이상" /><br/>
                           <b><div id=""></div></b>
                        
                        
                        <label for="pwd1">비밀번호 확인</label><br/>
                        <input type="pwd1" id="pwd1"  placeholder="숫자, 영문, 특수문자 포함 8자 이상" /><br/><div><b id="pwdcheckresult"></b></div>              
                        
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
                            
                        </select>
                        
                        </div>
                    </br>
                        <label for="gender">성별</label><br/>
                        <div id="genderwrap">
                            <select name="gender" id="gender">
                                <option value="mail">mail</option>
                                <option value="femail">cute</option>
                            </select>
                        </div>             
                        
                    </br>
                        <label for="eamil">이메일</label><br/>
                        <input type="email" id="email" name="email" placeholder="이메일을입력해주세요" onblur="checksubmit()"/><br/><div><b  id="nicknamecheckresult"></b></div>
        
                        <label for="phone">핸드폰번호</label><br/>
                        <input type="text" id="phone" name="phone" placeholder="숫자만 입력해주세요" onblur="checksubmit()"/><br/>
                        
                        <label for="addr">주소</label><br/>                        
                        <input id="member_post"  type="text" placeholder="Zip Code" readonly onclick="findAddr()">
						<input id="member_addr" name="adr" type="text" placeholder="Address" readonly> <br>
						<input type="text" name="adrdetail" placeholder="Detailed Address">
                        <button type="submit" class ="btn_join">회원가입</button>
                        
                        
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