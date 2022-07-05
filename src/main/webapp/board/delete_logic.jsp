<%@page import="model.BoardDTO"%>
<%@page import="model.UserDTO"%>
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
	int boardId=Integer.parseInt(request.getParameter("boardId"));
	DBConnector connector=new MySqlConnector();
	BoardController boardController=new BoardController(connector);
	BoardDTO b=boardController.selectOne(boardId);
	UserDTO logIn=(UserDTO)session.getAttribute("logIn");
	
	if(b==null||logIn.getId()!=b.getWriterId()){
		response.sendRedirect("/board/selectOne.jsp?id="+boardId);
	} else{
		boardController.delete(boardId);
		response.sendRedirect("/board/list.jsp");
	}
	
%>
</body>
</html>