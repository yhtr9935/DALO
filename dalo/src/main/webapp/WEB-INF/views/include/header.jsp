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
	#subm{
		margin:-15px 0 -15px 20%;
		font-size:20;
		text-align:left;
	}
	#dailylook{
		margin-left:80px;
	}
	#review{
		margin-left:80px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<div id="heade">
<a href="/.." id="dalo">DALO</a>
<hr>
<p id="subm">
<a href="#">Store</a>
<span id="dailylook">DailyLook</span>
<span id="review">Review</span>
</p>
<hr>
</div>
</body>
</html>