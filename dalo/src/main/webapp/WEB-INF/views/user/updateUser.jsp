<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% request.setCharacterEncoding("UTF-8"); %>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<style>
	#conta{
		border:1px solid;
		margin:10px auto 10px;
		width:1000px;
		height:700px;
	}
</style>
<script type="text/javascript">
	function checkForm() {
		if (document.updateUser.pw.value != document.updateUser.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
<%@ include file="../include/header.jsp" %>
<c:if test="${empty login}">
	<li><a href="/user/login">로그인</a></li>
	<li><a href="/user/register">회원가입</a></li>
</c:if>
<c:if test="${not empty login}">
<div id="conta">
<form name="updateUser" action="updateUser" class="form-horizontal" method="post" onsubmit="return checkForm()">
	아이디 : <input type="text" id="id" name="id" value="${login.id}" readonly><br>
	비밀번호 : <input type="password" id="pw" name="pw"><br>
	비밀번호 확인 : <input type="password" name="password_confirm"><br>
	이름 : <input type="text" value="${login.name}" id="name" name="name"><br>
	닉네임 : <input type="text" value="${login.nickname}" id="nickname" name="nickname"><br>
	이메일 : <input type="text" value="${login.email}" id="email" name="email"><br>
	주소 : <input type="text" value="${login.address}" id="address" name="address"><br>
	휴대폰 : <input type="text" value="${login.hp}" id="hp" name="hp"><br>
	가입날짜 : ${login.regdate}<br>
	<button type="submit" class="btn btn-success">수정하기</button>
</form>
</div>
</c:if>
<%@ include file="../include/footer.jsp" %>