<%@page import="model.UserDTO"%>
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
	session.setAttribute("logIn", null);
	UserDTO u=(UserDTO)session.getAttribute("logIn");
	if(u==null){
%>
<p>로그아웃 되었습니다.</p>
<%
response.sendRedirect("/index.jsp");
}
%>
</body>
</html>