<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<%@ include file="../include/header.jsp" %>
<div class="container">
	<div class="row">
		<div class="page-header">
			<h1>상품 등록 페이지</h1>
		</div>
	</div>
	<div class="row">
	<div class="col-md-10 col-md-offset-1">
		<form class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label class="col-md-2 control-label" for="title">글제목</label>
				<div class="col-md-10">
					<input type="text" name="title" id="title" class="form-control"
					placeholder="글 제목을 입력하세요" required />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label" for="title">이미지</label>
				<div class="col-md-10">
					<div class="inputArea">
 						<label for="gdsImg">이미지</label>
 						<input type="file" id="gdsImg" name="file" />
 						<div class="select_img"><img src="" />
 						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="info" class="control-label col-md-2">글내용</label>
				<div class="col-md-10 col-md-offset-2">
					<textarea class="form-control" id="content" name="content" rows="5"></textarea>
				</div>
			</div>
			<div class="form-group">
				<input type="hidden" name="writer" id="writer" class="form-control" value="${login.nickname}" />
			</div>
			<div class="form-group">
				<div class="col-md-2 col-md-offset-2">
					<button type="submit" class="btn btn-primary">작성완료</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp" %>
<script type="text/javascript"> 
	$("#gdsImg").change(function(){
		if(this.files && this.files[0]) {
		var reader = new FileReader;
		reader.onload = function(data) {
		$(".select_img img").attr("src", data.target.result).width(500);        
		}
	reader.readAsDataURL(this.files[0]);
	}
});
</script>
<%=request.getRealPath("/") %>
