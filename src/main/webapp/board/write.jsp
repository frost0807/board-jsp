<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>Insert title here</title>
<style>
section{margin:0 500px 0 500px;}
form{display:flex;flex-direction: column;}
#write_title{margin:100px 5px 5px 5px;height:30px;}
#write_content{margin:5px;}
#write_submit{margin:5px;height:30px;}
</style>
</head>
<body>
<section>
	<form action="/board/write_logic.jsp" method="post">
		<input id=write_title type="text" name=write_title placeholder="글 제목">
		글 내용:
		<textarea id=write_content rows="10" cols="10" name=write_content></textarea>
		<input id=write_submit type="submit" value="등록하기">
	</form>
</section>
</body>
</html>