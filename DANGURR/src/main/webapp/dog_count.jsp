<!-- 강아지 수 구하기 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>

<%
	Statement stmt = null;
	ResultSet rs = null;
	int dogs_count = 0;

	try{
		String query = "SELECT COUNT(*) FROM dog";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()){
			dogs_count = rs.getInt(1);
		}
	} catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally{
		if(rs != null) try{rs.close();} catch(SQLException ex){}
		if(stmt != null) try{stmt.close();} catch(SQLException ex){}
		if(conn != null) try{conn.close();} catch(SQLException ex){}
		
	}
%>
