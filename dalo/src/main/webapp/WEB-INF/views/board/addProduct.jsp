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
		<form class="form-horizontal" method="post">
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
						<div>
							<input type="file" id="input_img" />
						</div>
						<div>
							<div class="img_wrap">
								<img id="img" style="width:280px; height:280px;" />
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
	var sel_file;
	
	$(document).ready(function(){
		$("#input_img").on("change", handleImgFileSelect);	
	});
	
	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
</script>
