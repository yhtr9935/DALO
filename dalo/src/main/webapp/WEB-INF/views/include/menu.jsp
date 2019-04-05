<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#menu{
		color:#ccc;
		text-style:bold;
		text-align:right;
		margin-right:20px;
	}
	a{
		text-decoration:none;
		color:#ccc;
	}
</style>
<script type="text/javascript">
	function notlogin() {
		alert("먼저 로그인 해 주세요.");
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p id="menu">
<c:if test="${empty login}">
<a href="/user/login">로그인</a>&nbsp;&nbsp;
<a href="/user/register">회원가입</a>&nbsp;&nbsp;
<a href="/user/login" onclick="notlogin()">장바구니</a>&nbsp;&nbsp;
<a href="/user/login" onclick="notlogin()">주문조회</a>&nbsp;&nbsp;
<a href="/user/login" onclick="notlogin()">배송조회</a>&nbsp;&nbsp;
<a href="/user/login" onclick="notlogin()">마이페이지</a>&nbsp;&nbsp;
<a href="/user/login" onclick="notlogin()">고객센터</a>&nbsp;&nbsp;
</c:if>
<c:if test="${not empty login}">
${login.name}님&nbsp;&nbsp;
<a href="/user/logout">로그아웃</a>&nbsp;&nbsp;
<a href="#">장바구니</a>&nbsp;&nbsp;
<a href="#">주문조회</a>&nbsp;&nbsp;
<a href="#">배송조회</a>&nbsp;&nbsp;
<a href="/user/mypage">마이페이지</a>&nbsp;&nbsp;
<a href="/board/listPage">고객센터</a>&nbsp;&nbsp;
</c:if>
<c:if test="${login.type == 1}">
<a href="/board/addProduct">물품등록</a>&nbsp;&nbsp;
</c:if>
</p>
</body>
</html>