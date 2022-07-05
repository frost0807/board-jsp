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
<body>
<%
	int boardId=(int)request.getParameter("boardId");
%>
<p>정말로 삭제하시겠습니까?</p>
<div class="btn btn-primary" onclick="/reply/delete_logic">삭제하기</div>
<div class="btn btn-primary" onclick="">뒤로</div>
</body>
</html>