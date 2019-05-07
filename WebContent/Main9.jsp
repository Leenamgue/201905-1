<%@page import="java.util.ArrayList"%>
<%@page import="com.java0503.사용자"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<사용자> 사용자목록 = new ArrayList<사용자>();
	
	// 사용자 입력
	String 이름 = request.getParameter("이름");
	사용자목록.add(new 사용자(이름, 1, 2, 3));
	
	
	// 사용자 검색
	for(int i = 0; i < 사용자목록.size(); i++){
		response.getWriter().print(사용자목록.get(i).get이름());
	}
%>
</body>
</html>