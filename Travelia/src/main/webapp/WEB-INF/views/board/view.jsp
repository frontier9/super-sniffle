<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/Rcss.css"/>" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class = "container-fluid fluid-user">
	<header>
		<div class = "container">
				<div id = "logo">
				<img src="http://ko.learnlayout.com/images/logo.png">
				<span>BOARD</span>
				<!-- <h4>자유롭게 글을 올리실 수 있습니다. 자유로운 만큼 더욱 더 예절을 지켜주시기 바랍니다.</h4> -->
				</div>
			</div>
	</header>
	
 <div id = "table">
	<div class=tableview>
	<span class="cell col1">글번호</span>
	<span class="cell col2">123</span>
	</div>
	<div class=tableview>
	<span class="cell col1">글종류</span>
	<span class="cell col2">123</span>
	</div>
	<div class=tableview>
	<span class="cell col1">닉네임</span>
	<span class="cell col2">123</span>
	</div>
	<div class=tableview>
	<span class="cell col1">작성일</span>
	<span class="cell col2">123</span>
	</div>
	<div class=tableview>
	<span class="cell col1">글제목    </span>
	<span class="cell col2">123</span>
	</div>
	<div class=tableview>
	<span class="cell col1">글내용   </span>
	<span class="cell col3">ㅁㄴㅇㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㅂㅈㄷㄴㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</span>
	</div>
</div>

   	<div class=col-md-6></div>
   		<div class=col-md-6>
   		<button type="button" class="btn btn-default">수정</button> <!-- 작성자만 보이기 -->
   		<button type="button" class="btn btn-default">삭제</button> <!-- 작성자만 보이기 -->
   		<button type="button" class="btn btn-default">목록</button>
   	 	<button type="button" class="btn btn-default">글쓰기</button>
   	 	</div>
    </div>
</body>
</html>