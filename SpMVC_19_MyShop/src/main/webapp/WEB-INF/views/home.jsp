<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="rootPath" value="${pageContext.request.contextPath }"/>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/include-head.jspf" %>




<script>

$(function(){
	
	
	$('a.logout').click(function(){
		
		$("#logout").submit()
		
	})
	
	
})


</script>





</head>
<body>


<header class="jumbotron">
	<h3>MY SHOP</h3>
</header>
<nav class="navbar navbar-expand-sm bg-light">
	<ul class="navbar-nav">
		<li class="nav-item"><a href="${rootPath}/" class="nav-link">HOME</a></li>
		
		
		
		<sec:authorize access="isAnonymous()">
		<li class="nav-item"><a href="${rootPath}/auth/login" class="nav-link">로그인</a></li>
		</sec:authorize>
		
		<sec:authorize access="isAuthenticated()">
			<form id="logout" action="${rootPath}/logout" method="post">
			
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					<li class="nav-item"><a class="nav-link logout" href="#">로그아웃</a></li>
			
			</form>
		</sec:authorize>
		
		
		
		<sec:authorize access="hasRole('ADMIN')">
			<li class="nav-item"><a href="${rootPath}/admin/" class="nav-link">관리자</a></li>
		</sec:authorize>
	</ul>
</nav>

2020. 2. 10.
</body>
</html>