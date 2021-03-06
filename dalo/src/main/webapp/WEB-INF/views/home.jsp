<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%-- <%@ page session="false" %> --%>
<html>
<head>
<title>Home</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

	<style type="text/css">
	#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
		#conta{
			border:1px solid;
			margin:10px auto 10px;
			width:1000px;
			height:700px;
		}
	</style>
</head>
<body>
<%@ include file="include/header.jsp" %>
<div id="conta">

</div>
<%@ include file="include/footer.jsp"%>
</body>
</html>
<c:if test="${!empty result}">
<div class="alert alert-${result eq 'success' ? 'success' : 'danger' } alert-dismissible" role="alert">
	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	<strong>${result eq 'success' ? '성공' : '실패' }</strong>${msg }
</div>
</c:if>