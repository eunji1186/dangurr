<!-- 강아지 상세 정보 리스트  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="dbConn.jsp" %>
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
        
        <form method="post" action="update_dogs.jsp" id="update">
        	<table width="1500" border="1" style="text-align: center;">
				<tr>
					<th> 동물 등록 번호 </th>
					<th> 보호자 이름 </th>
					<th> 강아지 이름 </th>
					<th> 종 </th>
					<th> 색깔 </th>
					<th> 생년월일 </th>
					<th> 성별 </th>
					<th> 중성화 여부 </th>
					<th> 몸무게 </th>
					<th> 인식칩 </th>
					<th> 접종 </th>
					<th> 알레르기 유무 </th>
					<th> 기타사항 </th>
					<th> 잔여 이용권 </th>
					<th> 출석 횟수 </th>
					<th> 보호자 연락처 </th>
					<th> 보호자 주소 </th>
					
				</tr>
				
				<%
					ResultSet rss = null;
					Statement stmtt = null;
					
					try{
						String sql="SELECT * FROM dog, protector WHERE dog.protector_name=protector.protector_name";
						stmtt = conn.createStatement();
						rss = stmtt.executeQuery(sql);
						
						while(rss.next()){
							String serial_number = rss.getString("serial_number");
							String protector_name = rss.getString("protector_name");
							String dog_name = rss.getString("dog_name");
							String species = rss.getString("species");
							String color = rss.getString("color");
							String birth = rss.getString("birth");
							String gender = rss.getString("gender");
							Boolean fixing = rss.getBoolean("fixing");
							float weight = rss.getFloat("weight");
							Boolean chip = rss.getBoolean("chip");
							Boolean vaccin = rss.getBoolean("vaccin");
							String allergic = rss.getString("allergic");
							String etc = rss.getString("etc");
							int ticket = rss.getInt("ticket");
							int attend = rss.getInt("attend");
							String phone = rss.getString("phone");
							String address = rss.getString("address");						
				%>
					
						<tr>
							<td><%=serial_number %></td>
							<td><%=protector_name %></td>
							<td><%=dog_name %></td>
							<td><%=species %></td>
							<td><%=color %></td>
							<td><%=birth %></td>
							<td><%=gender %></td>
							<td><%=fixing %></td>
							<td><%=weight %></td>
							<td><%=chip %></td>
							<td><%=vaccin %></td>
							<td><%=allergic %></td>
							<td><%=etc %></td>
							<td><%=ticket %></td>
							<td><%=attend %></td>
							<td><%=phone %></td>
							<td><%=address %></td>
							
							<td><button class="fix" type="button" onclick="location.href='update_dogs.jsp'"> 수정 </button>
						</tr>
					
  
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
			</table>
		</form>

        <%@ include file="footer.jsp" %>
    </body>
</html>