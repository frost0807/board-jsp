<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="connector.DBConnector"%>
<%@page import="connector.MySqlConnector"%>
<%@page import="controller.BoardController"%>
<%@page import="model.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<style>
.logout{text-align:right;}
</style>
</head>
<body>
<%
	UserDTO u=(UserDTO)session.getAttribute("logIn");
	if(u==null){
		response.sendRedirect("/index.jsp");
	}
	DBConnector connector=new MySqlConnector();
	BoardController boardController=new BoardController(connector);
	ArrayList<BoardDTO> list=boardController.selectAll();
	SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd HH:mm:ss");
%>
<div class="container">
<a class=logout href="/member/logout_logic.jsp">로그아웃</a>
<table class="table">
	<thead>
		<tr>
			<th>글 번호</th>
			<th>글 제목</th>
			<th>글 내용</th>
			<th>작성일</th>
			<th>수정일</th>
		</tr>
	</thead>
	<%
	for(BoardDTO b:list){
	%>
	<tr>
		<td><%=b.getId() %></td>
		<td><a href="/board/selectOne.jsp?id=<%= b.getId()%>"><%=b.getTitle() %></a></td>
		<td><%=b.getContent() %></td>
		<td><%=sdf.format(b.getWrittenDate().getTime())%></td>
		<td><%=sdf.format(b.getUpdatedDate().getTime())%></td>
	</tr>
	<%
	}
	%>
</table>
<div class="btn btn-primary" onclick="location.href='/board/write.jsp'">글쓰기</div>
<a id="write" href="/board/write.jsp">글쓰기 </a>
</div>
</body>
</html>