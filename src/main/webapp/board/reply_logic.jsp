<%@page import="controller.ReplyController"%>
<%@page import="model.ReplyDTO"%>
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
	ReplyController replyController=new ReplyController(connector);
	ReplyDTO r=new ReplyDTO();
	
	int writerId=Integer.parseInt(request.getParameter("writerId"));
	int boardId=Integer.parseInt(request.getParameter("boardId"));
	String content=request.getParameter("update_content");
	r.setId(boardId);
	r.setWriterId(writerId);
	r.setContent(content);
	
	replyController.insert(r);
	
	
%>
</body>
</html>