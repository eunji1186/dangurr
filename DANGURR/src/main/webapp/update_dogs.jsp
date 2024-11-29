<!-- 강아지 상세 정보 수정 -->

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
				
        <h4> <%=dog_name %>(<%=serial_number %>) 수정 </h4>
        <ul>
	        <li> 동물 등록 번호: <%=serial_number %></li>
			<li> 보호자 이름: <%=protector_name %></li>
			<li> 강아지 이름: <%=dog_name %> </li>
			<li> 종: <%=species %> </li>
			<li> 색깔: <%=color %> </li>
			<li> 생년월일: <%=birth %> </li>
			<li> 성별: <%=gender %> </li>
			<li> 중성화 여부: <%=fixing %> </li>
			<li> 몸무게: <%=weight %> </li>
			<li> 인식칩: <%=chip %> </li>
			<li> 접종: <%=vaccin %></li>
			<li> 알레르기 유무: <%=allergic %> </li>
			<li> 기타사항: <%=etc %> </li>
			<li> 잔여 이용권: <%=ticket %> </li>
			<li> 출석 횟수: <%=attend %> </li>
			<li> 보호자 연락처: <%=phone %> </li>
			<li> 보호자 주소: <%=address %> </li>
        </ul>
		
		<button type="button" class="fix" onclick="getSerialNumber()"> 수정 </button>
		<button type="button" class="delete" onclick="getSerialNumber()"> 삭제 </button>
<!--   https://youngjinmo.github.io/2021/06/js-get-text-from-table/#google_vignette -->
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