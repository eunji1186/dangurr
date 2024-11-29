<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ include file="dbConn.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>🐶댕구르르🐶</title>
	</head>
	<body>
		<%
		
			Statement stmt = conn.createStatement();
			String SQL = "SELECT * FROM dog";
			ResultSet rs = stmt.executeQuery(SQL);
			
			rs.close();
			stmt.close();
		%>	
	</body>
</html>