<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML>
<html>
<head>
    <sec:csrfMetaTags/>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>
<body>
    <form id="frm">
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

<%@ include file="/WEB-INF/include/include-body.jsp"%>
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
