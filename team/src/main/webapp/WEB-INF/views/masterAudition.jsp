<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/css/masterAudition.css"/>
     <link rel="stylesheet" href="${root}resources/css/reset.css"/>
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>

<script type="text/javascript">
	function pass(data , id){
		
		$.ajax({
			url:"${root}audition/pass",
			type:"get",
			data:{
				"pass":data,
				"id":id		
			},
			success:function(msg){
				alert(msg + ' 처리 완료하였습니다.');
			},
			error:function(){
				alert("passError");	
			}
		});
	}
</script>
<body>
</head>
<body>
    <wrap>
        <div id="header">
            <div id="logo">
                <img src="${root}resources/img/logo.png" alt="로고이미지"  width="200px"
                    height="200px">
            </div>
            
            <div>
                <a href="#"><h1 class="AUD">AUDITION</h1></a>   
            </div>

            <div id="headermenu">
                <ul>               						
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
                </ul>
            </div>

        </div>

        <section>
        <center>    
            <table class="table table-bordered" style="width: 800px">
                <thead>
                    <tr > 
                    	<th class="text-center">아이디</th>
                        <th class="text-center">이름</th>
                        <th class="text-center">분야</th>
                        <th class="text-center">합격버튼</th>
                    </tr> 
                </thead>

                <tbody>
                	<c:forEach items="${auditionlist}"  var="audition">
                		<tr>
                			
                			<td class="text-center"><a href="${root}audition/detailAudition?id=${audition.id}">${audition.id}</a></td>               			
                			<td class="text-center">${audition.NAME}</td>
                			<td class="text-center">${audition.JIWON}</td>
                			<td class="text-center">                				
	                        	<a class="btn btn-primary" href="javascript:pass('합격','${audition.id}');">합격</a>
	                        	<a class="btn btn-warning" href="javascript:pass('불합격','${audition.id}');">불합격</a>                  
                			</td>
                		</tr>
                	</c:forEach>
                `
                </tbody>
            </table>
        </center>    
        </section>
    </wrap>

</body>
</html>