<%@page import="model.ReplyDTO"%>
<%@page import="controller.ReplyController"%>
<%@page import="controller.UserController"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.UserDTO"%>
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
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<style>
#reply_form {display:flex;flex-direction: column;margin-top:50px;}
</style>
<body>
<%
	DBConnector connector=new MySqlConnector();
	BoardController boardController=new BoardController(connector);
	UserController userController=new UserController(connector);
	BoardDTO b=boardController.selectOne(Integer.parseInt(request.getParameter("id")));
	UserDTO u=((UserDTO)session.getAttribute("logIn"));
	String nickname=userController.selectOne(u.getId()).getNickname();
	SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd HH:mm:ss");
%>
<div class="container">
	<table class="table">
		<tr>
			<th>글 번호:<%=b.getId() %>&emsp;&emsp;&emsp;&emsp;작성자:<%=nickname %></th>
		</tr>
		<tr>
			<th>글 제목:<%=b.getTitle() %></th>
		</tr>
		<tr>
			<th>
				작성시각:<%=sdf.format(b.getWrittenDate().getTime())%>
				&emsp;&emsp;&emsp;&emsp;
				수정시각:<%=sdf.format(b.getUpdatedDate().getTime())%>
			</th>
		</tr>
		<tr>
			<th><%=b.getContent() %></th>
		</tr>
	</table>
	<%
	if(b.getWriterId()==u.getId()){	
	%>
	<a href="/board/update.jsp?boardId=<%=b.getId()%>">
		<button type="button">수정</button>
	</a>
	<a href="/board/delete.jsp?boardId=<%=b.getId()%>">
		<button type="button">삭제</button>
	</a>
	<%
	}
	%>
	<a href="/board/list.jsp">
		<button type="button">목록보기</button>
	</a>
</div>
<div class="container">
	<jsp:include page="/reply/list.jsp">
		<jsp:param value="<%=b.getId() %>" name="id"/>
	</jsp:include>
</div>
</body>
</html>