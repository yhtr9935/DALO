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
<style>
	#conta{
		border:1px solid;
		margin:10px auto 10px;
		width:1000px;
		height:700px;
	}
</style>
<div id="conta">
<div class="container">
	<div class="row">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">로그인 입력</h3>
			</div>
			<div class="panel-body">
				<p>${msg}</p>
				<a href="/user/login" class="btn btn-warning">다시 시도</a>
			</div>
		</div>
	</div>
</div>
</div>
<%@ include file="../include/footer.jsp" %>