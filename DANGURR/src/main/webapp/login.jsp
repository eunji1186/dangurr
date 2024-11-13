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

        <div class="login-wrapper" style="text-align: center;">
            
            <h2>로그인</h2>

            <form method="post" action="main.jsp" id="login-form">
                <input type="text" name="userId" placeholder="id">
                <input type="password" name="userPwd" placeholder="password">
                <input type="submit" value="로그인">
            </form>

            
        </div>

        <footer>
            <a href="https://www.instagram.com/dang_gurrr?igsh=MTl1a2d2YXBpYWNhYQ==">
                <img src="images/instagram.webp" width="20" height="20" >
            </a>
        </footer>
    </body>
</html>