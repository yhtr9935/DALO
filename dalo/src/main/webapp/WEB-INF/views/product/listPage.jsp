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
	#prts{
		width:300px;
		height:400px;
		border:solid 1px;
	}
	#prdt{
		width:300px;
		height:250px;
		border:solid 1px;
	}
	.interval{
		margin:0 20px 0 20px;
	}
	.intervalh{
		margin:200px 0 200px 0;
	}
	#static{
		display:block;
		margin:0 auto;
		width:auto;
		max-width:300px;
		height:250px;
		background-size: contain;
	}
	#title{
		padding-top:10px;
		font-size:20;
		align:left;
	}
	#subex{
		padding-top:10px;
		font-size:10;
	}
	#price{
		font-size:20;
		font-weight:bold;
	}
</style>
<table class="table table-borderless" id="boad">
<caption><a href="/product/addProduct" class="btn btn-primary" id="write">새 글쓰기</a></caption>
	<tr id="prt">
		<c:forEach items="${list}" var="productVO" varStatus="status">
		<c:if test="${status.count % 4 != 0 }">
			<td class="interval"></td>
			<td id="prts">
			<div id="prdt"><a href="/product/read/${productVO.bno}"><img src="${productVO.photo}" class="rounded-0" id="static"/></a></div>
			<div id="title">
			<p align="left">타이틀</p>
			<p id="subex" align="left">서브</p>
			<p id="price" align="left">가격</p>
			</div>
			</td>
			<td class="interval"></td>
		</c:if>
		<c:if test="${status.count % 4 == 0 }">
			<td class="interval"></td>
			<td id="prts">
			<div id="prdt"><a href="/product/read/${productVO.bno}"><img src="${productVO.photo}" class="rounded-0" id="static"/></a></div>
			<div id="title">
			<p align="left">타이틀</p>
			<p id="subex" align="left">서브</p>
			<p id="price" align="left">가격</p>
			</div>
			</td>
			<td class="interval"></td>
			<tr><td class="intervalh"></td></tr>
		</c:if>
		</c:forEach>
	
	</tr>
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
        location.href="/product/listPage?page="+pagenum;
    }
	if(result == "success"){
		alert("글이 성공적으로 등록되었습니다");
	}
</script>