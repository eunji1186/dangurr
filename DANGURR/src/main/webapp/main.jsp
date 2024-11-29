<!-- 로그인하고 바로 보이는 화면(강아지 리스트)  -->

<%@page import="java.text.*" %>
<%@page import="java.util.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

		<div class="today">
	        <%
				Date date = new Date();
				SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
				String strDate = simpleDate.format(date);
			%>
			<h4>TODAY: <%=strDate%></h4>
		</div>
		<br>
		<div class="payday">
	        <%
	          
			  int DdayYear = 2024;
			  int DdayMonth = 12;
			  int DdayDate = 31;
			 	//* * * 15 * * *
			  Calendar currentCalendar = Calendar.getInstance();
			  Calendar cal = Calendar.getInstance();
			
			  int curYear =currentCalendar.get(Calendar.YEAR);
			  int curMonth =currentCalendar.get(Calendar.MONTH)+1;
			  int curDate =currentCalendar.get(Calendar.DATE);
			  int nTotalDate1 = 0, nTotalDate2 = 0, nDiffOfYear = 0, nDiffOfDay = 0;
			  
			  if(DdayYear > curYear){  
			    for(int i=curYear; i<DdayYear; i++){
			      cal.set(i, 12, 0); // 2010, 12, 0
			      nDiffOfYear += cal.get(Calendar.DAY_OF_YEAR);
			    }
			    nTotalDate1 += nDiffOfYear;
			  }else if(DdayYear < curYear){
			    for(int i=DdayYear; i<curYear; i++){
			      cal.set(i, 12, 0);
			      nDiffOfYear += cal.get(Calendar.DAY_OF_YEAR);
			    }
			    nTotalDate2 += nDiffOfYear; 
			  }
			  
			  
			  cal.set(DdayYear, DdayMonth-1, DdayDate);
			  nDiffOfDay = cal.get(Calendar.DAY_OF_YEAR);
			  nTotalDate1 += nDiffOfDay;
			  
			  cal.set(curYear, curMonth-1, curDate);
			  nDiffOfDay = cal.get(Calendar.DAY_OF_YEAR);
			  nTotalDate2 += nDiffOfDay;
			 
			  String Dday = "월급날까지 " + (nTotalDate1 - nTotalDate2) + "일! ";
			  
			%>
			<h4><%=Dday%></h4>
		</div>
		<br><br>
		
		<div class="dogList">
			<%@ include file="dog_count.jsp" %>
			<h1> 원생 현황 </h1>
			<br>
			<table>
				<thead>
					<tr>
						<th> 동물 등록 번호 </th>
						<th> 강아지 이름 </th>
						<th> 출석 횟수 </th>
						<th> 남은 이용권 </th>
					</tr>
				</thead>
				<%
					ResultSet rss = null;
					Statement stmtt = null;
					
					try{
						String sql="SELECT serial_number, dog_name, attend, ticket FROM dog";
						stmtt = conn.createStatement();
						rss = stmtt.executeQuery(sql);
						
						while(rss.next()){
							String serial_number = rss.getString("serial_number");
							String dog_name = rss.getString("dog_name");
							int attend = rss.getInt("attend");
							int ticket = rss.getInt("ticket");
						
				%>
					<tbody id=serial_number>
						<tr>
							<td><%=serial_number %></td>
							<td><%=dog_name %></td>
							<td><%=attend %></td>
							<td><%=ticket %></td>
							<form method="post" action="attend_ticket.jsp" id="attend">
								<td><input type="submit" id="attend" value=" 출석 " name="<%=serial_number %>"></td>
							</form>
							<td><input type="submit" id="detail" onclick="location.href='dogs_detail.jsp'" value=" 상세보기 "></td>
						</tr>
					</tbody>
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
    	</div>
    	
        <%@include file ="footer.jsp" %>
    </body> 
</html>