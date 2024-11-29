<!-- 로그인페이지(첫화면) -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <title>🐶댕구르르🐶</title>

        <link rel="stylesheet" href="css/login.css"/>
        
    </head>
 <body>
        <header>
            <div class="innerHeader" style="text-align: center;">
                <h1 class="logo">
                    <a href="#">
                        <img src="images/dangurr.jpeg" width="200" height="200" >
                    </a>
                </h1>
            </div>
        </header>

        <div class="login-wrapper">
            <h2>로그인</h2>

            <form method="post" action="loginAction.jsp" id="login-form" name="login-form" onsubmit="return checkFun()">
                <input type="text" name="id" id="id" placeholder="id">
                <input type="password" name="password" id="password" placeholder="password">
                <input type="submit" value="로그인">
            </form>
            
        </div>

        <%@include file ="footer.jsp" %>
    </body>
</html>