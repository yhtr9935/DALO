<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
	function checkForm() {
		if (document.register.id.value == "") {
			alert("아이디를 입력 해 주세요.");
			return false;
		}
		if (document.register.pw.value == "") {
			alert("비밀번호를 입력 해 주세요.");
			return false;
		} else if (document.register.pw.value != document.register.pw_confirm.value) {
			alert("비밀번호를 동일하게 입력 해 주세요.");
			return false;
		}
		if (document.register.name.value == "") {
			alert("이름을 입력 해 주세요.");
			return false;
		}
		if (document.register.nickname.value == "") {
			alert("닉네임을 입력 해 주세요.");
			return false;
		}
		if (document.register.email.value == "") {
			alert("이메일을 입력 해 주세요.");
			return false;
		}
		if (document.register.address.value == "") {
			alert("주소를 입력 해 주세요.");
			return false;
		}
		if (document.register.hp1.value == "") {
			alert("휴대폰 번호를 입력 해 주세요.");
			return false;
		}
		if (document.register.hp2.value == "") {
			alert("휴대폰 번호를 입력 해 주세요.");
			return false;
		}
		if (document.register.hp3.value == "") {
			alert("휴대폰 번호를 입력 해 주세요.");
			return false;
		}
	}
</script>
<style>
	#conta{
		margin:10px auto 10px;
		width:1000px;
		height:700px;
	}
	.container{
		width:520px;
	}
	#hp1{
		width:73px;
		display:inline;
		maxlength:4;
	}
	#hp2{
		width:73px;
		display:inline;
		maxlength:4;
	}
	#hp3{
		width:73px;
		display:inline;
		maxlength:4;
	}
	#email{
		width:150px;
		display:inline;
	}
	#email2{
		width:150px;
		display:inline;
	}
	#inp{
		width:323px;
	}
</style>
<div id="conta">
<div class="container">
	<div class="row">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">회원가입</h3>
			</div>
			<div class="panel-body">
				<form name="register" action="register" onsubmit="return checkForm()" class="form-horizontal" method="post">
					<div class="form-group">
						<label for="uid" class="col-sm-2 control-label">아이디</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inp" name="id">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">비밀번호</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inp" name="pw">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">재확인</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="inp" name="pw_confirm">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">이름</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inp" name="name">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">닉네임</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inp" name="nickname">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">이메일</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="email" name="email"> @ 
							<select class="form-control" id="email2" name="email2">
								<option value="naver.com">naver.com</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">주소</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inp" name="address">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">휴대폰</label>
						<div class="col-sm-10">
						<c:set var="a" value="010"/>
							<select class="form-control" id="hp1" name="hp1" onchange="aa(this)">
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="012">012</option>
								<option value="013">013</option>
								<option value="014">014</option>
								<option value="015">015</option>
							</select> - 
							<input type="tel" class="form-control" id="hp2" name="hp2" onchange="aa(this)"> - 
							<input type="tel" class="form-control" id="hp3" name="hp3" onchange="aa(this)">
							<span id="addss1"></span>
							<input type="hidden" id="test" value="010" name="hp">
							<script>
								function aa(e){
									var a = document.getElementById("hp1").value;
									var s = document.getElementById("hp2").value;
									var d = document.getElementById("hp3").value;
									$(document).ready(function() {
								        $('#test').val(a+"-"+s+"-"+d);
								    });
								}
							</script>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success">회원가입</button>
							<button type="reset" class="btn btn-success">다시쓰기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
<%@ include file="../include/footer.jsp" %>