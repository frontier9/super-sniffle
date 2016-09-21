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
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
 <body>
		<header class="intro-header" style="background-image: url('/resources/images/제목 없음1231.png')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1 class ="board-h1">BOARD</h1>
                 
                        <span class="subheading">자유로운 만큼 더욱 더 예절을 지켜주시기 바랍니다.</span>
                    </div>
                </div>
            </div>
        </div>
    	</header>
    	
    <form id="frm">	
    	<div class = tableview>
	  	<div class = " tb firstline">
	    	<div class ="tb tb1">
	    		<span>
	    		No: ${map.brd_article_no}
	    		<input type="hidden" id="idx" name="idx" value="${map.brd_article_no}">
	    		</span>
	   		</div>
	   		<div class ="tb tb2">
	   			<span>${map.brd_cat}</span>
	   		</div>
	   		<div class ="tb tb3">
	   			<span>${map.brd_article_write_date}</span>
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
	   			<span><textarea rows="1" cols="70" id="title" name="title" class="wdp_90" >${map.brd_article_title}</textarea></span>
	    	</div>
		    <div class ="tb tb-contents">
		    	<span><textarea rows="10" cols="155" title="내용" id="contents" name="contents">${map.brd_article}</textarea></span>
		    </div>
		 </div>
	 </form>
	<div class=col-md-3></div>
   	<div class=col-md-5>
   			<a href="#this" class="btn btn-default" id ="list">목록</a>
   	</div>
	 <div class=col-md-1>
	   		<a href="#this" class="btn btn-default" id ="update">저장</a>
	   		<a href="#this" class="btn btn-default" id ="delete">삭제</a>
	   		<!--  <button type="button" class="btn btn-default">삭제</button>--> <!-- 작성자만 보이기 -->
   	 </div>
	<div class="bottom-empty">
	</div> 
<!--      <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
            <caption>상세 페이지</caption>
            <tbody>
                <tr>
                    <th scope="row">번호</th>
                    <td>
                        ${map.brd_article_no}
                        <input type="hidden" id="idx" name="idx" value="${map.brd_article_no}">
                    </td>
                    <th scope="row">조회수</th>
                    <td>${map.brd_hit}</td>
                </tr>
                <tr>
                    <th scope="row">작성자</th>
                    <td>${map.brd_writer}</td>
                    <th scope="row">작성시간</th>
                    <td>${map.brd_article_write_date}</td>
                </tr>
                <tr>
                    <th scope="row">제목</th>
                    <td colspan="3">
                        <input type="text" id="title" name="title" class="wdp_90" value="${map.brd_article_title}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
                        <textarea rows="20" cols="80" title="내용" id="contents" name="contents">${map.brd_article}</textarea>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>

    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">변경저장</a>
    <a href="#this" class="btn" id="delete">삭제하기</a>
-->
<%@ include file="/WEB-INF/include/include-body.jsp"%>
<%@ include file="/WEB-INF/include/navbar-md.jsp"%>

<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function() {
        $('#list').on('click', function (e) {
            e.preventDefault();
            e.stopPropagation();
            fn_openArticleList();
        });

        $('#update').on('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            fn_updateArticle();
        });

        $('#delete').on('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            fn_deleteArticle();
        });
    });

    function fn_openArticleList() {
        var submit = new ComSubmit();
        var csrf_param = $("meta[name='_csrf_parameter']").attr('content');
        var csrf_token = $("meta[name='_csrf']").attr('content');
        submit.setUrl("<c:url value='/board/board' />");
        submit.submit(csrf_param, csrf_token);
    }

    function fn_updateArticle() {
        var submit = new ComSubmit("frm");
        var csrf_param = $("meta[name='_csrf_parameter']").attr('content');
        var csrf_token = $("meta[name='_csrf']").attr('content');
        submit.setUrl("<c:url value='/board/updateArticle.do' />");
        submit.submit(csrf_param, csrf_token);
    }

    function fn_deleteArticle() {
        var submit = new ComSubmit();
        var csrf_param = $("meta[name='_csrf_parameter']").attr('content');
        var csrf_token =$("meta[name=_csrf]").attr('content');
        submit.setUrl("<c:url value='/board/deleteArticle.do' />");
        submit.addParam('idx', $('#idx').val());
        submit.submit(csrf_param, csrf_token);
    }



    //]]>

</script>
</body>
</html>
