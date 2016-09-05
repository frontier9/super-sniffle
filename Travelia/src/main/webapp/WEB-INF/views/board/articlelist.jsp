<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/include/include-header.jsp"%>

<!DOCTYPE html>
<html>
<head>

    <title>first</title>

    <sec:csrfMetaTags/>
</head>
<body>
<h2>게시판 목록</h2>
<table class="board_list">
    <colgroup>
        <col width="3%"/>
        <col width="15%"/>
        <col width="30%"/>
        <col width="3%"/>
        <col width="5%"/>
        <col width="8%"/>
    </colgroup>
    <thead>
    <tr>
        <th scope="col" style="text-align: center">번호</th>
        <th scope="col" style="text-align: center">카테고리</th>
        <th scope="col" style="text-align: center">제목</th>
        <th scope="col" style="text-align: center">조회수</th>
        <th scope="col" style="text-align: center">작성자</th>
        <th scope="col" style="text-align: center">작성일자</th>
    </tr>
    </thead>
    <tbody>
    <c:choose>
        <c:when test="${fn:length(list) > 0}">
            <c:forEach items="${list}" var="row">
                <tr>
                    <td>${row.brd_article_no }</td>
                    <td>${row.brd_cat }</td>
                    <td class="title">
                        <a href="<c:url value = '/board/articleDetail.do?idx=${row.brd_article_no}' />" name="title">${row.brd_article_title}</a>
                        <input type="hidden" id="idx" value="${row.brd_article_no}"/>
                    </td>
                    <td>${row.brd_hit }</td>
                    <td>${row.brd_writer }</td>
                    <td>${row.brd_article_write_date}</td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td colspan="4">조회된 결과가 없습니다.</td>
            </tr>
        </c:otherwise>
    </c:choose>
    </tbody>
</table>

<a href="#this" class="btn" id="write">글쓰기</a>

<%@ include file="/WEB-INF/include/navbar-md.jsp"%>
<%@ include file="/WEB-INF/include/include-body.jsp" %>

<script type="text/javascript">
//<[CDATA[
$(document).ready(function() {
    $('#list').on('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
        fn_openBoardList();
    });

    $("a[name='title']").on('click', function(e) {
        //e.preventDefault();
        //e.stopPropagation();
        //fn_openArticleDetail($(this));
    });

    $('#write').on('click', function(e){
        var submit = new ComSubmit();
        var csrf_param = $("meta[name='_csrf_parameter']").attr('content');
        var csrf_token = $("meta[name='_csrf']").attr('content');
        submit.setUrl("<c:url value='/board/post.do'/>");
        submit.submit(csrf_param, csrf_token);
    })
});

function fn_openBoardList() {
    console.log("in position");
    //var submit = new ComSubmit();

    //submit.setUrl("<c:url value='/board/board' />");
    location.href="/board/board";
    //submit.submit();
}

function fn_openArticleDetail(obj) {
    var submit = new ComSubmit();
    submit.setUrl("<c:url value='/board/articleDetail.do' />");
    submit.addParam("idx", obj.parent().find('#idx').val());
    submit.submit();
}
//]]>

</script>
</body>
</html>