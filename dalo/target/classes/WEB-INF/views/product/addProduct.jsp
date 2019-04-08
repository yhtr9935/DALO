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
				<label class="col-md-2 control-label" for="title">상품명</label>
				<div class="col-md-3">
					<input type="text" name="title" id="title" class="form-control"
					placeholder="상품명 입력" required />
				</div>
				<label class="col-md-2 control-label" for="title">부가설명</label>
				<div class="col-md-3">
					<input type="text" name="titlesub" id="titlesub" class="form-control"
					placeholder="서브타이틀 입력" required />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label" for="title">종류</label>
				<div class="col-md-3">
					<select name="type" class="form-control form-control-lg">
						<option value="1">맨투맨/후드</option>
						<option value="2">니트/가디건</option>
						<option value="3">아우터</option>
						<option value="4">티셔츠</option>
						<option value="5">셔츠</option>
						<option value="6">바지</option>
						<option value="7">트레이닝</option>
						<option value="8">신발</option>
						<option value="9">악세사리</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label" for="title">이미지</label>
				<div class="col-md-10">
					<div class="inputArea">
 						<label for="photo">이미지</label>
 						<input type="file" id="photo" name="file" />
 						<div class="select_img"><img src="" />
 						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label" for="title">소비자가격</label>
				<div class="col-md-3">
					<input type="text" name="oldprice" id="oldprice" class="form-control"
					placeholder="소비자 판매 가격" required />
				</div>
				<label class="col-md-2 control-label" for="title">판매가격</label>
				<div class="col-md-3">
					<input type="text" name="price" id="price" class="form-control"
					placeholder="현 매장 판매 가격" required />
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-2 control-label" for="title">사이즈</label>
				<div class="col-md-3">
					<input type="checkbox" name="size" id="size" value="S" />S
					<input type="checkbox" name="size" id="size" value="M" />M
					<input type="checkbox" name="size" id="size" value="L" />L
					<input type="checkbox" name="size" id="size" value="XL" />XL
					<input type="checkbox" name="size" id="size" value="XXL" />XXL
				</div>
			</div>
			<div class="form-group">
				<label for="info" class="control-label col-md-2">글내용</label>
				<div class="col-md-10 col-md-offset-2">
					<textarea class="form-control" id="body" name="body" rows="5"></textarea>
				</div>
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
	$("#photo").change(function(){
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
