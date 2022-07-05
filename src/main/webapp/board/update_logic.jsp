<%@page import="model.BoardDTO"%>
<%@page import="controller.BoardController"%>
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
	DBConnector connector=new MySqlConnector();
	BoardController boardController=new BoardController(connector);
	BoardDTO b=boardController.selectOne(Integer.parseInt(request.getParameter("boardId")));
	
	String title=request.getParameter("update_title");
	String content=request.getParameter("update_content");
	b.setTitle(title);
	b.setContent(content);
	
	boardController.udpate(b);
	response.sendRedirect("/board/selectOne.jsp?id="+b.getId());
%>
</body>
</html>