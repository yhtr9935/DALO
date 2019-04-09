<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<style>
	#interval{
		width:50px;
	}
	#pdtimg{
		wdith:500px;
		height:520px;
		border:solid 1px;
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
		border-top:solid 1px #ccc;
		vertical-align:middle;
		width:150px;
		height:50px;
	}
	td{
		border:solid 1px;
	}
	.product{
		font-size:18;
		vertical-align:middle;
		border-top:solid 1px #ccc;
	}
	#tadd{
		width:350px;
		border:solid 5px #FF7928;
		margin:0 auto;
		text-align:left;
	}
	#adds{
		
	}
	#add{
		font-size:16;
		
	}
	.lefts{
		text-align:left;
		vertical-align:middle;
	}
	#productNum{
		width:50px;
	}
	</style>
<%@ include file="../include/header.jsp" %>
<table>
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
				<select onchange="chageLangSelect(this)" id="choice">
					<option>상품을 선택 해 주세요</option>
					<script>
						var jbString = '${productVO.size}';
						var jbSplit = jbString.split( ',', 5 );
						for ( var i in jbSplit ) {
							document.write( "<option value='" + jbSplit[i] + "'>" + jbSplit[i] + "</option>" );
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
							"<div id='tadd'><table id='tbls'><tr><td class='lefts'><span id='add'>${productVO.title}</span><br>사이즈 "+ x + "</td><td class='lefts'><input type='number' min='1' step='1' value='1' id='productNum' onkeypress='priceNum(this)' onclick='priceNum(this)'><span id='allprice'>${productVO.price}원</span></td></tr></table></div>";
					}
					function priceNum(e){
						var y = document.getElementById("productNum").value;
						if (y <= 0){
							alert("최소 주문수량은 1개 입니다.")
							document.getElementById("productNum").value = 1;
							return false;
						}
						document.getElementById("allprice").innerHTML = "${productVO.price}"*y+"원";
					}
					</script>
					
				</td>
			</tr>
			<tr>
				<td class="bold">
				<button type="submit" value="주문하기">주문하기</button>
				</td>
				<td class="product">
				<button type="submit" value="주문하기">장바구니</button>
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