<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 로그인이 됬다면 -->
<c:if test="${not empty pageContext.request.userPrincipal }">
<p> is Log-In</p>
</c:if>
<!-- 로그인이 안 됬다면 -->
<c:if test="${empty pageContext.request.userPrincipal }">
<p> is Log-Out</p>
</c:if>

USER ID : ${pageContext.request.userPrincipal.name}<br/> 
<form id ="logoutForm" action="${pageContext.request.contextPath}/logout" method="post">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<button type="submit" >로그아웃</button>
</form>
${usernick}
${useremail}
</body>
</html>