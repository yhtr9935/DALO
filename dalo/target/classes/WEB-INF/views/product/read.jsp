<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<%@ include file="../include/header.jsp" %>
<div class="container">
	<div class="row">
		<form role="form" method="post">
			<input type="hidden" name="bno" value="${productVO.bno}" />
		</form>
	</div>
	
	<div class="row">
		<div class="panel panel-success">
			<div class="panel-heading">
				<span class="label label-primary">글번호 : ${productVO.bno}</span>&nbsp;&nbsp;${productVO.title}
				<span class="label label-success pull-right" id="writer">${boardVO.writer}</span>
			</div>
			<div class="panel-body">
				${productVO.content}
			</div>
		</div>
	</div>
	<div class="row">
		<a href="/product/modify/${productVO.bno}" class="btn btn-warning">수정</a>
		<a href="/product/remove/${productVO.bno}" class="btn btn-danger" id="del">삭제</a>
		<a href="/product/list" class="btn btn-primary" id="list">글목록</a>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>