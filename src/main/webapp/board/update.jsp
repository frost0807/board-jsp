<%@page import="model.UserDTO"%>
<%@page import="connector.DBConnector"%>
<%@page import="connector.MySqlConnector"%>
<%@page import="model.BoardDTO"%>
<%@page import="controller.BoardController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section{margin:0 500px 0 500px;}
form{display:flex;flex-direction: column;}
#update_title{margin:100px 5px 5px 5px;height:30px;}
#update_content{margin:5px;height:500px;}
#update_submit{margin:5px;height:30px;}
</style>
</head>
<body>
<%
	DBConnector connector=new MySqlConnector();
	BoardController boardController=new BoardController(connector);
	BoardDTO b=boardController.selectOne(Integer.parseInt(request.getParameter("boardId")));
	
	UserDTO logIn=(UserDTO)session.getAttribute("logIn");
	
	if(b==null||b.getWriterId()!=logIn.getId()){
		response.sendRedirect("/board/list.jsp");
	} else {
%>
<section>
	<form action="/board/update_logic.jsp" method="post">
		<input id=update_title type="text" name=update_title value=<%=b.getTitle() %>>
		<textarea id=update_content name=update_content><%=b.getContent() %></textarea>
		<input type="hidden" name="boardId" value="<%=b.getId() %>">
		<input id=update_submit type="submit" value="수정하기">
	</form>
</section>
<%
	}
%>
</body>
</html>