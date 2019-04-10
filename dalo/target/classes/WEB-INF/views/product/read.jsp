<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<style>
	#tableread{
		margin:0 auto 50px;
		height:600px;
	}
	#interval{
		width:50px;
	}
	#pdtimg{
		wdith:500px;
		height:520px;
	}
	#img{
		display:block;
		margin:0 auto;
		width:auto;
		max-width:500px;
		height:520px;
		background-size: contain;
	}
	.bold{
		font-size:20;
		font-weight:bold;
		text-align:left;
		vertical-align:middle;
		width:630px;
		height:50px;
		border-top:solid 1px #ccc;
	}
	.product{
		font-size:18;
		vertical-align:middle;
		border-top:solid 1px #ccc;
	}
	#tadd{
		border:solid 5px #FF7928;
		text-align:left;
		margin-top:15px;
	}
	#adds{
	}
	#add{
		font-size:16;
	}
	.lefts{
		text-align:left;
		vertical-align:middle;
		padding:5px 0 5px 20px;
	}
	.rights{
		text-align:left;
		vertical-align:middle;
		width:200px;
		padding:5px;
	}
	#productNum{
		width:60px;
		float:left;
	}
	#rtrt{
		text-align:right;
		padding:5px 30px 5px 0;
	}
	.prce{
		font-size:20;
		text-align:right;
	}
	#won{
		font-size:15;
	}
	.butn{
		margin-top:500px;
	}
	#interval2{
		height:15px;
	}
	</style>
<%@ include file="../include/header.jsp" %>
<table id="tableread">
	<tr>
		<td>
			<div id="pdtimg">
			<img src="${productVO.photo}" class="rounded-0" id="img"/>
			</div>
		</td>
		<td id="interval"></td>
		<td>
		<table style="text-align:left;">
			<tr>
				<td class="bold">
				상품명
				</td>
				<td class="product">
				${productVO.title}
				</td>
			</tr>
			<tr>
				<td class="bold">
				소비자가격
				</td>
				<td class="product">
				${productVO.oldprice}
				</td>
			</tr>
			<tr>
				<td class="bold">
				판매가격
				</td>
				<td class="product">
				${productVO.price}
				</td>
			</tr>
			<tr>
				<td class="bold">
				사이즈
				</td>
				<td class="product">
				${productVO.size}
				</td>
			</tr>
			<tr>
			<td colspan="2">
			<hr style="border:solid 1px black;">
				<select onchange="chageLangSelect(this)" id="choice" class="form-control">
					<option value="" selected="selected" disabled="disabled">(필수)상품 사이즈 선택</option>
					<script>
						var jbString = '${productVO.size}';
						var jbSplit = jbString.split( ',', 5 );
						for ( var i in jbSplit ) {
							document.write( "<option value='" + jbSplit[i] + "'>" + jbSplit[i] + " (+${productVO.price}원)</option>" );
						}
					</script>
				</select>
			</td>
			</tr>
			<tr>
				<td colspan="2">
				<span id="addss">
				</span>
					<script>
					function chageLangSelect(e){
						var x = document.getElementById("choice").value;
						document.getElementById("addss").innerHTML = 
							"<div id='tadd'><table id='tbls'><tr><td class='lefts'><span id='add'>${productVO.title}</span><br>사이즈 "+ x + "</td><td class='rights'><input type='number' min='1' step='1' value='1' id='productNum' onkeypress='priceNum(this)' onclick='priceNum(this)' class='form-control'><button type='button' class='close' aria-label='Close' onclick='cancel(this)'><span aria-hidden='true'>&times;</span></button></td></tr><tr><td colspan='2' id='rtrt'><hr><span id='allprice' class='prce'>${productVO.price}</span><span id='won'> 원 </span></td></tr></table></div>";
					}
					function priceNum(e){
						var y = document.getElementById("productNum").value;
						if (y <= 0){
							alert("최소 주문수량은 1개 입니다.")
							document.getElementById("productNum").value = 1;
							return false;
						}
						var xx =  "${productVO.price}"*y;
						var yy = parseInt(xx*y);
						document.getElementById("allprice").innerHTML = "${productVO.price}"*y;
					}
					function cancel(e){
						document.getElementById("addss").innerHTML = "";
					}
					</script>
				</td>
			</tr>
			<tr>
				<td id="interval2">
				</td>
			</tr>
			<tr>
				<td class="butn">
				<button type="submit" class="btn btn-warning" value="주문하기">주문하기</button>
				</td>
				<td class="butn">
				<button type="submit" class="btn btn-warning" value="주문하기">장바구니</button>
				</td>
			</tr>
			<tr>
			<td id="interval2">
			</td>
			</tr>
				<tr>
				<td colspan="2">
				(최소주문수량 1개 이상)<br>
				위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.<br>
				무통장 입금시 입금자와 금액이 다를 경우<br>
				확인이 어려울 수 있습니다.
			</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<%@ include file="../include/footer.jsp" %>