<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>🐶댕구르르🐶</title>
	</head>
	<body>
		<%
			PrintWriter script = response.getWriter();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String SQL = "SELECT serial_number, attend, ticket FROM dog";
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			
			try{
				String serial_number = request.getParameter("serial_number");
				String attendParam = request.getParameter("attend");
				String ticketParam = request.getParameter("ticket");
				
				int attend = 0;
				int ticket = 1;
				
				if(attendParam!=null && !attendParam.trim().isEmpty()){
					try{
						attend = Integer.parseInt(attendParam);
					} catch(NumberFormatException e){
						script.println("<script>");
						script.println("alert('출석값이 잘못되었습니다. 확인해주세요. ')");
						script.println("location.href='dogs.jsp';");
						script.println("</script>");
						
						return;
					}
				}
				
				if(ticketParam!=null && !ticketParam.trim().isEmpty()){
					try{
						ticket = Integer.parseInt(ticketParam);
					} catch(NumberFormatException e){
						script.println("<script>");
						script.println("alert('이용권값이 잘못되었습니다. 확인해주세요. ')");
						script.println("location.href='dogs.jsp';");
						script.println("</script>");
						
						return;
					}
				}
				
				if (ticket == 0){
					script.println("<script>");
					script.println("alert('이용권이 더 없어요ㅠㅠ ')");
					script.println("location.href='dogs.jsp'");
					script.println("</script>");
					
					return;
				}
				
				if (attend==0 && ticket!=0){
					attend+=1;
					ticket-=1;
						
					SQL = "UPDATE dog SET attend=?, ticket=? WHERE serial_number=?";
					pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, attend);
					pstmt.setInt(2, ticket);
					pstmt.setString(3, serial_number);
					pstmt.executeUpdate();

					script.println("<script>");
					script.println("alert('첫출석!! ')");
					script.println("location.href='main.jsp'");
					script.println("</script>");	
				}
				
				else{
					attend+=1;
					ticket-=1;
					
					SQL = "UPDATE dog SET attend=?, ticket=? WHERE serial_number=?";
					pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, attend);
					pstmt.setInt(2, ticket);
					pstmt.setString(3, serial_number);
					pstmt.executeUpdate();
						
					script.println("<script>");
					script.println("alert('출석완료! ')");
					script.println("location.href='main.jsp'");
					script.println("</script>");
				}
			}catch(Exception e){
				e.printStackTrace();
				script.println("<script>");
				script.println("alert('서버 오류 발생. 한번 더 해보고 안되면 최은지한테 연락해주세요. ')");
				script.println("loaction.href='main.jsp");
				script.println("</script>");
			}
			
			rs.close();
			pstmt.close();
		%>	
	</body>
</html>