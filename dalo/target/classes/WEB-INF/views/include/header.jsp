<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#heade{
			margin-top:10px;
			height:150px;
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
		width:200px;
	}
	.submenus{
		text-decoration:none;
		color:black;
	}
	.submenus:hover{
		text-decoration:none;
		color:black;
	}
	#to{
		margin-top:10px;
		margin-bottom:-5px;
	}
	#bo{
		margin-top:3px;
		margin-bottom:10px;
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
<table style="margin-left:15%;">
<tr>
<td class="subm"><a class="submenus" href="/product/listPage">Store</a></td>
<td class="subm"><a class="submenus" href="#">DailyLook</a></td>
<td class="subm"><a class="submenus" href="#">Review</a></td>
</tr>
</p>
</table>
<hr id="bo">
</div>
</body>
</html>