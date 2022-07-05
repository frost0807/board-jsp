<%@page import="model.UserDTO"%>
<%@page import="controller.UserController"%>
<%@page import="connector.MySqlConnector"%>
<%@page import="connector.DBConnector"%>
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
	String username=request.getParameter("signup_username");
	String password=request.getParameter("signup_password");
	String nickname=request.getParameter("signup_nickname");
	DBConnector connector=new MySqlConnector();
	
	UserController controller=new UserController(connector);
	
	UserDTO u=new UserDTO();
	
	u.setUsername(username);
	u.setPassword(password);
	u.setNickname(nickname);
	
	boolean success=controller.register(u);
	
	if(success) {
		session.setAttribute("errorMessage",null);
%>
<jsp:forward page="/index.jsp"/>
<%
	} else {
		session.setAttribute("errorMessage","중복된 아이디입니다.");
%>
<jsp:forward page="/member/register.jsp"/>
<%
	}
%>

</body>
</html>