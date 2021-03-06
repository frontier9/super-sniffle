<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<sec:authorize access="! isAuthenticated()">
 <script>
 	alert("로그인을 해주세요");
 	location.href="/";
 </script>	
</sec:authorize>
<html lang="kr">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>여행의 시작 Travelia</title>
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-3.3.7.min.css'/>">
<link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>" >
<script type="text/javascript" src="<c:url value='/resources/js/jquery-2.2.4.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/bootstrap-3.3.7.min.js'/>"></script>
</head>
<body style="background-color:#1D2232;">

<div class="container-fluid">
  <div class="grid">
  	<div class="grid-sizer"></div>
  	<c:forEach items="${list}" var="note">
	  	<div class="grid-item img-responsive">          
			<img class="img-res" alt ="${note.note_no}"src="<c:url value="/resources/images/noteImg/${note.note_img1} "/>" />
			<div class="cornerlink">
				<div style="position: absolute; top:0px; width:300px; padding-top:100px; text-align:center; color:white;opacity: 1 ">
			  		<h3 class="text-center">${note.note_title}</h3>
			 	</div>
			</div>
	    </div>
  	</c:forEach>
  </div>
<div class="wt_icon">
  
     <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
</div>

</div>

<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
 
<script src="https://unpkg.com/masonry-layout@4.1/dist/masonry.pkgd.min.js"></script>
<script src="<c:url value="/resources/js/main.js"/>" type="text/javascript"></script>
</body>
</html>