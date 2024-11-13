<%@page import="java.text.*" %>
<%@page import="java.util.*" %>
<%@page import="java.util.Date" %>
<%@ include file = "dog_count.jsp" %>

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
                        	<li><a href="spending.html">지출</a></li>
                            <li><a href="profit.html">수익</a></li>
                            <li><a href="dogs.html">멈머</a></li>
                            <li><a href="setting.html">설정</a></li>
                        </ul>
                     </li>
                 </ul>
            </div>
        </header>

        <%
			Date date = new Date();
			SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
			String strDate = simpleDate.format(date);
		%>
		TODAY: <%=strDate%>
		<br>
        <%
		  int DdayYear = 2024;
		  int DdayMonth = 12;
		  int DdayDate = 31;
		 
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
		<%=Dday%>
		<br>
		
		<%
			for(int i=0; i<dogs_count/4; i++){
				for(int j=0; j<4; j++){
					out.print("<table>");
					out.print("<tr>");
					out.print("<th>"+i+"</tr>");
					out.print("</tr>");
					out.print("</table>");
				}
			}
		%>

    
        <footer>
            <a href="https://www.instagram.com/dang_gurrr?igsh=MTl1a2d2YXBpYWNhYQ==">
                <img src="images/instagram.webp" width="20" height="20" >
            </a>
        </footer>
    </body>
    
    
</html>