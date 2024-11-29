<!-- 수익내역  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <title>🐶댕구르르🐶</title>
        <link rel="stylesheet" href="css/profit.css"/>
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
		
		<h1> 수익 목록 </h1>
		
		<table>
			<thead>
				<tr>
					<th> 날짜 </th>
					<th> 항목 </th>
					<th> 금액 </th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<th scope="row"> 2024-11-28 </th>
					<td> 칸쵸 감자 쇼 </td>
					<td> 500,000 </td>
				</tr>
				
				<tr>
					<th scope="row"> 2024-11-28 </th>
					<td> 호시 학학 쇼 </td>
					<td> 500,000 </td>
				</tr>
			</tbody>
		</table>

        <%@ include file="footer.jsp" %>
    </body>
</html>