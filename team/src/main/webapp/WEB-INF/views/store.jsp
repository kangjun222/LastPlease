<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}/"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/store.css"/>
    <link rel="stylesheet" href="${root}resources/css/reset.css"/>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <wrap>
        <header>
            <div id="header">
                <a href="${root}"><img id="logo" src="${root}resources/img/logo.png" alt="로고이미지"/></a>
                <img id="storelogo" src="${root}resources/img/store1.png" alt="스토어이미지"/>
                <div>
                    <ul>
                    	<c:if test="${empty mem }">
	                        <li>
	                            <a href="#">
	                            <i class="fa-regular fa-user">Login</i> 
	                           <!--  -->
	                            </a>
	                        </li>
	                        
	                        <li>
	                            <a href="#"><i class="fa-solid fa-cart-shopping">Belogin</i></a>
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
							
							<li>
								<a href="${root}member/gojoin">
									<i class="fa-solid fa-user">Mypage</i>
								</a>
							</li>
						</c:if>
						
						
					</li>
                    </ul>    
                </div>    
            </div>  
        </header>
        
        <section id="banner">
           
            <div id="bannerwrap">
                <div class="slidewrap">
                    <div class="slide" id="slide1">
                        <label for="button5"><i id="left" class="fa-solid fa-angle-left" ></i></label>
                        <label for="button2"><i id="right" class="fa-solid fa-angle-right"></i></label>
   						<a href="${root}Goodscontroller/gonewjins"><img src="${root}resources/img/newjeans.png" alt="뉴진스앨범"/></a>                    </div>

                    <div class="slide" id="slide2" style="opacity: 0.5;">
                        <label for="button1"><i id="left" class="fa-solid fa-angle-left" ></i></label>
                        <label for="button3"><i id="right" class="fa-solid fa-angle-right"></i></label>
                        <a href="${root}Goodscontroller/goiu"><img src="${root}resources/img/iu.png" alt="아이유앨범"></a>
                     
                    </div>

                    <div class="slide" id="slide3"  style="opacity: 0.5;">
                        <label for="button2"><i id="left" class="fa-solid fa-angle-left" ></i></label>
                        <label for="button4"><i id="right" class="fa-solid fa-angle-right"></i></label>
                        <a href="${root}Goodscontroller/goseventeen"><img src="${root}resources/img/st.png" alt="세븐틴앨범"/></a>
                    </div>

                    <div class="slide" id="slide4" style="opacity: 0.5;">
                        <label for="button3"><i id="left" class="fa-solid fa-angle-left" ></i></label>
                        <label for="button5"><i id="right" class="fa-solid fa-angle-right"></i></label>
                        <a href="${root}Goodscontroller/gokarina"><img src="${root}resources/img/karina.png" alt="카리나앨범"/></a>
                    </div>

                    <div class="slide" id="slide5" style="opacity: 0.5;">
                        <label for="button4"><i id="left" class="fa-solid fa-angle-left" ></i></label>
                         <label for="button1"><i id="right" class="fa-solid fa-angle-right"></i></label>
                         <a href="${root}Goodscontroller/goakmu"> <img src="${root}resources/img/akmualbum.png" alt="악뮤엘범"/></a>
                         
                    </div>
                    
                 </div>
                 
                 
            </div>
         
            <div id="btnwrap">
                <input type="radio" name="button" id="button1" class="btn" checked>
                <input type="radio" name="button" id="button2" class="btn">
                <input type="radio" name="button" id="button3" class="btn">
                <input type="radio" name="button" id="button4" class="btn">
                <input type="radio" name="button" id="button5" class="btn">
            </div>

            <img src="${root}resources/img/small.png" alt="작은띠">

        </section>

        <section id="banner2">
            <div id="elbumlogo">
                <img src="./img/eb.png" alt="">
            </div>
           
            <div id="allwrap">
                <div id="ebwrap1">
                    <div id="ebslide">
                   
                        <div id="elbumchart">
                            <div class="ebbox1" id="ebbox1">
                               <a href="#"><img src="${root}resources/img/e10.jpg" alt="드림앨범" class="ebimg" onmouseover="mouseon('1')" onmouseout="mouseout('1')"> 
                                    <div class="font">
                                        <ul>
                                            <li><b>Dream</b></li>
                                            <li><span>2022.11.07</span></li> 
                                
                                        </ul>
                                    </div>
                                </a>
                            </div>

                            <div class="ebbox1" id="ebbox2">
                                <a href="#"> <img src="${root}resources/img/e9.jpg" alt="세븐틴4앨범" class="ebimg" onmouseover="mouseon('2')" onmouseout="mouseout('2')"> 
                                <div class="font">
                                    <ul>
                                        <li><b>Seventeen 4th Album<br>'Face the Sun'</b></li>
                                        <li><span>2022.11.07</span></li>                                
                                    </ul>
                                </div>
                                </a>
                            </div>

                            <div class="ebbox1" id="ebbox3">
                                <a href="#"> <img src="${root}resources/img/e8.jpg" alt="에잇앨범" class="ebimg" onmouseover="mouseon('3')" onmouseout="mouseout('3')"> 
                                <div class="font">
                                    <ul>
                                        <li><b>에잇</b></li>
                                        <li><span>2022.05.06</span></li> 
                                        
                                    </ul>
                                </div>
                                </a>
                            </div>

                            <div class="ebbox1" id="ebbox4">
                                <a href="#"> <img src="${root}resources/img/ebsuzy.jpg" alt="수지잘자내몫까지" class="ebimg" onmouseover="mouseon('4')" onmouseout="mouseout('4')"> 
                                <div class="font">
                                    <ul>
                                        <li><b>잘자 내 몫까지(with이루마)</b></li>
                                        <li><span>2018.03.04</span></li> 
                                        
                                    </ul>
                                </div>
                                </a>
                            </div>
                        </div>

            <div id="elbumchart">
                <div class="ebbox1" id="ebbox5">
                    <a href="#"> <img src="${root}resources/img/e5.jpg" alt="스트로베리문앨범" class="ebimg" onmouseover="mouseon('5')" onmouseout="mouseout('5')"> 
                   <div class="font">
                    <ul>
                        <li><b>Strawberry Moon</b></li>
                        <li><span>2021.10.19</span></li> 
                        
                    </ul>
                   </div>
                   </a>
                </div>

                <div class="ebbox1" id="ebbox6">
                    <a href="#"><img src="${root}resources/img/eb14.jpg" alt="뉴진스1step" class="ebimg" onmouseover="mouseon('6')" onmouseout="mouseout('6')"> 
                     <div class="font">
                      <ul>
                          <li><b>New Jeans1stEP<br>'NewJeans'</b></li>
                          <li><span>2022.08.01</span></li> 
                          
                      </ul>
                     </div>
                     </a>
                </div>

                <div class="ebbox1" id="ebbox7">
                    <a href="#"> <img src="${root}resources/img/e11.jpg" alt="OMG앨범" class="ebimg" onmouseover="mouseon('7')" onmouseout="mouseout('7')"> 
                     <div class="font">
                      <ul>
                          <li><b>OMG</b></li>
                          <li><span>2023.01.02</span></li> 
                          
                      </ul>
                     </div>
                     </a>
                </div>

                <div class="ebbox1" id="ebbox8">
                    <a href="#"><img src="${root}resources/img/e4.jpg" alt="삐삐" class="ebimg" onmouseover="mouseon('8')" onmouseout="mouseout('8')"> 
                     <div class="font">
                      <ul>
                          <li><b>삐삐</b></li>
                          <li><span>2018.10.10</span></li> 
                          
                      </ul>
                     </div>
                     </a>
                </div>
            </div>
            </div>
        </div>
            <div id="ebwrap1">
                <div id="elbumchart">
                    <div class="ebbox1" id="ebbox9">
                        <a href="#"><img src="${root}resources/img/eb17.jpg" alt="뉴진스 getup " class="ebimg" onmouseover="mouseon('9')" onmouseout="mouseout('9')"> 
                       <div class="font">
                        <ul>
                            <li><b>Get Up</b></li>
                            <li><span>2023.07.21</span></li> 
                            
                        </ul>
                       </div>
                       </a>
                    </div>
    
                    <div class="ebbox1" id="ebbox10">
                        <a href="#"> <img src="${root}resources/img/eb16.jpg" alt="아이유러브폼" class="ebimg" onmouseover="mouseon('10')" onmouseout="mouseout('10')"> 
                         <div class="font">
                          <ul>
                              <li><b>Love Porm</b></li>
                              <li><span>2019.11.18</span></li> 
                              
                          </ul>
                         </div>
                         </a>
                    </div>
    
                    <div class="ebbox1" id="ebbox11">
                        <a href="#">  <img src="${root}resources/img/e7.jpg" alt="satelite" class="ebimg"onmouseover="mouseon('11')" onmouseout="mouseout('11')"> 
                         <div class="font">
                          <ul>
                              <li><b>Satelite</b></li>
                              <li><span>2022.02.17</span></li> 
                              
                          </ul>
                         </div>
                         </a>
                    </div>
    
                    <div class="ebbox1" id="ebbox12">
                        <a href="#"> <img src="${root}resources/img/e3.jpg" alt="아이유꽃갈피" class="ebimg"onmouseover="mouseon('12')" onmouseout="mouseout('12')"> 
                         <div class="font">
                          <ul>
                              <li><b>꽃갈피 둘</b></li>
                              <li><span>2017.09.22</span></li> 
                              
                          </ul>
                         </div>
                         </a>
                    </div>
                </div>
    
                <div id="elbumchart">
                    <div class="ebbox1" id="ebbox13">
                        <a href="#"> <img src="${root}resources/img/e1.jpg" alt="뉴진스zero" class="ebimg"onmouseover="mouseon('13')" onmouseout="mouseout('13')"> 
                       <div class="font">
                        <ul>
                            <li><b>Zero</b></li>
                            <li><span>2023.06.21</span></li> 
                            
                        </ul>
                       </div>
                       </a>
                    </div>
    
                    <div class="ebbox1" id="ebbox14">
                        <a href="#">  <img src="${root}resources/img/eb15.jpg" alt="세븐틴10미니앨범" class="ebimg"onmouseover="mouseon('14')" onmouseout="mouseout('14')"> 
                         <div class="font">
                          <ul>
                              <li><b>Seventeen 10th<br>Mini Album FML</b></li>
                              <li><span>2023.04.24</span></li> 
                              
                          </ul>
                         </div>
                         </a>
                    </div>
    
                    <div class="ebbox1" id="ebbox15">
                        <a href="#"> <img src="${root}resources/img/e6.jpg" alt="수지 Faces of Love" class="ebimg"onmouseover="mouseon('15')" onmouseout="mouseout('15')"> 
                         <div class="font">
                          <ul>
                              <li><b>Faces of Love</b></li>
                              <li><span>2018.01.29</span></li> 
                              
                          </ul>
                         </div>
                         </a>
                    </div>
    
                    <div class="ebbox1" id="ebbox16">
                        <a href="#"> <img src="${root}resources/img/e2.jpg" alt="Cape" class="ebimg"onmouseover="mouseon('16')" onmouseout="mouseout('16')"> 
                         <div class="font">
                          <ul>
                              <li><b>Cape</b></li>
                              <li><span>2022.01.08</span></li> 
                              
                          </ul>
                         </div>
                         </a>
                    </div>
                </div>

            </div>
            </div>
        </section>

        
        <div id="radiodiv">
            <input type="radio" name="ebradio" id="ebradio1" class="ebradio" checked>
            <input type="radio" name="ebradio" id="ebradio2" class="ebradio">
        </div>

        <section id="banner3">
           <div id="img2"><img src="${root}resources/img/2.png" alt="이벤트위에 짧은띠"></div> 
           <div id="eventlogo"> <img src="${root}resources/img/event.png" alt="이벤트로고"></div>

        <div id="allevwrap">
            <div class="evwrap1">
                    <div id="NewJeans">
                        <div class="evimg"><img src="${root}resources/img/evnjs.png" alt="뉴진스이벤트" width="580px" height="430px">
                            <div class="evfont">
                                <ul>
                                    <a href="#">  <li><b> &#128150 뉴진스 새 앨범 예약 판매 이벤트 &#128150</b></li></a>
                                </ul>
                            </div> <!-- evfont -->
                        </div>
                    </div> 

                    <div id="iudream">
                        <div class="evimg"><img src="${root}resources/img/evdream.png" alt="아이유드림이벤트" width="580px" height="620px">
                            <div class="evfont">
                                <ul>
                                    <a href="#">   <li><b> 아이유드림 시사회 영화쿠폰 2장🎫🎫</b></li></a>
                                </ul>
                            </div> <!-- evfont -->
                        </div>
                    </div> 
            </div> <!-- evwrap1 -->

            <div class="evwrap1">
                

                <div id="Seventeen">
                    <div class="evimg"><img src="${root}resources/img/evseven.png" alt="세븐틴이벤트" width="420px" height="640px">
                        <div class="evfont">
                            <ul>
                                <a href="#"><li><b>세븐틴 손오공 발매기념 사인회<br>&#128142(오프라인/비공개)&#128142</b></li></a>
                            </ul>
                        </div> <!-- evfont -->
                    </div> 
                </div>

                <div id="karina">
                    <div class="evimg"><img src="${root}resources/img/evpc.png" alt="카리나 이벤트" width="420px" height="420px">
                        <div class="evfont">
                            <ul>
                                <a href="#">   <li><b>카리나 굿즈&포카<br>★20명 나눔 이벤트★</b></li></a>
                            </ul>
                        </div> <!-- evfont -->
                    </div>
                </div> 
        </div> <!-- evwrap1 -->

        <div class="evwrap1">
            <div id="iuconcert">
                <div class="evimg"><img src="${root}resources/img/eviu.png" alt="아이유이벤트" width="520px" height="1150px">
                    <div class="evfont">
                        <ul>
                            <a href="#">    <li><b>아이유2024 단독 CONCERT&#128150</b></li></a>
                        </ul>
                    </div> <!-- evfont -->
                </div>
            </div> 

            
    </div> <!-- evwrap1 -->


        </div><!-- allevwrap -->


        </section>
    
    </wrap> 
</body>
<script src="${root}resources/javascript/store.js"></script>
</html>