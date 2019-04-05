<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty login}">
	<c:forEach items="${list}" var="userVO">
	<tr>
		<td>아이디 : ${userVO.id}</td><br>
		<td>패스워드 : ${userVO.pw}</td><br>
		<td>이름 : ${userVO.name}</td><br>
		<td>닉네임 : ${userVO.nickname}</td><br>
		<td>이메일 : ${userVO.email}</td><br>
		<td>주소 : ${userVO.address}</td><br>
		<td>휴대폰 : ${userVO.hp}</td><br>
		<td>생성일 : <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${userVO.regdate}" /></td>
	</tr>
</c:forEach>
</c:if>
<c:if test="${not empty login}">
	로그인
</c:if>
</body>
</html>