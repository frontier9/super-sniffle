<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/include/include-header.jsp"%>

<!DOCTYPE HTML>
<html>
<head>
	<title>여행의 시작 Travelia</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="<c:url value="/resources/css/bootstrap-3.3.7.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/Rcss.css"/>" rel="stylesheet">
    <sec:csrfMetaTags/>
<%@ include file="/WEB-INF/include/include-header.jsp"%>
</head>
<body>
		<header class="intro-header" style="background-image: url('/resources/images/제목 없음1231.png')">
        <div class="container">
            <div class="row">
                    <div class="site-heading">
                        <h1 class ="board-h1">BOARD</h1>
                 
                        <span class="subheading">자유로운 만큼 더욱 더 예절을 지켜주시기 바랍니다.</span>
                    </div>
                </div>
            </div>
    	</header>


		<div class = tableview>
	  	<div class = " tb firstline">
	    	<div class ="tb tb1">
	    		<span>No: ${map.brd_article_no}</span>
	   		</div>
	   		<div class ="tb tb2">
	   			<span>${map.brd_cat}</span>
	   		</div>
	   		<div class ="tb tb3">
	   			<span>2016.09.09</span>
	   		</div>
	   	
	   	</div>
	   	<div class = "tb secondline">
	   		<div class ="tb tb-hit">
	   			<span>Hit:${map.brd_hit}</span>
		    </div>
	   		<div class ="tb tb-nick">
	   			<span>${map.brd_writer}</span>
		    </div>
		 </div>   
	   		<div class ="tb tb-title">
	   			<span>${map.brd_article_title}</span>
	    	</div>
		    <div class ="tb tb-contents">
		    	<span>${map.brd_article}</span>
		    </div>
	 </div>   
	 <div class=col-md-3></div>
   	<div class=col-md-5>
   			
   	</div>
   	
   	<div class=col-md-1>
	   		<a href="#this" class="btn btn-default" id ="update">수정</a>
	   		<a href="#this" class="btn btn-default" id ="list">목록</a>
   	 </div>
    <div class="bottom-empty">
	</div> 

<%@ include file="/WEB-INF/include/include-body.jsp"%>
<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function() {
    $('#list').on('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
        fn_openBoardList();
    });

    $('#update').on('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        fn_openArticleUpdate();
    });
    

});

function fn_openBoardList() {
    console.log("in position");
    //var submit = new ComSubmit();

    //submit.setUrl("<c:url value='/board/board' />");
    location.href="/board/board";
    //submit.submit();
}

function fn_openArticleUpdate() {
    var idx = "${map.brd_article_no}";
    var csrf_param = $("meta[name='_csrf_parameter']").attr('content');
    var csrf_token = $("meta[name='_csrf']").attr('content');
    var submit = new ComSubmit();
    submit.setUrl("<c:url value='/board/openUpdateForm.do' />");
    submit.addParam("idx", idx);
    submit.submit(csrf_param, csrf_token);
}
//]]>

</script>

</body>
</html>
