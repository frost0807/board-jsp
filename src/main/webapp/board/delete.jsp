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
	int boardId=Integer.parseInt(request.getParameter("boardId"));
%>
<p>정말로 삭제하시겠습니까?</p>
<div class="btn btn-primary" onclick="location.href='/board/delete_logic.jsp?boardId=<%=boardId%>'">
삭제하기
</div>
<div class="btn btn-primary" onclick="location.href='/board/selectOne.jsp?id=<%=boardId%>'">
뒤로가기
</div>
</body>
</html>