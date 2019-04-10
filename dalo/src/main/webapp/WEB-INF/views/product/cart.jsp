<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../include/header.jsp" %>

<div class="container">
	<div class="row">
		<div class="page-header">
			<h1>자유게시판<small>아무글이나 적어도 됩니다</small></h1>
		</div>
	</div>
	<div class="row">
		<table class="table table-striped table-hover">
			<tr>
				<th width="10%">번호</th>
				<th width="60%">제목</th>
				<th>글쓴이</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${list}" var="boardVO">
				<tr>
					<td>${boardVO.bno}</td>
					<td><a href="/board/read/${boardVO.bno}">${boardVO.title }</a></td>
					<td>${boardVO.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate }" /></td>
					<td><span class="badge">${boardVO.viewcnt}</span></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="row">
		<div class="col-md-2 col-md-offset-10 text-right">
			<a href="/board/register" class="btn btn-primary">새 글쓰기</a>
		</div>
	</div>
</div>


<%@ include file="../include/footer.jsp" %>
<script>
	var result = "${result}";
	
	if(result == "success"){
		alert("글이 성공적으로 등록되었습니다");
	}
</script>