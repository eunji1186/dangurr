<!-- 설정  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <title>🐶댕구르르🐶</title>
        <link rel="stylesheet" href="css/main.css"/>
    </head>
 <body>
        <header>
            <div class="innerHeader" style="text-align: center;">
                <h1 class="logo">
                    <a href="#">
                        <img src="images/dangurr.jpeg" width="200" height="200" >
                    </a>
                </h1>
                
                <ul class="gnb">
                	<li>
                    	<ul class="inner">
                        	<li><a href="spending.html"> 지출 </a></li>
                            <li><a href="profit.html"> 수익 </a></li>
                            <li><a href="dogs.html"> 원생 </a></li>
                            <li><a href="setting.html"> 설정 </a></li>
                        </ul>
                     </li>
                 </ul>
            </div>
        </header>
        <br><br>
        <div class="settingHeader" style="text-align: center;">
		    <ul>
		        <li><a href="singup.jsp"> 회원등록 </a></li>
	        	<li><a href="update_dogs.jsp"> 정보수정 </a></li>
	        </ul>		
        </div>
        
        <%@ include file="footer.jsp" %>
    </body>
</html>