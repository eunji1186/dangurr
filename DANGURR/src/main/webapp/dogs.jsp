<!-- 강아지 상세 정보 리스트  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <title>🐶댕구르르🐶</title>
        <link rel="stylesheet" href="css/dogs.css"/>
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
        <table>
				<tr>
					<th> 동물 등록 번호 </th>
					<th> 강아지 이름 </th>
					
				</tr>
				
				<%
					ResultSet rss = null;
					Statement stmtt = null;
					
					try{
						String sql="SELECT serial_number, dog_name FROM dog";
						stmtt = conn.createStatement();
						rss = stmtt.executeQuery(sql);
						
						while(rss.next()){
							String serial_number = rss.getString("serial_number");
							String dog_name = rss.getString("dog_name");
						
				%>
				
				
					<tr>
						<td><%=serial_number %></td>
						<td><%=dog_name %></td>
		
						<td><input type="submit" id="fix" value=" 수정 "></td>
						<td><input type="button" id="detail" value=" 상세 정보 " onclick="location.href='dogs_detail.jsp'"></td>
					</tr>
				</table>
  
				<%
				
				
						}
					} catch(SQLException ex){
						out.println("dog 테이블 호출 실패 ");
						out.println("SQLException: " + ex.getMessage());
					} finally{
						if(rss != null) rss.close();
						if(stmtt != null) stmtt.close();
						if(conn != null) conn.close();
					}
				%>

        <%@ include file="footer.jsp" %>
    </body>
</html>