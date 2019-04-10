<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<%@ include file="../include/header.jsp" %>
<style>
	#boad{
		margin:-50px auto 50px auto;
		width:1300px;
	}
	#write{
		float:right;
	}
	#pagenum{
		text-align:center;
		font-size:20;
		font-color:black;
	}
	.leftal{
		text-align:left;
	}
</style>
<table class="table table-striped table-hover" id="boad">
<caption><a href="/board/register" class="btn btn-primary" id="write">새 글쓰기</a></caption>
	<tr>
		<th width="10%">번호</th>
		<th width="60%">제목</th>
		<th>글쓴이</th>
		<th>등록일</th>
		<th>조회수</th>
	</tr>
	<c:forEach items="${list}" var="boardVO">
		<tr>
			<td class="leftal">${boardVO.bno}</td>
			<td class="leftal"><a href="/board/read/${boardVO.bno}">${boardVO.title }</a></td>
			<td class="leftal">${boardVO.writer}</td>
			<td class="leftal"><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate }" /></td>
			<td class="leftal"><span class="badge">${boardVO.viewcnt}</span></td>
		</tr>
	</c:forEach>
</table>
<div id="pagenum">
<c:forEach begin="${page.getStartPage()}" end="${page.getEndPage()}" var="idx">
	<a style="text-decoration: none;" href="javascript:page(${idx});">${idx}</a>
</c:forEach>
</div>
<%@ include file="../include/footer.jsp" %>
<script>
	var result = "${result}";
	function page(idx){
        var pagenum = idx;            
        location.href="/board/listPage?page="+pagenum;
    }
	if(result == "success"){
		alert("글이 성공적으로 등록되었습니다");
	}
</script>