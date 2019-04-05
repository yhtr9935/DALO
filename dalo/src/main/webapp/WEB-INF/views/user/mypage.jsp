<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<%@ include file="../include/header.jsp" %>
<% request.setCharacterEncoding("UTF-8"); %>
<style>
	#conta{
		border:1px solid;
		margin:10px auto 10px;
		width:1000px;
		height:700px;
	}
#info{
	margin:50px auto 50px;
	text-align:left;
	width:300px;
}
</style>
<script language = "javascript">
function del(){
    var pw = prompt("패스워드를 입력 해 주세요."+"");
    if (pw != document.deleteUser.pw.value){
    	alert("비밀번호가 일치하지 않습니다.")
    	return false;
    } else {
    	var result = confirm("정말로 탈퇴하시겠습니까?");
        if(result){
    	alert("회원정보가 삭제되었습니다.");
        }else{
    	alert("회원 탈퇴가 취소되었습니다.");
    	return false;
        }
    }
}
</script>
<c:if test="${empty login}">
	<li><a href="/user/login">로그인</a></li>
	<li><a href="/user/register">회원가입</a></li>
</c:if>
<c:if test="${not empty login}">
<div id="info">
<form class="form-horizontal"  name="deleteUser" action="deleteUser" method="post" onsubmit="return del()">
<h4>
	아이디 : ${login.id}<br><br>
	이름 : ${login.name}<br><br>
	닉네임 : ${login.nickname}<br><br>
	이메일 : ${login.email}<br><br>
	주소 : ${login.address}<br><br>
	휴대폰 : ${login.hp}<br><br>
	가입날짜 : ${login.regdate}<br><br>
</h4>
	<a href="updateUser" class="btn btn-success">수정하기</a>
	<input type="hidden" value="${login.id}" id="id" name="id">
	<input type="hidden" value="${login.pw}" id="pw" name="pw">
	<button type="submit" class="btn btn-success">삭제하기</button>
</form>
</div>
</c:if>
<%@ include file="../include/footer.jsp" %>