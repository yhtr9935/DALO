<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
	#conta{
		margin:10px auto 10px;
		width:350px;
		height:500px;
	}
	#log{
		width:200px;
		height:200px;
		margin:45px auto;
	}
	#loo{
		width:350px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<div id="conta">
<div class="container" id="loo">
	<div class="row" id="loo">
		<div class="panel panel-success" id="loo">
			<div class="panel-heading" id="loo">
				<h3 class="panel-title">로그인</h3>
			</div>
			<div id="log">
<form method="post" action="/user/loginPost">
	<label for="uid">아이디</label>
	<input type="text" class="form-control" id="id" name="id" placeholder="ID를 입력하세요"><br>
	<label for="upw">비밀번호</label>
	<input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호를 입력하세요"><br>
	<button type="submit" class="btn btn-success">로그인</button>
	<a href="/user/register" class="btn btn-success">회원가입</a>
</form>
</div>
</div>
			<div class="panel-body">
				
			</div>
		</div>
	</div>
</div>



<%@ include file="../include/footer.jsp" %>
</body>
</html>