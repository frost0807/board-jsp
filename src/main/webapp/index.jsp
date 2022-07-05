<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<style>
html,
body {
  height: 100%;
}

body {
  display: flex;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
}
</style>
</head>
<body>
<header>
</header>
<%
	String errorMessage=(String)session.getAttribute("errorMessage");

	if(errorMessage!=null) {
%>
<%=errorMessage %>
<%
}
	%>
<div class="container-fluid form-signin w-100 m-auto">
	<form id="form1" action="/member/auth.jsp" method="post">
	<div class="mb-8">
		<h2>로그인 페이지</h2>
	</div>
	<div class="mb-8">
		<input type="text" name="username" placeholder="아이디" class="form-control">
	</div>
	<div class="mb-8">
		<input type="password" name="password" placeholder="비밀번호" class="form-control">
	</div>
	<div class="mb-8 row justify-content-around">
			<button type="submit" class="btn btn-secondary col-4" class="form-control">로그인</button>
		<div class="mb-1 btn btn-warning col-4" onclick="location.href='/member/register.jsp'">
			회원가입
		</div>
	</div>
	</form>
</div>
</body>
</html>