<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<style>
	#interval{
		width:50px;
	}
</style>
<%@ include file="../include/header.jsp" %>
<table>
	<tr>
		<td>
			<img src="${productVO.photo}" class="rounded-0" width="500px" height="520px"/>
		</td>
		<td id="interval"></td>
		<td>
			${productVO.title}
			<hr>
			<p>${productVO.oldprice}</p>
			<hr>
			${productVO.price}
			<hr>
			색상<br>
			사이즈
			<hr>
			(최소주문수량 1개 이상)<br>
			위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.<br>
			무통장 입금시 입금자와 금액이 다를 경우<br>
			확인이 어려울 수 있습니다.
		</td>
	</tr>
</table>

<%-- <div class="container">
	<div class="row">
		<form role="form" method="post">
			<input type="hidden" name="bno" value="${productVO.bno}" />
		</form>
	</div>
	
	<div class="row">
		<div class="panel panel-success">
			<div class="panel-heading">
				<span class="label label-primary">글번호 : ${productVO.bno}</span>&nbsp;&nbsp;${productVO.title}
			</div>
			<div class="panel-body">
				${productVO.body}
			</div>
		</div>
	</div>
	<div class="inputArea">
		<label for="gdsImg">이미지</label>
		<p>원본 이미지</p>
		<img src="${productVO.photo}" class="rounded-0"/>
 
		<p>썸네일</p>
		<img src="${productVO.photo}" class="rounded-0"/>
	</div>
	<div class="row">
		<a href="/product/modify/${productVO.bno}" class="btn btn-warning">수정</a>
		<a href="/product/remove/${productVO.bno}" class="btn btn-danger" id="del">삭제</a>
		<a href="/product/list" class="btn btn-primary" id="list">글목록</a>
	</div>
</div> --%>
<%@ include file="../include/footer.jsp" %>