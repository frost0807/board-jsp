<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<%
	String errorMessage=(String)session.getAttribute("errorMessage");

	if(errorMessage!=null){
%>
<%=errorMessage %><br/>
<%
	}
%>
<div class="container-fluid form-signin w-100 m-auto">
	<form id="form1" action="/member/register_logic.jsp" method="post">
	<div class="col-6">
		<h2>회원가입 페이지</h2>
	</div>
	<div class="col-6">
		<input type="text" name="signup_username" placeholder="아이디">
	</div>
	<div class="col-6">
		<input type="password" name="signup_password" placeholder="비밀번호">
	</div>
	<div class="col-6">
		<input type="text" name="signup_nickname" placeholder="닉네임">
	</div>
	<div class="col-3 row justify-content-center">
		<div class="col-6">
			<input type="submit" class="btn btn-primary" value="회원가입!">
		</div>
	</div>
	</form>
</div>
</body>
</html>