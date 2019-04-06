<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#heade{
			margin-top:10px;
			height:200px;
			text-align:center;
		}
	#dalo{
		font-size:40;
		font-weight:bold;
		font-family:HY센스L;
		color:black;
		text-decoration:none;
	}
	.subm{
		font-size:20;
	}
	#to{
		margin-top:30px;
		margin-bottom:-20px;
	}
	#bo{
		margin-top:-20px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<div id="heade">
<a href="/.." id="dalo">DALO</a>
<hr id="to">
<table>
<tr>
<td class="subm"><a href="/product/listPage">Store</a></td>
<td class="subm"><span id="dailylook">DailyLook</span></td>
<td class="subm"><span id="review">Review</span></td>
</tr>
</p>
</table>
<hr id="bo">
</div>
</body>
</html>