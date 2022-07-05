<%@page import="model.UserDTO"%>
<%@page import="controller.UserController"%>
<%@page import="connector.MySqlConnector"%>
<%@page import="controller.ReplyController"%>
<%@page import="connector.DBConnector"%>
<%@page import="model.ReplyDTO"%>
<%@page import="java.util.ArrayList"%>
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
	int boardId=Integer.parseInt(request.getParameter("id"));
	DBConnector connector=new MySqlConnector();
	ReplyController replyController=new ReplyController(connector);
	UserController userController=new UserController(connector);
	
	ArrayList<ReplyDTO> list=replyController.selectAll(boardId);
	UserDTO logIn=(UserDTO)session.getAttribute("logIn");
	%>
	<table>
	<%
	if(list.isEmpty()!=true){
		for(ReplyDTO r:list){
			String nickname=userController.selectOne(r.getWriterId()).getNickname();
			%>
			<tr>
				<td><%=nickname%></td>
				<%
				if(logIn.getId()==r.getWriterId()){
					%>
					<td>
					&emsp;&emsp;&emsp;&emsp;
					<button onclick="location.href='/reply/delete.jsp?boardId=<%=r.getBoardId()%>'">삭제</button>
					<button onclick="location.href='/reply/update.jsp?boardId=<%=r.getBoardId()%>'">수정</button>
					</td>
					<%
				}
				%>
			</tr>
			<tr>
				<td><%=r.getContent() %></td>
			</tr>
			<%
		}
	}
	%>
	</table>
	<form action="/reply/write_logic.jsp" method="post">
		<input type="hidden" value=<%=boardId %> name="boardId">
		<input type="text" name="content">
		<input type="submit" value="댓글달기">
	</form>
</body>
</html>