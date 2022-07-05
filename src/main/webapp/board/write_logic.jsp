<%@page import="connector.DBConnector"%>
<%@page import="connector.MySqlConnector"%>
<%@page import="controller.BoardController"%>
<%@page import="model.BoardDTO"%>
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
	String title=request.getParameter("write_title");
	String content=request.getParameter("write_content");
	int writerId=((UserDTO)session.getAttribute("logIn")).getId();
	
	DBConnector connector=new MySqlConnector();
	BoardController boardController=new BoardController(connector);
	BoardDTO b=new BoardDTO();
	b.setTitle(title);
	b.setContent(content);
	b.setWriterId(writerId);
	int lastId=boardController.insert(b);
	response.sendRedirect("/board/selectOne.jsp?id="+lastId);
%>
</body>
</html>